#!/usr/bin/env python3
"""Route DRC disconnected islands against separate foreign-copper masks per net."""
import pcbnew as k,numpy as np,heapq,math,json,pathlib,sys
R=pathlib.Path(__file__).resolve().parents[1];B=k.LoadBoard(str(R/'hardware/romcart.kicad_pcb'));LAY=[k.F_Cu,k.In1_Cu,k.In2_Cu,k.B_Cu];S=.05;NX=1151;NY=1051
FOOTS=list(B.GetFootprints());PADS=[p for f in FOOTS for p in f.Pads()]
items={i.m_Uuid.AsString():i for i in B.GetTracks()}
for f in FOOTS:
 for p in f.Pads():items[p.m_Uuid.AsString()]=p
# Remove only diagnosed dangling/edge-violating copper; retain all original geometry in r0 snapshot.
d=json.loads((R/'validation/drc-final.json').read_text())
for v in d['violations']:
 if False:
  for it in v['items']:
   o=items.get(it['uuid'])
   if o and isinstance(o,k.PCB_TRACK) and not isinstance(o,k.PCB_VIA):B.Remove(o);items.pop(it['uuid'],None)
# Copper polygons will be refilled after repairs. Ignore own/other GND fill while routing.

def xy(v):return v.x/1e6,v.y/1e6
def masks(n):
 G=np.zeros((4,NY,NX),np.bool_);V=np.zeros((NY,NX),np.bool_)
 def rect(arr,x,y,w,h,extra,ls):
  x0=max(0,int(math.floor((x-w/2-extra)/S)));x1=min(NX,int(math.ceil((x+w/2+extra)/S))+1);y0=max(0,int(math.floor((y-h/2-extra)/S)));y1=min(NY,int(math.ceil((y+h/2+extra)/S))+1)
  if arr.ndim==2:arr[y0:y1,x0:x1]=True
  else:
   for l in ls:arr[l,y0:y1,x0:x1]=True
 def capsule(arr,a,c,r,ls):
  x0=max(0,int(math.floor((min(a[0],c[0])-r)/S)));x1=min(NX,int(math.ceil((max(a[0],c[0])+r)/S))+1);y0=max(0,int(math.floor((min(a[1],c[1])-r)/S)));y1=min(NY,int(math.ceil((max(a[1],c[1])+r)/S))+1)
  yy,xx=np.mgrid[y0:y1,x0:x1];xx=xx*S;yy=yy*S;dx=c[0]-a[0];dy=c[1]-a[1];den=dx*dx+dy*dy
  t=np.clip(((xx-a[0])*dx+(yy-a[1])*dy)/den,0,1) if den else 0
  hit=(xx-a[0]-t*dx)**2+(yy-a[1]-t*dy)**2 <= r*r
  if arr.ndim==2:arr[y0:y1,x0:x1]|=hit
  else:
   for l in ls:arr[l,y0:y1,x0:x1]|=hit
 for f in FOOTS:
  for p in f.Pads():
   if p.GetNetCode()==n:continue
   x,y=xy(p.GetPosition());sz=p.GetSize();w,h=sz.x/1e6,sz.y/1e6
   if round(p.GetOrientationDegrees())%180==90:w,h=h,w
   ls=[l for l,id in enumerate(LAY) if p.IsOnLayer(id)]
   rect(G,x,y,w,h,.265,ls);rect(V,x,y,w,h,.50,[])
 for t in B.GetTracks():
  if t.GetNetCode()==n:continue
  a=xy(t.GetStart());c=xy(t.GetEnd());r=(t.GetWidth(k.F_Cu) if isinstance(t,k.PCB_VIA) else t.GetWidth())/2e6
  ls=range(4) if isinstance(t,k.PCB_VIA) else [LAY.index(t.GetLayer())]
  capsule(G,a,c,r+.265,ls);capsule(V,a,c,r+.50,[])
 G[:,:7,:]=True;G[:,-7:,:]=True;G[:,:,:7]=True;G[:,:,-7:]=True;V[:13,:]=True;V[-13:,:]=True;V[:,:13]=True;V[:,-13:]=True
 return G,V
def single_candidates(o):
 if isinstance(o,k.PAD):ps=[xy(o.GetPosition())];ls=[i for i,l in enumerate(LAY) if o.IsOnLayer(l)]
 elif isinstance(o,k.PCB_VIA):ps=[xy(o.GetPosition())];ls=list(range(4))
 else:ps=[xy(o.GetStart()),xy(o.GetEnd())];ls=[LAY.index(o.GetLayer())]
 return [(x,y,l) for x,y in ps for l in ls]
def candidates(o):
 result=[];seen=set();todo=[o];B.BuildConnectivity();con=B.GetConnectivity()
 while todo:
  v=todo.pop();u=v.m_Uuid.AsString()
  if u in seen:continue
  seen.add(u);typ=v.GetClass()
  if typ=='PAD':v=k.Cast_to_PAD(v)
  elif typ=='PCB_VIA':v=k.Cast_to_PCB_VIA(v)
  elif typ=='PCB_TRACK':v=k.Cast_to_PCB_TRACK(v)
  else:continue
  result.extend(single_candidates(v));todo.extend(con.GetConnectedItems(v))
 return list(set(result))
def key(x,y,l):return (l*NY+y)*NX+x
def unpack(v):x=v%NX;v//=NX;return x,v%NY,v//NY
added=0;failed=[]
def seg(a,c,l,n):
 if math.dist(a,c)<.000001:return
 t=k.PCB_TRACK(B);t.SetStart(k.VECTOR2I(round(a[0]*1e6),round(a[1]*1e6)));t.SetEnd(k.VECTOR2I(round(c[0]*1e6),round(c[1]*1e6)));t.SetWidth(150000);t.SetLayer(LAY[l]);t.SetNetCode(n);B.Add(t)
def route(a,c,n):
 G,V=masks(n);aa=candidates(a);cc=candidates(c);starts={key(round(x/S),round(y/S),l):(x,y) for x,y,l in aa};goals={key(round(x/S),round(y/S),l):(x,y) for x,y,l in cc};gp=[unpack(v) for v in goals]
 def heuristic(x,y,l):return min(abs(x-gx)+abs(y-gy)+(0 if l==gl else 25) for gx,gy,gl in gp)
 queue=[];cost={};par={}
 for v in starts:
  x,y,l=unpack(v);cost[v]=0;heapq.heappush(queue,(heuristic(x,y,l)*1.4,0,v))
 end=None;it=0
 while queue and it<6000000:
  _,dv,v=heapq.heappop(queue)
  if cost.get(v)!=dv:continue
  if v in goals:end=v;break
  it+=1;x,y,l=unpack(v)
  for dx,dy in [(1,0),(-1,0),(0,1),(0,-1)]:
   xx=x+dx;yy=y+dy
   if not(0<=xx<NX and 0<=yy<NY) or G[l,yy,xx]:continue
   vv=key(xx,yy,l);dd=dv+1
   if dd<cost.get(vv,1e20):cost[vv]=dd;par[vv]=v;heapq.heappush(queue,(dd+heuristic(xx,yy,l)*1.4,dd,vv))
  if not V[y,x]:
   for ll in range(4):
    if ll==l or G[ll,y,x]:continue
    vv=key(x,y,ll);dd=dv+35
    if dd<cost.get(vv,1e20):cost[vv]=dd;par[vv]=v;heapq.heappush(queue,(dd+heuristic(x,y,ll)*1.4,dd,vv))
 if end is None:return False,it
 path=[end]
 while path[-1] not in starts:path.append(par[path[-1]])
 path.reverse();x,y,l=unpack(path[0]);prev=(x*S,y*S);seg(starts[path[0]],prev,l,n);run=prev;dr=None
 for v in path[1:]:
  xx,yy,ll=unpack(v);pt=(xx*S,yy*S)
  if ll!=l:
   seg(run,prev,l,n);vi=k.PCB_VIA(B);vi.SetPosition(k.VECTOR2I(round(pt[0]*1e6),round(pt[1]*1e6)));vi.SetWidth(600000);vi.SetDrill(300000);vi.SetViaType(k.VIATYPE_THROUGH);vi.SetLayerPair(k.F_Cu,k.B_Cu);vi.SetNetCode(n);B.Add(vi);run=pt;dr=None;l=ll
  else:
   di=(xx-x,yy-y)
   if dr is not None and di!=dr:seg(run,prev,l,n);run=prev
   dr=di
  x,y=xx,yy;prev=pt
 seg(run,prev,l,n);seg(prev,goals[end],l,n)
 return True,it
for j,v in enumerate(d['unconnected_items']):
 a,c=[items.get(i['uuid']) for i in v['items'][:2]]
 if a is None or c is None:failed.append(j);continue
 ok,it=route(a,c,a.GetNetCode());print(j,a.GetNetname(),ok,it,flush=True)
 if not ok:failed.append(j)
 B.BuildConnectivity();k.SaveBoard(str(R/'hardware/romcart.kicad_pcb'),B)
print('FAILURES',failed)
