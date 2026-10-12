#!/usr/bin/env python3
"""Deterministic grid routing helper; final acceptance is KiCad DRC, not this router."""
import pcbnew as k,numpy as np, pathlib,heapq,math,json,time
R=pathlib.Path(__file__).resolve().parents[1];B=k.LoadBoard(str(R/'hardware/romcart.kicad_pcb')); S=.1; NX=576;NY=511;LAY=[k.F_Cu,k.In1_Cu,k.In2_Cu,k.B_Cu]
G=np.zeros((4,NY,NX),np.int32);RAW=np.zeros_like(G);pads={};NC=-1
for f in B.GetFootprints():
 for p in f.Pads():
  n=p.GetNetCode()
  if not n:n=NC;NC-=1
  v=p.GetPosition();x=v.x/1e6;y=v.y/1e6;sz=p.GetSize();w=sz.x/1e6;h=sz.y/1e6
  if round(p.GetOrientationDegrees())%180==90:w,h=h,w
  ls=[i for i,l in enumerate(LAY) if p.IsOnLayer(l)]
  for arr,extra in [(G,.26),(RAW,.01)]:
   lo=max(0,int((x-w/2-extra)/S));hi=min(NX,int((x+w/2+extra)/S)+1);ly=max(0,int((y-h/2-extra)/S));hy=min(NY,int((y+h/2+extra)/S)+1)
   for l in ls:
    a=arr[l,ly:hy,lo:hi]
    if arr is G:a[:]=np.where((a==0)|(a==n),n,-888)
    else:a[:]=n
  if p.GetNetCode():pads.setdefault(n,[]).append((x,y,ls,p))
G[RAW!=0]=RAW[RAW!=0]
# Keep copper >= .25 mm from routed edge; fingers are exempt only by own-pad accessibility.
G[:,:,:3]=-999;G[:,:3,:]=-999;G[:,:,573:]=-999;G[:,508:,:]=-999
# fingers stop 0.5 mm before edge.
def ix(x,y,l):return (l*NY+int(round(y/S)))*NX+int(round(x/S))
def xyz(v):
 x=v%NX;v//=NX;return x,v%NY,v//NY
def mark_circle(x,y,rad,n,ls):
 cx=round(x/S);cy=round(y/S);rr=math.ceil(rad/S)
 for l in ls:
  for yy in range(max(0,cy-rr),min(NY,cy+rr+1)):
   for xx in range(max(0,cx-rr),min(NX,cx+rr+1)):
    if (xx-cx)**2+(yy-cy)**2<=rr**2:
     if G[l,yy,xx] in (0,n):G[l,yy,xx]=n
     else:G[l,yy,xx]=-888
tracks=0;vias=0;failed=[];via_locations=set()
def segment(a,c,l,n):
 global tracks
 if a==c:return
 t=k.PCB_TRACK(B);t.SetStart(k.VECTOR2I(round(a[0]*1e6),round(a[1]*1e6)));t.SetEnd(k.VECTOR2I(round(c[0]*1e6),round(c[1]*1e6)));t.SetWidth(150000);t.SetLayer(LAY[l]);t.SetNetCode(n);B.Add(t);tracks+=1
 count=max(1,math.ceil(math.dist(a,c)/.05))
 for j in range(count+1):mark_circle(a[0]+(c[0]-a[0])*j/count,a[1]+(c[1]-a[1])*j/count,.31,n,[l])
def via(x,y,n):
 global vias
 if (round(x,3),round(y,3),n) in via_locations:return
 via_locations.add((round(x,3),round(y,3),n))
 v=k.PCB_VIA(B);v.SetPosition(k.VECTOR2I(round(x*1e6),round(y*1e6)));v.SetWidth(600000);v.SetDrill(300000);v.SetViaType(k.VIATYPE_THROUGH);v.SetLayerPair(k.F_Cu,k.B_Cu);v.SetNetCode(n);B.Add(v);vias+=1;mark_circle(x,y,.56,n,range(4))
def canvia(x,y,n):
 if not(6<=x<NX-6 and 6<=y<NY-6):return False
 ar=G[:,y-6:y+7,x-6:x+7];return bool(np.all((ar==0)|(ar==n)))
def route(a,c,n):
 ax,ay,al,_=a;cx,cy,cl,_=c;tx=round(cx/S);ty=round(cy/S)
 starts=[ix(ax,ay,l) for l in al]; ends={ix(cx,cy,l) for l in cl}
 def h(x,y,l):return abs(x-tx)+abs(y-ty)+(0 if l in cl else 12)
 heap=[];cost={};parent={}
 for v in starts:
  x,y,l=xyz(v);cost[v]=0;heapq.heappush(heap,(h(x,y,l)*1.25,0,v))
 found=None;iterations=0
 while heap and iterations<600000:
  _,d,v=heapq.heappop(heap)
  if d!=cost.get(v):continue
  if v in ends:found=v;break
  x,y,l=xyz(v);iterations+=1
  for dx,dy in [(1,0),(-1,0),(0,1),(0,-1)]:
   xx=x+dx;yy=y+dy
   if not(0<=xx<NX and 0<=yy<NY):continue
   cell=G[l,yy,xx]
   if cell not in (0,n):continue
   vv=(l*NY+yy)*NX+xx;dd=d+1
   if dd<cost.get(vv,1e20):cost[vv]=dd;parent[vv]=v;heapq.heappush(heap,(dd+1.25*h(xx,yy,l),dd,vv))
  # All-layer PTH pads are natural layer switches without extra vias.
  if len(al)==4 and abs(x-round(ax/S))<=1 and abs(y-round(ay/S))<=1:ok=True
  elif len(cl)==4 and abs(x-tx)<=1 and abs(y-ty)<=1:ok=True
  else:ok=canvia(x,y,n)
  if ok:
   for ll in range(4):
    if ll==l or G[ll,y,x] not in (0,n):continue
    vv=(ll*NY+y)*NX+x;dd=d+15
    if dd<cost.get(vv,1e20):cost[vv]=dd;parent[vv]=v;heapq.heappush(heap,(dd+1.25*h(x,y,ll),dd,vv))
 if found is None:return False,iterations
 path=[found]
 while path[-1] not in starts:path.append(parent[path[-1]])
 path.reverse();x,y,l=xyz(path[0]);last=(ax,ay);begin=(x*S,y*S);segment(last,begin,l,n)
 run=begin;prior=begin;direction=None
 for v in path[1:]:
  xx,yy,ll=xyz(v);pt=(xx*S,yy*S)
  if ll!=l:
   segment(run,prior,l,n)
   if not((len(al)==4 and math.dist(pt,(ax,ay))<.2) or(len(cl)==4 and math.dist(pt,(cx,cy))<.2)):via(*pt,n)
   run=pt;direction=None;l=ll
  else:
   di=(xx-x,yy-y)
   if direction is not None and di!=direction:segment(run,prior,l,n);run=prior
   direction=di
  x,y=xx,yy;prior=pt
 segment(run,prior,l,n);segment(prior,(cx,cy),l,n)
 return True,iterations
# Escape TSSOP pins before global routing, alternating via columns.
for n,entries in list(pads.items()):
 new=[]
 for x,y,ls,p in entries:
  f=p.GetParentFootprint()
  if f.GetReference() in ['U1','U2','U3','U4']:
   side=1 if x>f.GetPosition().x/1e6 else -1
   vx=x+side*(1.4+(int(p.GetNumber())%2)*1.0);vy=y
   # exact lead centre -> staggered through via; conflicts remain visible in DRC.
   segment((x,y),(vx,vy),0,n);via(vx,vy,n)
   new.append((vx,vy,[0,1,2,3],p))
  else:new.append((x,y,ls,p))
 pads[n]=new
# short critical/control nets first; ground then supply last.
order=sorted(pads,key=lambda n:(B.FindNet(n).GetNetname() in ['GND','+3V3','+5V_GB','MOD_VBUS'],len(pads[n]),n))
for n in order:
 ps=pads[n]
 if len(ps)<2:continue
 connected=[ps[0]];pending=ps[1:]
 while pending:
  dist,a,c=min((math.dist(p[:2],q[:2]),p,q) for p in connected for q in pending)
  ok,it=route(a,c,n)
  print(B.FindNet(n).GetNetname(),ok,it,flush=True)
  if not ok:failed.append({'net':B.FindNet(n).GetNetname(),'from':a[:2],'to':c[:2]})
  connected.append(c);pending.remove(c)
B.BuildConnectivity();k.SaveBoard(str(R/'hardware/romcart.kicad_pcb'),B)
(R/'validation/router.json').write_text(json.dumps({'tracks':tracks,'vias':vias,'failures':failed},indent=2))
print('COMPLETE',tracks,vias,len(failed))
