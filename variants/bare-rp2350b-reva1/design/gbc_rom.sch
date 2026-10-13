<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE eagle SYSTEM "eagle.dtd">
<eagle version="9.6.2">
  <drawing>
    <settings />
    <grid distance="2.54" unitdist="mm" unit="mm" style="lines" multiple="1" display="no" altdistance="1.27" altunitdist="mm" altunit="mm" />
    <layers>
      <layer number="91" name="Nets" color="2" fill="1" visible="yes" active="yes" />
      <layer number="94" name="Symbols" color="4" fill="1" visible="yes" active="yes" />
      <layer number="95" name="Names" color="7" fill="1" visible="yes" active="yes" />
      <layer number="96" name="Values" color="7" fill="1" visible="yes" active="yes" />
    </layers>
    <schematic xreflabel="%F%N/%S.%C%R" xrefpart="/ %S.%C%R">
      <libraries>
        <library name="GBC_ROM_REFERENCE">
          <packages>
            <package name="SJ3_P1.0_0.6x1.2">
              <smd name="1" x="-1" y="0" dx="0.6" dy="1.2" layer="1" roundness="0" stop="yes" cream="no" />
              <smd name="2" x="0" y="0" dx="0.6" dy="1.2" layer="1" roundness="0" stop="yes" cream="no" />
              <smd name="3" x="1" y="0" dx="0.6" dy="1.2" layer="1" roundness="0" stop="yes" cream="no" />
              <text x="-1.4" y="1" size="0.8" layer="25">&gt;NAME</text>
            </package>
          </packages>
          <symbols>
            <symbol name="U1">
              <wire x1="0" y1="0" x2="38.1" y2="0" width="0.254" layer="94" />
              <wire x1="0" y1="106.68" x2="38.1" y2="106.68" width="0.254" layer="94" />
              <wire x1="0" y1="0" x2="0" y2="106.68" width="0.254" layer="94" />
              <wire x1="38.1" y1="0" x2="38.1" y2="106.68" width="0.254" layer="94" />
              <text x="0" y="109.22000000000001" size="1.778" layer="95">&gt;NAME</text>
              <text x="0" y="-3.81" size="1.27" layer="96">&gt;VALUE</text>
              <pin name="P77" x="-5.08" y="104.14" visible="pin" length="middle" direction="pas" rot="R0" />
              <text x="1.27" y="104.64" size="0.95" layer="94" align="bottom-left">GPIO0</text>
              <pin name="P78" x="-5.08" y="101.60000000000001" visible="pin" length="middle" direction="pas" rot="R0" />
              <text x="1.27" y="102.10000000000001" size="0.95" layer="94" align="bottom-left">GPIO1</text>
              <pin name="P79" x="-5.08" y="99.06" visible="pin" length="middle" direction="pas" rot="R0" />
              <text x="1.27" y="99.56" size="0.95" layer="94" align="bottom-left">GPIO2</text>
              <pin name="P80" x="-5.08" y="96.52000000000001" visible="pin" length="middle" direction="pas" rot="R0" />
              <text x="1.27" y="97.02000000000001" size="0.95" layer="94" align="bottom-left">GPIO3</text>
              <pin name="P1" x="-5.08" y="93.98" visible="pin" length="middle" direction="pas" rot="R0" />
              <text x="1.27" y="94.48" size="0.95" layer="94" align="bottom-left">GPIO4</text>
              <pin name="P2" x="-5.08" y="91.44000000000001" visible="pin" length="middle" direction="pas" rot="R0" />
              <text x="1.27" y="91.94000000000001" size="0.95" layer="94" align="bottom-left">GPIO5</text>
              <pin name="P3" x="-5.08" y="88.9" visible="pin" length="middle" direction="pas" rot="R0" />
              <text x="1.27" y="89.4" size="0.95" layer="94" align="bottom-left">GPIO6</text>
              <pin name="P4" x="-5.08" y="86.36000000000001" visible="pin" length="middle" direction="pas" rot="R0" />
              <text x="1.27" y="86.86000000000001" size="0.95" layer="94" align="bottom-left">GPIO7</text>
              <pin name="P6" x="-5.08" y="83.82000000000001" visible="pin" length="middle" direction="pas" rot="R0" />
              <text x="1.27" y="84.32000000000001" size="0.95" layer="94" align="bottom-left">GPIO8</text>
              <pin name="P7" x="-5.08" y="81.28" visible="pin" length="middle" direction="pas" rot="R0" />
              <text x="1.27" y="81.78" size="0.95" layer="94" align="bottom-left">GPIO9</text>
              <pin name="P8" x="-5.08" y="78.74000000000001" visible="pin" length="middle" direction="pas" rot="R0" />
              <text x="1.27" y="79.24000000000001" size="0.95" layer="94" align="bottom-left">GPIO10</text>
              <pin name="P9" x="-5.08" y="76.2" visible="pin" length="middle" direction="pas" rot="R0" />
              <text x="1.27" y="76.7" size="0.95" layer="94" align="bottom-left">GPIO11</text>
              <pin name="P11" x="-5.08" y="73.66" visible="pin" length="middle" direction="pas" rot="R0" />
              <text x="1.27" y="74.16" size="0.95" layer="94" align="bottom-left">GPIO12</text>
              <pin name="P12" x="-5.08" y="71.12" visible="pin" length="middle" direction="pas" rot="R0" />
              <text x="1.27" y="71.62" size="0.95" layer="94" align="bottom-left">GPIO13</text>
              <pin name="P13" x="-5.08" y="68.58000000000001" visible="pin" length="middle" direction="pas" rot="R0" />
              <text x="1.27" y="69.08000000000001" size="0.95" layer="94" align="bottom-left">GPIO14</text>
              <pin name="P14" x="-5.08" y="66.04" visible="pin" length="middle" direction="pas" rot="R0" />
              <text x="1.27" y="66.54" size="0.95" layer="94" align="bottom-left">GPIO15</text>
              <pin name="P16" x="-5.08" y="63.50000000000001" visible="pin" length="middle" direction="pas" rot="R0" />
              <text x="1.27" y="64.0" size="0.95" layer="94" align="bottom-left">GPIO16</text>
              <pin name="P17" x="-5.08" y="60.96000000000001" visible="pin" length="middle" direction="pas" rot="R0" />
              <text x="1.27" y="61.46000000000001" size="0.95" layer="94" align="bottom-left">GPIO17</text>
              <pin name="P18" x="-5.08" y="58.42000000000001" visible="pin" length="middle" direction="pas" rot="R0" />
              <text x="1.27" y="58.92000000000001" size="0.95" layer="94" align="bottom-left">GPIO18</text>
              <pin name="P19" x="-5.08" y="55.88000000000001" visible="pin" length="middle" direction="pas" rot="R0" />
              <text x="1.27" y="56.38000000000001" size="0.95" layer="94" align="bottom-left">GPIO19</text>
              <pin name="P20" x="-5.08" y="53.34" visible="pin" length="middle" direction="pas" rot="R0" />
              <text x="1.27" y="53.84" size="0.95" layer="94" align="bottom-left">GPIO20</text>
              <pin name="P21" x="-5.08" y="50.800000000000004" visible="pin" length="middle" direction="pas" rot="R0" />
              <text x="1.27" y="51.300000000000004" size="0.95" layer="94" align="bottom-left">GPIO21</text>
              <pin name="P22" x="-5.08" y="48.260000000000005" visible="pin" length="middle" direction="pas" rot="R0" />
              <text x="1.27" y="48.760000000000005" size="0.95" layer="94" align="bottom-left">GPIO22</text>
              <pin name="P23" x="-5.08" y="45.720000000000006" visible="pin" length="middle" direction="pas" rot="R0" />
              <text x="1.27" y="46.220000000000006" size="0.95" layer="94" align="bottom-left">GPIO23</text>
              <pin name="P25" x="-5.08" y="43.18000000000001" visible="pin" length="middle" direction="pas" rot="R0" />
              <text x="1.27" y="43.68000000000001" size="0.95" layer="94" align="bottom-left">GPIO24</text>
              <pin name="P26" x="-5.08" y="40.64" visible="pin" length="middle" direction="pas" rot="R0" />
              <text x="1.27" y="41.14" size="0.95" layer="94" align="bottom-left">GPIO25</text>
              <pin name="P27" x="-5.08" y="38.10000000000001" visible="pin" length="middle" direction="pas" rot="R0" />
              <text x="1.27" y="38.60000000000001" size="0.95" layer="94" align="bottom-left">GPIO26</text>
              <pin name="P28" x="-5.08" y="35.56" visible="pin" length="middle" direction="pas" rot="R0" />
              <text x="1.27" y="36.06" size="0.95" layer="94" align="bottom-left">GPIO27</text>
              <pin name="P36" x="-5.08" y="33.02000000000001" visible="pin" length="middle" direction="pas" rot="R0" />
              <text x="1.27" y="33.52000000000001" size="0.95" layer="94" align="bottom-left">GPIO28</text>
              <pin name="P37" x="-5.08" y="30.480000000000004" visible="pin" length="middle" direction="pas" rot="R0" />
              <text x="1.27" y="30.980000000000004" size="0.95" layer="94" align="bottom-left">GPIO29</text>
              <pin name="P38" x="-5.08" y="27.940000000000012" visible="pin" length="middle" direction="pas" rot="R0" />
              <text x="1.27" y="28.440000000000012" size="0.95" layer="94" align="bottom-left">GPIO30</text>
              <pin name="P39" x="-5.08" y="25.400000000000006" visible="pin" length="middle" direction="pas" rot="R0" />
              <text x="1.27" y="25.900000000000006" size="0.95" layer="94" align="bottom-left">GPIO31</text>
              <pin name="P40" x="-5.08" y="22.86" visible="pin" length="middle" direction="pas" rot="R0" />
              <text x="1.27" y="23.36" size="0.95" layer="94" align="bottom-left">GPIO32</text>
              <pin name="P42" x="-5.08" y="20.320000000000007" visible="pin" length="middle" direction="pas" rot="R0" />
              <text x="1.27" y="20.820000000000007" size="0.95" layer="94" align="bottom-left">GPIO33</text>
              <pin name="P43" x="-5.08" y="17.78" visible="pin" length="middle" direction="pas" rot="R0" />
              <text x="1.27" y="18.28" size="0.95" layer="94" align="bottom-left">GPIO34</text>
              <pin name="P44" x="-5.08" y="15.240000000000009" visible="pin" length="middle" direction="pas" rot="R0" />
              <text x="1.27" y="15.740000000000009" size="0.95" layer="94" align="bottom-left">GPIO35</text>
              <pin name="P45" x="-5.08" y="12.700000000000003" visible="pin" length="middle" direction="pas" rot="R0" />
              <text x="1.27" y="13.200000000000003" size="0.95" layer="94" align="bottom-left">GPIO36</text>
              <pin name="P46" x="-5.08" y="10.16000000000001" visible="pin" length="middle" direction="pas" rot="R0" />
              <text x="1.27" y="10.66000000000001" size="0.95" layer="94" align="bottom-left">GPIO37</text>
              <pin name="P47" x="-5.08" y="7.6200000000000045" visible="pin" length="middle" direction="pas" rot="R0" />
              <text x="1.27" y="8.120000000000005" size="0.95" layer="94" align="bottom-left">GPIO38</text>
              <pin name="P48" x="-5.08" y="5.0800000000000125" visible="pin" length="middle" direction="pas" rot="R0" />
              <text x="1.27" y="5.5800000000000125" size="0.95" layer="94" align="bottom-left">GPIO39</text>
              <pin name="P49" x="-5.08" y="2.5400000000000063" visible="pin" length="middle" direction="pas" rot="R0" />
              <text x="1.27" y="3.0400000000000063" size="0.95" layer="94" align="bottom-left">GPIO40</text>
              <pin name="P52" x="43.18" y="104.14" visible="pin" length="middle" direction="pas" rot="R180" />
              <text x="36.83" y="104.64" size="0.95" layer="94" align="bottom-right">GPIO41</text>
              <pin name="P53" x="43.18" y="101.60000000000001" visible="pin" length="middle" direction="pas" rot="R180" />
              <text x="36.83" y="102.10000000000001" size="0.95" layer="94" align="bottom-right">GPIO42</text>
              <pin name="P54" x="43.18" y="99.06" visible="pin" length="middle" direction="pas" rot="R180" />
              <text x="36.83" y="99.56" size="0.95" layer="94" align="bottom-right">GPIO43</text>
              <pin name="P55" x="43.18" y="96.52000000000001" visible="pin" length="middle" direction="pas" rot="R180" />
              <text x="36.83" y="97.02000000000001" size="0.95" layer="94" align="bottom-right">GPIO44</text>
              <pin name="P56" x="43.18" y="93.98" visible="pin" length="middle" direction="pas" rot="R180" />
              <text x="36.83" y="94.48" size="0.95" layer="94" align="bottom-right">GPIO45</text>
              <pin name="P57" x="43.18" y="91.44000000000001" visible="pin" length="middle" direction="pas" rot="R180" />
              <text x="36.83" y="91.94000000000001" size="0.95" layer="94" align="bottom-right">GPIO46</text>
              <pin name="P58" x="43.18" y="88.9" visible="pin" length="middle" direction="pas" rot="R180" />
              <text x="36.83" y="89.4" size="0.95" layer="94" align="bottom-right">GPIO47</text>
              <pin name="P5" x="43.18" y="86.36000000000001" visible="pin" length="middle" direction="pas" rot="R180" />
              <text x="36.83" y="86.86000000000001" size="0.95" layer="94" align="bottom-right">IOVDD</text>
              <pin name="P15" x="43.18" y="83.82000000000001" visible="pin" length="middle" direction="pas" rot="R180" />
              <text x="36.83" y="84.32000000000001" size="0.95" layer="94" align="bottom-right">IOVDD</text>
              <pin name="P24" x="43.18" y="81.28" visible="pin" length="middle" direction="pas" rot="R180" />
              <text x="36.83" y="81.78" size="0.95" layer="94" align="bottom-right">IOVDD</text>
              <pin name="P29" x="43.18" y="78.74000000000001" visible="pin" length="middle" direction="pas" rot="R180" />
              <text x="36.83" y="79.24000000000001" size="0.95" layer="94" align="bottom-right">IOVDD</text>
              <pin name="P41" x="43.18" y="76.2" visible="pin" length="middle" direction="pas" rot="R180" />
              <text x="36.83" y="76.7" size="0.95" layer="94" align="bottom-right">IOVDD</text>
              <pin name="P50" x="43.18" y="73.66" visible="pin" length="middle" direction="pas" rot="R180" />
              <text x="36.83" y="74.16" size="0.95" layer="94" align="bottom-right">IOVDD</text>
              <pin name="P60" x="43.18" y="71.12" visible="pin" length="middle" direction="pas" rot="R180" />
              <text x="36.83" y="71.62" size="0.95" layer="94" align="bottom-right">IOVDD</text>
              <pin name="P76" x="43.18" y="68.58000000000001" visible="pin" length="middle" direction="pas" rot="R180" />
              <text x="36.83" y="69.08000000000001" size="0.95" layer="94" align="bottom-right">IOVDD</text>
              <pin name="P10" x="43.18" y="66.04" visible="pin" length="middle" direction="pas" rot="R180" />
              <text x="36.83" y="66.54" size="0.95" layer="94" align="bottom-right">DVDD</text>
              <pin name="P32" x="43.18" y="63.50000000000001" visible="pin" length="middle" direction="pas" rot="R180" />
              <text x="36.83" y="64.0" size="0.95" layer="94" align="bottom-right">DVDD</text>
              <pin name="P51" x="43.18" y="60.96000000000001" visible="pin" length="middle" direction="pas" rot="R180" />
              <text x="36.83" y="61.46000000000001" size="0.95" layer="94" align="bottom-right">DVDD</text>
              <pin name="P69" x="43.18" y="58.42000000000001" visible="pin" length="middle" direction="pas" rot="R180" />
              <text x="36.83" y="58.92000000000001" size="0.95" layer="94" align="bottom-right">QSPI_IOVDD</text>
              <pin name="P68" x="43.18" y="55.88000000000001" visible="pin" length="middle" direction="pas" rot="R180" />
              <text x="36.83" y="56.38000000000001" size="0.95" layer="94" align="bottom-right">USB_OTP_VDD</text>
              <pin name="P59" x="43.18" y="53.34" visible="pin" length="middle" direction="pas" rot="R180" />
              <text x="36.83" y="53.84" size="0.95" layer="94" align="bottom-right">ADC_AVDD</text>
              <pin name="P61" x="43.18" y="50.800000000000004" visible="pin" length="middle" direction="pas" rot="R180" />
              <text x="36.83" y="51.300000000000004" size="0.95" layer="94" align="bottom-right">VREG_AVDD</text>
              <pin name="P62" x="43.18" y="48.260000000000005" visible="pin" length="middle" direction="pas" rot="R180" />
              <text x="36.83" y="48.760000000000005" size="0.95" layer="94" align="bottom-right">VREG_PGND</text>
              <pin name="P63" x="43.18" y="45.720000000000006" visible="pin" length="middle" direction="pas" rot="R180" />
              <text x="36.83" y="46.220000000000006" size="0.95" layer="94" align="bottom-right">VREG_LX</text>
              <pin name="P64" x="43.18" y="43.18000000000001" visible="pin" length="middle" direction="pas" rot="R180" />
              <text x="36.83" y="43.68000000000001" size="0.95" layer="94" align="bottom-right">VREG_VIN</text>
              <pin name="P65" x="43.18" y="40.64" visible="pin" length="middle" direction="pas" rot="R180" />
              <text x="36.83" y="41.14" size="0.95" layer="94" align="bottom-right">VREG_FB</text>
              <pin name="P30" x="43.18" y="38.10000000000001" visible="pin" length="middle" direction="pas" rot="R180" />
              <text x="36.83" y="38.60000000000001" size="0.95" layer="94" align="bottom-right">XIN</text>
              <pin name="P31" x="43.18" y="35.56" visible="pin" length="middle" direction="pas" rot="R180" />
              <text x="36.83" y="36.06" size="0.95" layer="94" align="bottom-right">XOUT</text>
              <pin name="P33" x="43.18" y="33.02000000000001" visible="pin" length="middle" direction="pas" rot="R180" />
              <text x="36.83" y="33.52000000000001" size="0.95" layer="94" align="bottom-right">SWCLK</text>
              <pin name="P34" x="43.18" y="30.480000000000004" visible="pin" length="middle" direction="pas" rot="R180" />
              <text x="36.83" y="30.980000000000004" size="0.95" layer="94" align="bottom-right">SWDIO</text>
              <pin name="P35" x="43.18" y="27.940000000000012" visible="pin" length="middle" direction="pas" rot="R180" />
              <text x="36.83" y="28.440000000000012" size="0.95" layer="94" align="bottom-right">RUN</text>
              <pin name="P66" x="43.18" y="25.400000000000006" visible="pin" length="middle" direction="pas" rot="R180" />
              <text x="36.83" y="25.900000000000006" size="0.95" layer="94" align="bottom-right">USB_DM</text>
              <pin name="P67" x="43.18" y="22.86" visible="pin" length="middle" direction="pas" rot="R180" />
              <text x="36.83" y="23.36" size="0.95" layer="94" align="bottom-right">USB_DP</text>
              <pin name="P70" x="43.18" y="20.320000000000007" visible="pin" length="middle" direction="pas" rot="R180" />
              <text x="36.83" y="20.820000000000007" size="0.95" layer="94" align="bottom-right">QSPI_SD3</text>
              <pin name="P71" x="43.18" y="17.78" visible="pin" length="middle" direction="pas" rot="R180" />
              <text x="36.83" y="18.28" size="0.95" layer="94" align="bottom-right">QSPI_SCLK</text>
              <pin name="P72" x="43.18" y="15.240000000000009" visible="pin" length="middle" direction="pas" rot="R180" />
              <text x="36.83" y="15.740000000000009" size="0.95" layer="94" align="bottom-right">QSPI_SD0</text>
              <pin name="P73" x="43.18" y="12.700000000000003" visible="pin" length="middle" direction="pas" rot="R180" />
              <text x="36.83" y="13.200000000000003" size="0.95" layer="94" align="bottom-right">QSPI_SD2</text>
              <pin name="P74" x="43.18" y="10.16000000000001" visible="pin" length="middle" direction="pas" rot="R180" />
              <text x="36.83" y="10.66000000000001" size="0.95" layer="94" align="bottom-right">QSPI_SD1</text>
              <pin name="P75" x="43.18" y="7.6200000000000045" visible="pin" length="middle" direction="pas" rot="R180" />
              <text x="36.83" y="8.120000000000005" size="0.95" layer="94" align="bottom-right">QSPI_SS</text>
              <pin name="P81" x="43.18" y="5.0800000000000125" visible="pin" length="middle" direction="pas" rot="R180" />
              <text x="36.83" y="5.5800000000000125" size="0.95" layer="94" align="bottom-right">EP_GND</text>
            </symbol>
            <symbol name="J1">
              <wire x1="0" y1="0" x2="38.1" y2="0" width="0.254" layer="94" />
              <wire x1="0" y1="43.18" x2="38.1" y2="43.18" width="0.254" layer="94" />
              <wire x1="0" y1="0" x2="0" y2="43.18" width="0.254" layer="94" />
              <wire x1="38.1" y1="0" x2="38.1" y2="43.18" width="0.254" layer="94" />
              <text x="0" y="45.72" size="1.778" layer="95">&gt;NAME</text>
              <text x="0" y="-3.81" size="1.27" layer="96">&gt;VALUE</text>
              <pin name="P1" x="-5.08" y="40.64" visible="pin" length="middle" direction="pas" rot="R0" />
              <text x="1.27" y="41.14" size="0.95" layer="94" align="bottom-left">VDD</text>
              <pin name="P2" x="-5.08" y="38.1" visible="pin" length="middle" direction="pas" rot="R0" />
              <text x="1.27" y="38.6" size="0.95" layer="94" align="bottom-left">PHI</text>
              <pin name="P3" x="-5.08" y="35.56" visible="pin" length="middle" direction="pas" rot="R0" />
              <text x="1.27" y="36.06" size="0.95" layer="94" align="bottom-left">/WR</text>
              <pin name="P4" x="-5.08" y="33.019999999999996" visible="pin" length="middle" direction="pas" rot="R0" />
              <text x="1.27" y="33.519999999999996" size="0.95" layer="94" align="bottom-left">/RD</text>
              <pin name="P5" x="-5.08" y="30.48" visible="pin" length="middle" direction="pas" rot="R0" />
              <text x="1.27" y="30.98" size="0.95" layer="94" align="bottom-left">/CS_RAM</text>
              <pin name="P6" x="-5.08" y="27.939999999999998" visible="pin" length="middle" direction="pas" rot="R0" />
              <text x="1.27" y="28.439999999999998" size="0.95" layer="94" align="bottom-left">A0</text>
              <pin name="P7" x="-5.08" y="25.4" visible="pin" length="middle" direction="pas" rot="R0" />
              <text x="1.27" y="25.9" size="0.95" layer="94" align="bottom-left">A1</text>
              <pin name="P8" x="-5.08" y="22.86" visible="pin" length="middle" direction="pas" rot="R0" />
              <text x="1.27" y="23.36" size="0.95" layer="94" align="bottom-left">A2</text>
              <pin name="P9" x="-5.08" y="20.32" visible="pin" length="middle" direction="pas" rot="R0" />
              <text x="1.27" y="20.82" size="0.95" layer="94" align="bottom-left">A3</text>
              <pin name="P10" x="-5.08" y="17.78" visible="pin" length="middle" direction="pas" rot="R0" />
              <text x="1.27" y="18.28" size="0.95" layer="94" align="bottom-left">A4</text>
              <pin name="P11" x="-5.08" y="15.239999999999998" visible="pin" length="middle" direction="pas" rot="R0" />
              <text x="1.27" y="15.739999999999998" size="0.95" layer="94" align="bottom-left">A5</text>
              <pin name="P12" x="-5.08" y="12.7" visible="pin" length="middle" direction="pas" rot="R0" />
              <text x="1.27" y="13.2" size="0.95" layer="94" align="bottom-left">A6</text>
              <pin name="P13" x="-5.08" y="10.159999999999997" visible="pin" length="middle" direction="pas" rot="R0" />
              <text x="1.27" y="10.659999999999997" size="0.95" layer="94" align="bottom-left">A7</text>
              <pin name="P14" x="-5.08" y="7.619999999999997" visible="pin" length="middle" direction="pas" rot="R0" />
              <text x="1.27" y="8.119999999999997" size="0.95" layer="94" align="bottom-left">A8</text>
              <pin name="P15" x="-5.08" y="5.079999999999998" visible="pin" length="middle" direction="pas" rot="R0" />
              <text x="1.27" y="5.579999999999998" size="0.95" layer="94" align="bottom-left">A9</text>
              <pin name="P16" x="-5.08" y="2.539999999999999" visible="pin" length="middle" direction="pas" rot="R0" />
              <text x="1.27" y="3.039999999999999" size="0.95" layer="94" align="bottom-left">A10</text>
              <pin name="P17" x="43.18" y="40.64" visible="pin" length="middle" direction="pas" rot="R180" />
              <text x="36.83" y="41.14" size="0.95" layer="94" align="bottom-right">A11</text>
              <pin name="P18" x="43.18" y="38.1" visible="pin" length="middle" direction="pas" rot="R180" />
              <text x="36.83" y="38.6" size="0.95" layer="94" align="bottom-right">A12</text>
              <pin name="P19" x="43.18" y="35.56" visible="pin" length="middle" direction="pas" rot="R180" />
              <text x="36.83" y="36.06" size="0.95" layer="94" align="bottom-right">A13</text>
              <pin name="P20" x="43.18" y="33.019999999999996" visible="pin" length="middle" direction="pas" rot="R180" />
              <text x="36.83" y="33.519999999999996" size="0.95" layer="94" align="bottom-right">A14</text>
              <pin name="P21" x="43.18" y="30.48" visible="pin" length="middle" direction="pas" rot="R180" />
              <text x="36.83" y="30.98" size="0.95" layer="94" align="bottom-right">A15</text>
              <pin name="P22" x="43.18" y="27.939999999999998" visible="pin" length="middle" direction="pas" rot="R180" />
              <text x="36.83" y="28.439999999999998" size="0.95" layer="94" align="bottom-right">D0</text>
              <pin name="P23" x="43.18" y="25.4" visible="pin" length="middle" direction="pas" rot="R180" />
              <text x="36.83" y="25.9" size="0.95" layer="94" align="bottom-right">D1</text>
              <pin name="P24" x="43.18" y="22.86" visible="pin" length="middle" direction="pas" rot="R180" />
              <text x="36.83" y="23.36" size="0.95" layer="94" align="bottom-right">D2</text>
              <pin name="P25" x="43.18" y="20.32" visible="pin" length="middle" direction="pas" rot="R180" />
              <text x="36.83" y="20.82" size="0.95" layer="94" align="bottom-right">D3</text>
              <pin name="P26" x="43.18" y="17.78" visible="pin" length="middle" direction="pas" rot="R180" />
              <text x="36.83" y="18.28" size="0.95" layer="94" align="bottom-right">D4</text>
              <pin name="P27" x="43.18" y="15.239999999999998" visible="pin" length="middle" direction="pas" rot="R180" />
              <text x="36.83" y="15.739999999999998" size="0.95" layer="94" align="bottom-right">D5</text>
              <pin name="P28" x="43.18" y="12.7" visible="pin" length="middle" direction="pas" rot="R180" />
              <text x="36.83" y="13.2" size="0.95" layer="94" align="bottom-right">D6</text>
              <pin name="P29" x="43.18" y="10.159999999999997" visible="pin" length="middle" direction="pas" rot="R180" />
              <text x="36.83" y="10.659999999999997" size="0.95" layer="94" align="bottom-right">D7</text>
              <pin name="P30" x="43.18" y="7.619999999999997" visible="pin" length="middle" direction="pas" rot="R180" />
              <text x="36.83" y="8.119999999999997" size="0.95" layer="94" align="bottom-right">/RES</text>
              <pin name="P31" x="43.18" y="5.079999999999998" visible="pin" length="middle" direction="pas" rot="R180" />
              <text x="36.83" y="5.579999999999998" size="0.95" layer="94" align="bottom-right">VIN_AUDIO</text>
              <pin name="P32" x="43.18" y="2.539999999999999" visible="pin" length="middle" direction="pas" rot="R180" />
              <text x="36.83" y="3.039999999999999" size="0.95" layer="94" align="bottom-right">GND</text>
            </symbol>
            <symbol name="U2">
              <wire x1="0" y1="0" x2="38.1" y2="0" width="0.254" layer="94" />
              <wire x1="0" y1="27.94" x2="38.1" y2="27.94" width="0.254" layer="94" />
              <wire x1="0" y1="0" x2="0" y2="27.94" width="0.254" layer="94" />
              <wire x1="38.1" y1="0" x2="38.1" y2="27.94" width="0.254" layer="94" />
              <text x="0" y="30.48" size="1.778" layer="95">&gt;NAME</text>
              <text x="0" y="-3.81" size="1.27" layer="96">&gt;VALUE</text>
              <pin name="P1" x="-5.08" y="25.400000000000002" visible="pin" length="middle" direction="pas" rot="R0" />
              <text x="1.27" y="25.900000000000002" size="0.95" layer="94" align="bottom-left">/OE1</text>
              <pin name="P19" x="-5.08" y="22.86" visible="pin" length="middle" direction="pas" rot="R0" />
              <text x="1.27" y="23.36" size="0.95" layer="94" align="bottom-left">/OE2</text>
              <pin name="P10" x="-5.08" y="20.32" visible="pin" length="middle" direction="pas" rot="R0" />
              <text x="1.27" y="20.82" size="0.95" layer="94" align="bottom-left">GND</text>
              <pin name="P20" x="-5.08" y="17.78" visible="pin" length="middle" direction="pas" rot="R0" />
              <text x="1.27" y="18.28" size="0.95" layer="94" align="bottom-left">VCC</text>
              <pin name="P2" x="-5.08" y="15.240000000000002" visible="pin" length="middle" direction="pas" rot="R0" />
              <text x="1.27" y="15.740000000000002" size="0.95" layer="94" align="bottom-left">A0</text>
              <pin name="P18" x="-5.08" y="12.700000000000001" visible="pin" length="middle" direction="pas" rot="R0" />
              <text x="1.27" y="13.200000000000001" size="0.95" layer="94" align="bottom-left">Y0</text>
              <pin name="P4" x="-5.08" y="10.16" visible="pin" length="middle" direction="pas" rot="R0" />
              <text x="1.27" y="10.66" size="0.95" layer="94" align="bottom-left">A1</text>
              <pin name="P16" x="-5.08" y="7.620000000000001" visible="pin" length="middle" direction="pas" rot="R0" />
              <text x="1.27" y="8.120000000000001" size="0.95" layer="94" align="bottom-left">Y1</text>
              <pin name="P6" x="-5.08" y="5.080000000000002" visible="pin" length="middle" direction="pas" rot="R0" />
              <text x="1.27" y="5.580000000000002" size="0.95" layer="94" align="bottom-left">A2</text>
              <pin name="P14" x="-5.08" y="2.5400000000000027" visible="pin" length="middle" direction="pas" rot="R0" />
              <text x="1.27" y="3.0400000000000027" size="0.95" layer="94" align="bottom-left">Y2</text>
              <pin name="P8" x="43.18" y="25.400000000000002" visible="pin" length="middle" direction="pas" rot="R180" />
              <text x="36.83" y="25.900000000000002" size="0.95" layer="94" align="bottom-right">A3</text>
              <pin name="P12" x="43.18" y="22.86" visible="pin" length="middle" direction="pas" rot="R180" />
              <text x="36.83" y="23.36" size="0.95" layer="94" align="bottom-right">Y3</text>
              <pin name="P11" x="43.18" y="20.32" visible="pin" length="middle" direction="pas" rot="R180" />
              <text x="36.83" y="20.82" size="0.95" layer="94" align="bottom-right">A4</text>
              <pin name="P9" x="43.18" y="17.78" visible="pin" length="middle" direction="pas" rot="R180" />
              <text x="36.83" y="18.28" size="0.95" layer="94" align="bottom-right">Y4</text>
              <pin name="P13" x="43.18" y="15.240000000000002" visible="pin" length="middle" direction="pas" rot="R180" />
              <text x="36.83" y="15.740000000000002" size="0.95" layer="94" align="bottom-right">A5</text>
              <pin name="P7" x="43.18" y="12.700000000000001" visible="pin" length="middle" direction="pas" rot="R180" />
              <text x="36.83" y="13.200000000000001" size="0.95" layer="94" align="bottom-right">Y5</text>
              <pin name="P15" x="43.18" y="10.16" visible="pin" length="middle" direction="pas" rot="R180" />
              <text x="36.83" y="10.66" size="0.95" layer="94" align="bottom-right">A6</text>
              <pin name="P5" x="43.18" y="7.620000000000001" visible="pin" length="middle" direction="pas" rot="R180" />
              <text x="36.83" y="8.120000000000001" size="0.95" layer="94" align="bottom-right">Y6</text>
              <pin name="P17" x="43.18" y="5.080000000000002" visible="pin" length="middle" direction="pas" rot="R180" />
              <text x="36.83" y="5.580000000000002" size="0.95" layer="94" align="bottom-right">A7</text>
              <pin name="P3" x="43.18" y="2.5400000000000027" visible="pin" length="middle" direction="pas" rot="R180" />
              <text x="36.83" y="3.0400000000000027" size="0.95" layer="94" align="bottom-right">Y7</text>
            </symbol>
            <symbol name="U3">
              <wire x1="0" y1="0" x2="38.1" y2="0" width="0.254" layer="94" />
              <wire x1="0" y1="27.94" x2="38.1" y2="27.94" width="0.254" layer="94" />
              <wire x1="0" y1="0" x2="0" y2="27.94" width="0.254" layer="94" />
              <wire x1="38.1" y1="0" x2="38.1" y2="27.94" width="0.254" layer="94" />
              <text x="0" y="30.48" size="1.778" layer="95">&gt;NAME</text>
              <text x="0" y="-3.81" size="1.27" layer="96">&gt;VALUE</text>
              <pin name="P1" x="-5.08" y="25.400000000000002" visible="pin" length="middle" direction="pas" rot="R0" />
              <text x="1.27" y="25.900000000000002" size="0.95" layer="94" align="bottom-left">/OE1</text>
              <pin name="P19" x="-5.08" y="22.86" visible="pin" length="middle" direction="pas" rot="R0" />
              <text x="1.27" y="23.36" size="0.95" layer="94" align="bottom-left">/OE2</text>
              <pin name="P10" x="-5.08" y="20.32" visible="pin" length="middle" direction="pas" rot="R0" />
              <text x="1.27" y="20.82" size="0.95" layer="94" align="bottom-left">GND</text>
              <pin name="P20" x="-5.08" y="17.78" visible="pin" length="middle" direction="pas" rot="R0" />
              <text x="1.27" y="18.28" size="0.95" layer="94" align="bottom-left">VCC</text>
              <pin name="P2" x="-5.08" y="15.240000000000002" visible="pin" length="middle" direction="pas" rot="R0" />
              <text x="1.27" y="15.740000000000002" size="0.95" layer="94" align="bottom-left">A0</text>
              <pin name="P18" x="-5.08" y="12.700000000000001" visible="pin" length="middle" direction="pas" rot="R0" />
              <text x="1.27" y="13.200000000000001" size="0.95" layer="94" align="bottom-left">Y0</text>
              <pin name="P4" x="-5.08" y="10.16" visible="pin" length="middle" direction="pas" rot="R0" />
              <text x="1.27" y="10.66" size="0.95" layer="94" align="bottom-left">A1</text>
              <pin name="P16" x="-5.08" y="7.620000000000001" visible="pin" length="middle" direction="pas" rot="R0" />
              <text x="1.27" y="8.120000000000001" size="0.95" layer="94" align="bottom-left">Y1</text>
              <pin name="P6" x="-5.08" y="5.080000000000002" visible="pin" length="middle" direction="pas" rot="R0" />
              <text x="1.27" y="5.580000000000002" size="0.95" layer="94" align="bottom-left">A2</text>
              <pin name="P14" x="-5.08" y="2.5400000000000027" visible="pin" length="middle" direction="pas" rot="R0" />
              <text x="1.27" y="3.0400000000000027" size="0.95" layer="94" align="bottom-left">Y2</text>
              <pin name="P8" x="43.18" y="25.400000000000002" visible="pin" length="middle" direction="pas" rot="R180" />
              <text x="36.83" y="25.900000000000002" size="0.95" layer="94" align="bottom-right">A3</text>
              <pin name="P12" x="43.18" y="22.86" visible="pin" length="middle" direction="pas" rot="R180" />
              <text x="36.83" y="23.36" size="0.95" layer="94" align="bottom-right">Y3</text>
              <pin name="P11" x="43.18" y="20.32" visible="pin" length="middle" direction="pas" rot="R180" />
              <text x="36.83" y="20.82" size="0.95" layer="94" align="bottom-right">A4</text>
              <pin name="P9" x="43.18" y="17.78" visible="pin" length="middle" direction="pas" rot="R180" />
              <text x="36.83" y="18.28" size="0.95" layer="94" align="bottom-right">Y4</text>
              <pin name="P13" x="43.18" y="15.240000000000002" visible="pin" length="middle" direction="pas" rot="R180" />
              <text x="36.83" y="15.740000000000002" size="0.95" layer="94" align="bottom-right">A5</text>
              <pin name="P7" x="43.18" y="12.700000000000001" visible="pin" length="middle" direction="pas" rot="R180" />
              <text x="36.83" y="13.200000000000001" size="0.95" layer="94" align="bottom-right">Y5</text>
              <pin name="P15" x="43.18" y="10.16" visible="pin" length="middle" direction="pas" rot="R180" />
              <text x="36.83" y="10.66" size="0.95" layer="94" align="bottom-right">A6</text>
              <pin name="P5" x="43.18" y="7.620000000000001" visible="pin" length="middle" direction="pas" rot="R180" />
              <text x="36.83" y="8.120000000000001" size="0.95" layer="94" align="bottom-right">Y6</text>
              <pin name="P17" x="43.18" y="5.080000000000002" visible="pin" length="middle" direction="pas" rot="R180" />
              <text x="36.83" y="5.580000000000002" size="0.95" layer="94" align="bottom-right">A7</text>
              <pin name="P3" x="43.18" y="2.5400000000000027" visible="pin" length="middle" direction="pas" rot="R180" />
              <text x="36.83" y="3.0400000000000027" size="0.95" layer="94" align="bottom-right">Y7</text>
            </symbol>
            <symbol name="U4">
              <wire x1="0" y1="0" x2="38.1" y2="0" width="0.254" layer="94" />
              <wire x1="0" y1="10.16" x2="38.1" y2="10.16" width="0.254" layer="94" />
              <wire x1="0" y1="0" x2="0" y2="10.16" width="0.254" layer="94" />
              <wire x1="38.1" y1="0" x2="38.1" y2="10.16" width="0.254" layer="94" />
              <text x="0" y="12.7" size="1.778" layer="95">&gt;NAME</text>
              <text x="0" y="-3.81" size="1.27" layer="96">&gt;VALUE</text>
              <pin name="P1" x="-5.08" y="7.62" visible="pin" length="middle" direction="pas" rot="R0" />
              <text x="1.27" y="8.120000000000001" size="0.95" layer="94" align="bottom-left">NC</text>
              <pin name="P2" x="-5.08" y="5.08" visible="pin" length="middle" direction="pas" rot="R0" />
              <text x="1.27" y="5.58" size="0.95" layer="94" align="bottom-left">A</text>
              <pin name="P3" x="-5.08" y="2.54" visible="pin" length="middle" direction="pas" rot="R0" />
              <text x="1.27" y="3.04" size="0.95" layer="94" align="bottom-left">GND</text>
              <pin name="P4" x="43.18" y="7.62" visible="pin" length="middle" direction="pas" rot="R180" />
              <text x="36.83" y="8.120000000000001" size="0.95" layer="94" align="bottom-right">Y</text>
              <pin name="P5" x="43.18" y="5.08" visible="pin" length="middle" direction="pas" rot="R180" />
              <text x="36.83" y="5.58" size="0.95" layer="94" align="bottom-right">VCC</text>
            </symbol>
            <symbol name="U5">
              <wire x1="0" y1="0" x2="38.1" y2="0" width="0.254" layer="94" />
              <wire x1="0" y1="27.94" x2="38.1" y2="27.94" width="0.254" layer="94" />
              <wire x1="0" y1="0" x2="0" y2="27.94" width="0.254" layer="94" />
              <wire x1="38.1" y1="0" x2="38.1" y2="27.94" width="0.254" layer="94" />
              <text x="0" y="30.48" size="1.778" layer="95">&gt;NAME</text>
              <text x="0" y="-3.81" size="1.27" layer="96">&gt;VALUE</text>
              <pin name="P1" x="-5.08" y="25.400000000000002" visible="pin" length="middle" direction="pas" rot="R0" />
              <text x="1.27" y="25.900000000000002" size="0.95" layer="94" align="bottom-left">DIR</text>
              <pin name="P10" x="-5.08" y="22.86" visible="pin" length="middle" direction="pas" rot="R0" />
              <text x="1.27" y="23.36" size="0.95" layer="94" align="bottom-left">GND</text>
              <pin name="P19" x="-5.08" y="20.32" visible="pin" length="middle" direction="pas" rot="R0" />
              <text x="1.27" y="20.82" size="0.95" layer="94" align="bottom-left">/OE</text>
              <pin name="P20" x="-5.08" y="17.78" visible="pin" length="middle" direction="pas" rot="R0" />
              <text x="1.27" y="18.28" size="0.95" layer="94" align="bottom-left">VCC</text>
              <pin name="P2" x="-5.08" y="15.240000000000002" visible="pin" length="middle" direction="pas" rot="R0" />
              <text x="1.27" y="15.740000000000002" size="0.95" layer="94" align="bottom-left">A1</text>
              <pin name="P18" x="-5.08" y="12.700000000000001" visible="pin" length="middle" direction="pas" rot="R0" />
              <text x="1.27" y="13.200000000000001" size="0.95" layer="94" align="bottom-left">B1</text>
              <pin name="P3" x="-5.08" y="10.16" visible="pin" length="middle" direction="pas" rot="R0" />
              <text x="1.27" y="10.66" size="0.95" layer="94" align="bottom-left">A2</text>
              <pin name="P17" x="-5.08" y="7.620000000000001" visible="pin" length="middle" direction="pas" rot="R0" />
              <text x="1.27" y="8.120000000000001" size="0.95" layer="94" align="bottom-left">B2</text>
              <pin name="P4" x="-5.08" y="5.080000000000002" visible="pin" length="middle" direction="pas" rot="R0" />
              <text x="1.27" y="5.580000000000002" size="0.95" layer="94" align="bottom-left">A3</text>
              <pin name="P16" x="-5.08" y="2.5400000000000027" visible="pin" length="middle" direction="pas" rot="R0" />
              <text x="1.27" y="3.0400000000000027" size="0.95" layer="94" align="bottom-left">B3</text>
              <pin name="P5" x="43.18" y="25.400000000000002" visible="pin" length="middle" direction="pas" rot="R180" />
              <text x="36.83" y="25.900000000000002" size="0.95" layer="94" align="bottom-right">A4</text>
              <pin name="P15" x="43.18" y="22.86" visible="pin" length="middle" direction="pas" rot="R180" />
              <text x="36.83" y="23.36" size="0.95" layer="94" align="bottom-right">B4</text>
              <pin name="P6" x="43.18" y="20.32" visible="pin" length="middle" direction="pas" rot="R180" />
              <text x="36.83" y="20.82" size="0.95" layer="94" align="bottom-right">A5</text>
              <pin name="P14" x="43.18" y="17.78" visible="pin" length="middle" direction="pas" rot="R180" />
              <text x="36.83" y="18.28" size="0.95" layer="94" align="bottom-right">B5</text>
              <pin name="P7" x="43.18" y="15.240000000000002" visible="pin" length="middle" direction="pas" rot="R180" />
              <text x="36.83" y="15.740000000000002" size="0.95" layer="94" align="bottom-right">A6</text>
              <pin name="P13" x="43.18" y="12.700000000000001" visible="pin" length="middle" direction="pas" rot="R180" />
              <text x="36.83" y="13.200000000000001" size="0.95" layer="94" align="bottom-right">B6</text>
              <pin name="P8" x="43.18" y="10.16" visible="pin" length="middle" direction="pas" rot="R180" />
              <text x="36.83" y="10.66" size="0.95" layer="94" align="bottom-right">A7</text>
              <pin name="P12" x="43.18" y="7.620000000000001" visible="pin" length="middle" direction="pas" rot="R180" />
              <text x="36.83" y="8.120000000000001" size="0.95" layer="94" align="bottom-right">B7</text>
              <pin name="P9" x="43.18" y="5.080000000000002" visible="pin" length="middle" direction="pas" rot="R180" />
              <text x="36.83" y="5.580000000000002" size="0.95" layer="94" align="bottom-right">A8</text>
              <pin name="P11" x="43.18" y="2.5400000000000027" visible="pin" length="middle" direction="pas" rot="R180" />
              <text x="36.83" y="3.0400000000000027" size="0.95" layer="94" align="bottom-right">B8</text>
            </symbol>
            <symbol name="U6">
              <wire x1="0" y1="0" x2="38.1" y2="0" width="0.254" layer="94" />
              <wire x1="0" y1="20.32" x2="38.1" y2="20.32" width="0.254" layer="94" />
              <wire x1="0" y1="0" x2="0" y2="20.32" width="0.254" layer="94" />
              <wire x1="38.1" y1="0" x2="38.1" y2="20.32" width="0.254" layer="94" />
              <text x="0" y="22.86" size="1.778" layer="95">&gt;NAME</text>
              <text x="0" y="-3.81" size="1.27" layer="96">&gt;VALUE</text>
              <pin name="P1" x="-5.08" y="17.78" visible="pin" length="middle" direction="pas" rot="R0" />
              <text x="1.27" y="18.28" size="0.95" layer="94" align="bottom-left">1A</text>
              <pin name="P2" x="-5.08" y="15.24" visible="pin" length="middle" direction="pas" rot="R0" />
              <text x="1.27" y="15.74" size="0.95" layer="94" align="bottom-left">1B</text>
              <pin name="P3" x="-5.08" y="12.7" visible="pin" length="middle" direction="pas" rot="R0" />
              <text x="1.27" y="13.2" size="0.95" layer="94" align="bottom-left">1Y</text>
              <pin name="P4" x="-5.08" y="10.16" visible="pin" length="middle" direction="pas" rot="R0" />
              <text x="1.27" y="10.66" size="0.95" layer="94" align="bottom-left">2A</text>
              <pin name="P5" x="-5.08" y="7.620000000000001" visible="pin" length="middle" direction="pas" rot="R0" />
              <text x="1.27" y="8.120000000000001" size="0.95" layer="94" align="bottom-left">2B</text>
              <pin name="P6" x="-5.08" y="5.08" visible="pin" length="middle" direction="pas" rot="R0" />
              <text x="1.27" y="5.58" size="0.95" layer="94" align="bottom-left">2Y</text>
              <pin name="P7" x="-5.08" y="2.539999999999999" visible="pin" length="middle" direction="pas" rot="R0" />
              <text x="1.27" y="3.039999999999999" size="0.95" layer="94" align="bottom-left">GND</text>
              <pin name="P8" x="43.18" y="17.78" visible="pin" length="middle" direction="pas" rot="R180" />
              <text x="36.83" y="18.28" size="0.95" layer="94" align="bottom-right">3Y</text>
              <pin name="P9" x="43.18" y="15.24" visible="pin" length="middle" direction="pas" rot="R180" />
              <text x="36.83" y="15.74" size="0.95" layer="94" align="bottom-right">3A</text>
              <pin name="P10" x="43.18" y="12.7" visible="pin" length="middle" direction="pas" rot="R180" />
              <text x="36.83" y="13.2" size="0.95" layer="94" align="bottom-right">3B</text>
              <pin name="P11" x="43.18" y="10.16" visible="pin" length="middle" direction="pas" rot="R180" />
              <text x="36.83" y="10.66" size="0.95" layer="94" align="bottom-right">4Y</text>
              <pin name="P12" x="43.18" y="7.620000000000001" visible="pin" length="middle" direction="pas" rot="R180" />
              <text x="36.83" y="8.120000000000001" size="0.95" layer="94" align="bottom-right">4A</text>
              <pin name="P13" x="43.18" y="5.08" visible="pin" length="middle" direction="pas" rot="R180" />
              <text x="36.83" y="5.58" size="0.95" layer="94" align="bottom-right">4B</text>
              <pin name="P14" x="43.18" y="2.539999999999999" visible="pin" length="middle" direction="pas" rot="R180" />
              <text x="36.83" y="3.039999999999999" size="0.95" layer="94" align="bottom-right">VCC</text>
            </symbol>
            <symbol name="U7">
              <wire x1="0" y1="0" x2="38.1" y2="0" width="0.254" layer="94" />
              <wire x1="0" y1="12.7" x2="38.1" y2="12.7" width="0.254" layer="94" />
              <wire x1="0" y1="0" x2="0" y2="12.7" width="0.254" layer="94" />
              <wire x1="38.1" y1="0" x2="38.1" y2="12.7" width="0.254" layer="94" />
              <text x="0" y="15.239999999999998" size="1.778" layer="95">&gt;NAME</text>
              <text x="0" y="-3.81" size="1.27" layer="96">&gt;VALUE</text>
              <pin name="P1" x="-5.08" y="10.16" visible="pin" length="middle" direction="pas" rot="R0" />
              <text x="1.27" y="10.66" size="0.95" layer="94" align="bottom-left">/CS</text>
              <pin name="P2" x="-5.08" y="7.619999999999999" visible="pin" length="middle" direction="pas" rot="R0" />
              <text x="1.27" y="8.12" size="0.95" layer="94" align="bottom-left">DO_IO1</text>
              <pin name="P3" x="-5.08" y="5.079999999999999" visible="pin" length="middle" direction="pas" rot="R0" />
              <text x="1.27" y="5.579999999999999" size="0.95" layer="94" align="bottom-left">/WP_IO2</text>
              <pin name="P4" x="-5.08" y="2.539999999999999" visible="pin" length="middle" direction="pas" rot="R0" />
              <text x="1.27" y="3.039999999999999" size="0.95" layer="94" align="bottom-left">GND</text>
              <pin name="P5" x="43.18" y="10.16" visible="pin" length="middle" direction="pas" rot="R180" />
              <text x="36.83" y="10.66" size="0.95" layer="94" align="bottom-right">DI_IO0</text>
              <pin name="P6" x="43.18" y="7.619999999999999" visible="pin" length="middle" direction="pas" rot="R180" />
              <text x="36.83" y="8.12" size="0.95" layer="94" align="bottom-right">CLK</text>
              <pin name="P7" x="43.18" y="5.079999999999999" visible="pin" length="middle" direction="pas" rot="R180" />
              <text x="36.83" y="5.579999999999999" size="0.95" layer="94" align="bottom-right">/HOLD_IO3</text>
              <pin name="P8" x="43.18" y="2.539999999999999" visible="pin" length="middle" direction="pas" rot="R180" />
              <text x="36.83" y="3.039999999999999" size="0.95" layer="94" align="bottom-right">VCC</text>
            </symbol>
            <symbol name="U8">
              <wire x1="0" y1="0" x2="38.1" y2="0" width="0.254" layer="94" />
              <wire x1="0" y1="10.16" x2="38.1" y2="10.16" width="0.254" layer="94" />
              <wire x1="0" y1="0" x2="0" y2="10.16" width="0.254" layer="94" />
              <wire x1="38.1" y1="0" x2="38.1" y2="10.16" width="0.254" layer="94" />
              <text x="0" y="12.7" size="1.778" layer="95">&gt;NAME</text>
              <text x="0" y="-3.81" size="1.27" layer="96">&gt;VALUE</text>
              <pin name="P1" x="-5.08" y="7.62" visible="pin" length="middle" direction="pas" rot="R0" />
              <text x="1.27" y="8.120000000000001" size="0.95" layer="94" align="bottom-left">IN</text>
              <pin name="P2" x="-5.08" y="5.08" visible="pin" length="middle" direction="pas" rot="R0" />
              <text x="1.27" y="5.58" size="0.95" layer="94" align="bottom-left">GND</text>
              <pin name="P3" x="-5.08" y="2.54" visible="pin" length="middle" direction="pas" rot="R0" />
              <text x="1.27" y="3.04" size="0.95" layer="94" align="bottom-left">EN</text>
              <pin name="P4" x="43.18" y="7.62" visible="pin" length="middle" direction="pas" rot="R180" />
              <text x="36.83" y="8.120000000000001" size="0.95" layer="94" align="bottom-right">NC</text>
              <pin name="P5" x="43.18" y="5.08" visible="pin" length="middle" direction="pas" rot="R180" />
              <text x="36.83" y="5.58" size="0.95" layer="94" align="bottom-right">OUT</text>
            </symbol>
            <symbol name="Q1">
              <wire x1="0" y1="0" x2="38.1" y2="0" width="0.254" layer="94" />
              <wire x1="0" y1="10" x2="38.1" y2="10" width="0.254" layer="94" />
              <wire x1="0" y1="0" x2="0" y2="10" width="0.254" layer="94" />
              <wire x1="38.1" y1="0" x2="38.1" y2="10" width="0.254" layer="94" />
              <text x="0" y="12.54" size="1.778" layer="95">&gt;NAME</text>
              <text x="0" y="-3.81" size="1.27" layer="96">&gt;VALUE</text>
              <pin name="P1" x="-5.08" y="7.46" visible="pin" length="middle" direction="pas" rot="R0" />
              <text x="1.27" y="7.96" size="0.95" layer="94" align="bottom-left">G</text>
              <pin name="P2" x="-5.08" y="4.92" visible="pin" length="middle" direction="pas" rot="R0" />
              <text x="1.27" y="5.42" size="0.95" layer="94" align="bottom-left">S</text>
              <pin name="P3" x="43.18" y="7.46" visible="pin" length="middle" direction="pas" rot="R180" />
              <text x="36.83" y="7.96" size="0.95" layer="94" align="bottom-right">D</text>
            </symbol>
            <symbol name="Q2">
              <wire x1="0" y1="0" x2="38.1" y2="0" width="0.254" layer="94" />
              <wire x1="0" y1="10" x2="38.1" y2="10" width="0.254" layer="94" />
              <wire x1="0" y1="0" x2="0" y2="10" width="0.254" layer="94" />
              <wire x1="38.1" y1="0" x2="38.1" y2="10" width="0.254" layer="94" />
              <text x="0" y="12.54" size="1.778" layer="95">&gt;NAME</text>
              <text x="0" y="-3.81" size="1.27" layer="96">&gt;VALUE</text>
              <pin name="P1" x="-5.08" y="7.46" visible="pin" length="middle" direction="pas" rot="R0" />
              <text x="1.27" y="7.96" size="0.95" layer="94" align="bottom-left">G</text>
              <pin name="P2" x="-5.08" y="4.92" visible="pin" length="middle" direction="pas" rot="R0" />
              <text x="1.27" y="5.42" size="0.95" layer="94" align="bottom-left">S</text>
              <pin name="P3" x="43.18" y="7.46" visible="pin" length="middle" direction="pas" rot="R180" />
              <text x="36.83" y="7.96" size="0.95" layer="94" align="bottom-right">D</text>
            </symbol>
            <symbol name="Y1">
              <wire x1="0" y1="0" x2="38.1" y2="0" width="0.254" layer="94" />
              <wire x1="0" y1="10" x2="38.1" y2="10" width="0.254" layer="94" />
              <wire x1="0" y1="0" x2="0" y2="10" width="0.254" layer="94" />
              <wire x1="38.1" y1="0" x2="38.1" y2="10" width="0.254" layer="94" />
              <text x="0" y="12.54" size="1.778" layer="95">&gt;NAME</text>
              <text x="0" y="-3.81" size="1.27" layer="96">&gt;VALUE</text>
              <pin name="P1" x="-5.08" y="7.46" visible="pin" length="middle" direction="pas" rot="R0" />
              <text x="1.27" y="7.96" size="0.95" layer="94" align="bottom-left">X1</text>
              <pin name="P2" x="-5.08" y="4.92" visible="pin" length="middle" direction="pas" rot="R0" />
              <text x="1.27" y="5.42" size="0.95" layer="94" align="bottom-left">CASE</text>
              <pin name="P3" x="43.18" y="7.46" visible="pin" length="middle" direction="pas" rot="R180" />
              <text x="36.83" y="7.96" size="0.95" layer="94" align="bottom-right">X2</text>
              <pin name="P4" x="43.18" y="4.92" visible="pin" length="middle" direction="pas" rot="R180" />
              <text x="36.83" y="5.42" size="0.95" layer="94" align="bottom-right">CASE</text>
            </symbol>
            <symbol name="R1">
              <wire x1="0" y1="0" x2="38.1" y2="0" width="0.254" layer="94" />
              <wire x1="0" y1="10" x2="38.1" y2="10" width="0.254" layer="94" />
              <wire x1="0" y1="0" x2="0" y2="10" width="0.254" layer="94" />
              <wire x1="38.1" y1="0" x2="38.1" y2="10" width="0.254" layer="94" />
              <text x="0" y="12.54" size="1.778" layer="95">&gt;NAME</text>
              <text x="0" y="-3.81" size="1.27" layer="96">&gt;VALUE</text>
              <pin name="P1" x="-5.08" y="7.46" visible="pin" length="middle" direction="pas" rot="R0" />
              <text x="1.27" y="7.96" size="0.95" layer="94" align="bottom-left">1</text>
              <pin name="P2" x="43.18" y="7.46" visible="pin" length="middle" direction="pas" rot="R180" />
              <text x="36.83" y="7.96" size="0.95" layer="94" align="bottom-right">2</text>
            </symbol>
            <symbol name="R2">
              <wire x1="0" y1="0" x2="38.1" y2="0" width="0.254" layer="94" />
              <wire x1="0" y1="10" x2="38.1" y2="10" width="0.254" layer="94" />
              <wire x1="0" y1="0" x2="0" y2="10" width="0.254" layer="94" />
              <wire x1="38.1" y1="0" x2="38.1" y2="10" width="0.254" layer="94" />
              <text x="0" y="12.54" size="1.778" layer="95">&gt;NAME</text>
              <text x="0" y="-3.81" size="1.27" layer="96">&gt;VALUE</text>
              <pin name="P1" x="-5.08" y="7.46" visible="pin" length="middle" direction="pas" rot="R0" />
              <text x="1.27" y="7.96" size="0.95" layer="94" align="bottom-left">1</text>
              <pin name="P2" x="43.18" y="7.46" visible="pin" length="middle" direction="pas" rot="R180" />
              <text x="36.83" y="7.96" size="0.95" layer="94" align="bottom-right">2</text>
            </symbol>
            <symbol name="R3">
              <wire x1="0" y1="0" x2="38.1" y2="0" width="0.254" layer="94" />
              <wire x1="0" y1="10" x2="38.1" y2="10" width="0.254" layer="94" />
              <wire x1="0" y1="0" x2="0" y2="10" width="0.254" layer="94" />
              <wire x1="38.1" y1="0" x2="38.1" y2="10" width="0.254" layer="94" />
              <text x="0" y="12.54" size="1.778" layer="95">&gt;NAME</text>
              <text x="0" y="-3.81" size="1.27" layer="96">&gt;VALUE</text>
              <pin name="P1" x="-5.08" y="7.46" visible="pin" length="middle" direction="pas" rot="R0" />
              <text x="1.27" y="7.96" size="0.95" layer="94" align="bottom-left">1</text>
              <pin name="P2" x="43.18" y="7.46" visible="pin" length="middle" direction="pas" rot="R180" />
              <text x="36.83" y="7.96" size="0.95" layer="94" align="bottom-right">2</text>
            </symbol>
            <symbol name="R4">
              <wire x1="0" y1="0" x2="38.1" y2="0" width="0.254" layer="94" />
              <wire x1="0" y1="10" x2="38.1" y2="10" width="0.254" layer="94" />
              <wire x1="0" y1="0" x2="0" y2="10" width="0.254" layer="94" />
              <wire x1="38.1" y1="0" x2="38.1" y2="10" width="0.254" layer="94" />
              <text x="0" y="12.54" size="1.778" layer="95">&gt;NAME</text>
              <text x="0" y="-3.81" size="1.27" layer="96">&gt;VALUE</text>
              <pin name="P1" x="-5.08" y="7.46" visible="pin" length="middle" direction="pas" rot="R0" />
              <text x="1.27" y="7.96" size="0.95" layer="94" align="bottom-left">1</text>
              <pin name="P2" x="43.18" y="7.46" visible="pin" length="middle" direction="pas" rot="R180" />
              <text x="36.83" y="7.96" size="0.95" layer="94" align="bottom-right">2</text>
            </symbol>
            <symbol name="R5">
              <wire x1="0" y1="0" x2="38.1" y2="0" width="0.254" layer="94" />
              <wire x1="0" y1="10" x2="38.1" y2="10" width="0.254" layer="94" />
              <wire x1="0" y1="0" x2="0" y2="10" width="0.254" layer="94" />
              <wire x1="38.1" y1="0" x2="38.1" y2="10" width="0.254" layer="94" />
              <text x="0" y="12.54" size="1.778" layer="95">&gt;NAME</text>
              <text x="0" y="-3.81" size="1.27" layer="96">&gt;VALUE</text>
              <pin name="P1" x="-5.08" y="7.46" visible="pin" length="middle" direction="pas" rot="R0" />
              <text x="1.27" y="7.96" size="0.95" layer="94" align="bottom-left">1</text>
              <pin name="P2" x="43.18" y="7.46" visible="pin" length="middle" direction="pas" rot="R180" />
              <text x="36.83" y="7.96" size="0.95" layer="94" align="bottom-right">2</text>
            </symbol>
            <symbol name="R6">
              <wire x1="0" y1="0" x2="38.1" y2="0" width="0.254" layer="94" />
              <wire x1="0" y1="10" x2="38.1" y2="10" width="0.254" layer="94" />
              <wire x1="0" y1="0" x2="0" y2="10" width="0.254" layer="94" />
              <wire x1="38.1" y1="0" x2="38.1" y2="10" width="0.254" layer="94" />
              <text x="0" y="12.54" size="1.778" layer="95">&gt;NAME</text>
              <text x="0" y="-3.81" size="1.27" layer="96">&gt;VALUE</text>
              <pin name="P1" x="-5.08" y="7.46" visible="pin" length="middle" direction="pas" rot="R0" />
              <text x="1.27" y="7.96" size="0.95" layer="94" align="bottom-left">1</text>
              <pin name="P2" x="43.18" y="7.46" visible="pin" length="middle" direction="pas" rot="R180" />
              <text x="36.83" y="7.96" size="0.95" layer="94" align="bottom-right">2</text>
            </symbol>
            <symbol name="R7">
              <wire x1="0" y1="0" x2="38.1" y2="0" width="0.254" layer="94" />
              <wire x1="0" y1="10" x2="38.1" y2="10" width="0.254" layer="94" />
              <wire x1="0" y1="0" x2="0" y2="10" width="0.254" layer="94" />
              <wire x1="38.1" y1="0" x2="38.1" y2="10" width="0.254" layer="94" />
              <text x="0" y="12.54" size="1.778" layer="95">&gt;NAME</text>
              <text x="0" y="-3.81" size="1.27" layer="96">&gt;VALUE</text>
              <pin name="P1" x="-5.08" y="7.46" visible="pin" length="middle" direction="pas" rot="R0" />
              <text x="1.27" y="7.96" size="0.95" layer="94" align="bottom-left">1</text>
              <pin name="P2" x="43.18" y="7.46" visible="pin" length="middle" direction="pas" rot="R180" />
              <text x="36.83" y="7.96" size="0.95" layer="94" align="bottom-right">2</text>
            </symbol>
            <symbol name="R8">
              <wire x1="0" y1="0" x2="38.1" y2="0" width="0.254" layer="94" />
              <wire x1="0" y1="10" x2="38.1" y2="10" width="0.254" layer="94" />
              <wire x1="0" y1="0" x2="0" y2="10" width="0.254" layer="94" />
              <wire x1="38.1" y1="0" x2="38.1" y2="10" width="0.254" layer="94" />
              <text x="0" y="12.54" size="1.778" layer="95">&gt;NAME</text>
              <text x="0" y="-3.81" size="1.27" layer="96">&gt;VALUE</text>
              <pin name="P1" x="-5.08" y="7.46" visible="pin" length="middle" direction="pas" rot="R0" />
              <text x="1.27" y="7.96" size="0.95" layer="94" align="bottom-left">1</text>
              <pin name="P2" x="43.18" y="7.46" visible="pin" length="middle" direction="pas" rot="R180" />
              <text x="36.83" y="7.96" size="0.95" layer="94" align="bottom-right">2</text>
            </symbol>
            <symbol name="R9">
              <wire x1="0" y1="0" x2="38.1" y2="0" width="0.254" layer="94" />
              <wire x1="0" y1="10" x2="38.1" y2="10" width="0.254" layer="94" />
              <wire x1="0" y1="0" x2="0" y2="10" width="0.254" layer="94" />
              <wire x1="38.1" y1="0" x2="38.1" y2="10" width="0.254" layer="94" />
              <text x="0" y="12.54" size="1.778" layer="95">&gt;NAME</text>
              <text x="0" y="-3.81" size="1.27" layer="96">&gt;VALUE</text>
              <pin name="P1" x="-5.08" y="7.46" visible="pin" length="middle" direction="pas" rot="R0" />
              <text x="1.27" y="7.96" size="0.95" layer="94" align="bottom-left">1</text>
              <pin name="P2" x="43.18" y="7.46" visible="pin" length="middle" direction="pas" rot="R180" />
              <text x="36.83" y="7.96" size="0.95" layer="94" align="bottom-right">2</text>
            </symbol>
            <symbol name="R10">
              <wire x1="0" y1="0" x2="38.1" y2="0" width="0.254" layer="94" />
              <wire x1="0" y1="10" x2="38.1" y2="10" width="0.254" layer="94" />
              <wire x1="0" y1="0" x2="0" y2="10" width="0.254" layer="94" />
              <wire x1="38.1" y1="0" x2="38.1" y2="10" width="0.254" layer="94" />
              <text x="0" y="12.54" size="1.778" layer="95">&gt;NAME</text>
              <text x="0" y="-3.81" size="1.27" layer="96">&gt;VALUE</text>
              <pin name="P1" x="-5.08" y="7.46" visible="pin" length="middle" direction="pas" rot="R0" />
              <text x="1.27" y="7.96" size="0.95" layer="94" align="bottom-left">1</text>
              <pin name="P2" x="43.18" y="7.46" visible="pin" length="middle" direction="pas" rot="R180" />
              <text x="36.83" y="7.96" size="0.95" layer="94" align="bottom-right">2</text>
            </symbol>
            <symbol name="R11">
              <wire x1="0" y1="0" x2="38.1" y2="0" width="0.254" layer="94" />
              <wire x1="0" y1="10" x2="38.1" y2="10" width="0.254" layer="94" />
              <wire x1="0" y1="0" x2="0" y2="10" width="0.254" layer="94" />
              <wire x1="38.1" y1="0" x2="38.1" y2="10" width="0.254" layer="94" />
              <text x="0" y="12.54" size="1.778" layer="95">&gt;NAME</text>
              <text x="0" y="-3.81" size="1.27" layer="96">&gt;VALUE</text>
              <pin name="P1" x="-5.08" y="7.46" visible="pin" length="middle" direction="pas" rot="R0" />
              <text x="1.27" y="7.96" size="0.95" layer="94" align="bottom-left">1</text>
              <pin name="P2" x="43.18" y="7.46" visible="pin" length="middle" direction="pas" rot="R180" />
              <text x="36.83" y="7.96" size="0.95" layer="94" align="bottom-right">2</text>
            </symbol>
            <symbol name="R12">
              <wire x1="0" y1="0" x2="38.1" y2="0" width="0.254" layer="94" />
              <wire x1="0" y1="10" x2="38.1" y2="10" width="0.254" layer="94" />
              <wire x1="0" y1="0" x2="0" y2="10" width="0.254" layer="94" />
              <wire x1="38.1" y1="0" x2="38.1" y2="10" width="0.254" layer="94" />
              <text x="0" y="12.54" size="1.778" layer="95">&gt;NAME</text>
              <text x="0" y="-3.81" size="1.27" layer="96">&gt;VALUE</text>
              <pin name="P1" x="-5.08" y="7.46" visible="pin" length="middle" direction="pas" rot="R0" />
              <text x="1.27" y="7.96" size="0.95" layer="94" align="bottom-left">1</text>
              <pin name="P2" x="43.18" y="7.46" visible="pin" length="middle" direction="pas" rot="R180" />
              <text x="36.83" y="7.96" size="0.95" layer="94" align="bottom-right">2</text>
            </symbol>
            <symbol name="R13">
              <wire x1="0" y1="0" x2="38.1" y2="0" width="0.254" layer="94" />
              <wire x1="0" y1="10" x2="38.1" y2="10" width="0.254" layer="94" />
              <wire x1="0" y1="0" x2="0" y2="10" width="0.254" layer="94" />
              <wire x1="38.1" y1="0" x2="38.1" y2="10" width="0.254" layer="94" />
              <text x="0" y="12.54" size="1.778" layer="95">&gt;NAME</text>
              <text x="0" y="-3.81" size="1.27" layer="96">&gt;VALUE</text>
              <pin name="P1" x="-5.08" y="7.46" visible="pin" length="middle" direction="pas" rot="R0" />
              <text x="1.27" y="7.96" size="0.95" layer="94" align="bottom-left">1</text>
              <pin name="P2" x="43.18" y="7.46" visible="pin" length="middle" direction="pas" rot="R180" />
              <text x="36.83" y="7.96" size="0.95" layer="94" align="bottom-right">2</text>
            </symbol>
            <symbol name="R14">
              <wire x1="0" y1="0" x2="38.1" y2="0" width="0.254" layer="94" />
              <wire x1="0" y1="10" x2="38.1" y2="10" width="0.254" layer="94" />
              <wire x1="0" y1="0" x2="0" y2="10" width="0.254" layer="94" />
              <wire x1="38.1" y1="0" x2="38.1" y2="10" width="0.254" layer="94" />
              <text x="0" y="12.54" size="1.778" layer="95">&gt;NAME</text>
              <text x="0" y="-3.81" size="1.27" layer="96">&gt;VALUE</text>
              <pin name="P1" x="-5.08" y="7.46" visible="pin" length="middle" direction="pas" rot="R0" />
              <text x="1.27" y="7.96" size="0.95" layer="94" align="bottom-left">1</text>
              <pin name="P2" x="43.18" y="7.46" visible="pin" length="middle" direction="pas" rot="R180" />
              <text x="36.83" y="7.96" size="0.95" layer="94" align="bottom-right">2</text>
            </symbol>
            <symbol name="R15">
              <wire x1="0" y1="0" x2="38.1" y2="0" width="0.254" layer="94" />
              <wire x1="0" y1="10" x2="38.1" y2="10" width="0.254" layer="94" />
              <wire x1="0" y1="0" x2="0" y2="10" width="0.254" layer="94" />
              <wire x1="38.1" y1="0" x2="38.1" y2="10" width="0.254" layer="94" />
              <text x="0" y="12.54" size="1.778" layer="95">&gt;NAME</text>
              <text x="0" y="-3.81" size="1.27" layer="96">&gt;VALUE</text>
              <pin name="P1" x="-5.08" y="7.46" visible="pin" length="middle" direction="pas" rot="R0" />
              <text x="1.27" y="7.96" size="0.95" layer="94" align="bottom-left">1</text>
              <pin name="P2" x="43.18" y="7.46" visible="pin" length="middle" direction="pas" rot="R180" />
              <text x="36.83" y="7.96" size="0.95" layer="94" align="bottom-right">2</text>
            </symbol>
            <symbol name="R16">
              <wire x1="0" y1="0" x2="38.1" y2="0" width="0.254" layer="94" />
              <wire x1="0" y1="10" x2="38.1" y2="10" width="0.254" layer="94" />
              <wire x1="0" y1="0" x2="0" y2="10" width="0.254" layer="94" />
              <wire x1="38.1" y1="0" x2="38.1" y2="10" width="0.254" layer="94" />
              <text x="0" y="12.54" size="1.778" layer="95">&gt;NAME</text>
              <text x="0" y="-3.81" size="1.27" layer="96">&gt;VALUE</text>
              <pin name="P1" x="-5.08" y="7.46" visible="pin" length="middle" direction="pas" rot="R0" />
              <text x="1.27" y="7.96" size="0.95" layer="94" align="bottom-left">1</text>
              <pin name="P2" x="43.18" y="7.46" visible="pin" length="middle" direction="pas" rot="R180" />
              <text x="36.83" y="7.96" size="0.95" layer="94" align="bottom-right">2</text>
            </symbol>
            <symbol name="R17">
              <wire x1="0" y1="0" x2="38.1" y2="0" width="0.254" layer="94" />
              <wire x1="0" y1="10" x2="38.1" y2="10" width="0.254" layer="94" />
              <wire x1="0" y1="0" x2="0" y2="10" width="0.254" layer="94" />
              <wire x1="38.1" y1="0" x2="38.1" y2="10" width="0.254" layer="94" />
              <text x="0" y="12.54" size="1.778" layer="95">&gt;NAME</text>
              <text x="0" y="-3.81" size="1.27" layer="96">&gt;VALUE</text>
              <pin name="P1" x="-5.08" y="7.46" visible="pin" length="middle" direction="pas" rot="R0" />
              <text x="1.27" y="7.96" size="0.95" layer="94" align="bottom-left">1</text>
              <pin name="P2" x="43.18" y="7.46" visible="pin" length="middle" direction="pas" rot="R180" />
              <text x="36.83" y="7.96" size="0.95" layer="94" align="bottom-right">2</text>
            </symbol>
            <symbol name="R18">
              <wire x1="0" y1="0" x2="38.1" y2="0" width="0.254" layer="94" />
              <wire x1="0" y1="10" x2="38.1" y2="10" width="0.254" layer="94" />
              <wire x1="0" y1="0" x2="0" y2="10" width="0.254" layer="94" />
              <wire x1="38.1" y1="0" x2="38.1" y2="10" width="0.254" layer="94" />
              <text x="0" y="12.54" size="1.778" layer="95">&gt;NAME</text>
              <text x="0" y="-3.81" size="1.27" layer="96">&gt;VALUE</text>
              <pin name="P1" x="-5.08" y="7.46" visible="pin" length="middle" direction="pas" rot="R0" />
              <text x="1.27" y="7.96" size="0.95" layer="94" align="bottom-left">1</text>
              <pin name="P2" x="43.18" y="7.46" visible="pin" length="middle" direction="pas" rot="R180" />
              <text x="36.83" y="7.96" size="0.95" layer="94" align="bottom-right">2</text>
            </symbol>
            <symbol name="L1">
              <wire x1="0" y1="0" x2="38.1" y2="0" width="0.254" layer="94" />
              <wire x1="0" y1="10" x2="38.1" y2="10" width="0.254" layer="94" />
              <wire x1="0" y1="0" x2="0" y2="10" width="0.254" layer="94" />
              <wire x1="38.1" y1="0" x2="38.1" y2="10" width="0.254" layer="94" />
              <text x="0" y="12.54" size="1.778" layer="95">&gt;NAME</text>
              <text x="0" y="-3.81" size="1.27" layer="96">&gt;VALUE</text>
              <pin name="P1" x="-5.08" y="7.46" visible="pin" length="middle" direction="pas" rot="R0" />
              <text x="1.27" y="7.96" size="0.95" layer="94" align="bottom-left">1</text>
              <pin name="P2" x="43.18" y="7.46" visible="pin" length="middle" direction="pas" rot="R180" />
              <text x="36.83" y="7.96" size="0.95" layer="94" align="bottom-right">2</text>
            </symbol>
            <symbol name="C1">
              <wire x1="0" y1="0" x2="38.1" y2="0" width="0.254" layer="94" />
              <wire x1="0" y1="10" x2="38.1" y2="10" width="0.254" layer="94" />
              <wire x1="0" y1="0" x2="0" y2="10" width="0.254" layer="94" />
              <wire x1="38.1" y1="0" x2="38.1" y2="10" width="0.254" layer="94" />
              <text x="0" y="12.54" size="1.778" layer="95">&gt;NAME</text>
              <text x="0" y="-3.81" size="1.27" layer="96">&gt;VALUE</text>
              <pin name="P1" x="-5.08" y="7.46" visible="pin" length="middle" direction="pas" rot="R0" />
              <text x="1.27" y="7.96" size="0.95" layer="94" align="bottom-left">1</text>
              <pin name="P2" x="43.18" y="7.46" visible="pin" length="middle" direction="pas" rot="R180" />
              <text x="36.83" y="7.96" size="0.95" layer="94" align="bottom-right">2</text>
            </symbol>
            <symbol name="C2">
              <wire x1="0" y1="0" x2="38.1" y2="0" width="0.254" layer="94" />
              <wire x1="0" y1="10" x2="38.1" y2="10" width="0.254" layer="94" />
              <wire x1="0" y1="0" x2="0" y2="10" width="0.254" layer="94" />
              <wire x1="38.1" y1="0" x2="38.1" y2="10" width="0.254" layer="94" />
              <text x="0" y="12.54" size="1.778" layer="95">&gt;NAME</text>
              <text x="0" y="-3.81" size="1.27" layer="96">&gt;VALUE</text>
              <pin name="P1" x="-5.08" y="7.46" visible="pin" length="middle" direction="pas" rot="R0" />
              <text x="1.27" y="7.96" size="0.95" layer="94" align="bottom-left">1</text>
              <pin name="P2" x="43.18" y="7.46" visible="pin" length="middle" direction="pas" rot="R180" />
              <text x="36.83" y="7.96" size="0.95" layer="94" align="bottom-right">2</text>
            </symbol>
            <symbol name="C3">
              <wire x1="0" y1="0" x2="38.1" y2="0" width="0.254" layer="94" />
              <wire x1="0" y1="10" x2="38.1" y2="10" width="0.254" layer="94" />
              <wire x1="0" y1="0" x2="0" y2="10" width="0.254" layer="94" />
              <wire x1="38.1" y1="0" x2="38.1" y2="10" width="0.254" layer="94" />
              <text x="0" y="12.54" size="1.778" layer="95">&gt;NAME</text>
              <text x="0" y="-3.81" size="1.27" layer="96">&gt;VALUE</text>
              <pin name="P1" x="-5.08" y="7.46" visible="pin" length="middle" direction="pas" rot="R0" />
              <text x="1.27" y="7.96" size="0.95" layer="94" align="bottom-left">1</text>
              <pin name="P2" x="43.18" y="7.46" visible="pin" length="middle" direction="pas" rot="R180" />
              <text x="36.83" y="7.96" size="0.95" layer="94" align="bottom-right">2</text>
            </symbol>
            <symbol name="C4">
              <wire x1="0" y1="0" x2="38.1" y2="0" width="0.254" layer="94" />
              <wire x1="0" y1="10" x2="38.1" y2="10" width="0.254" layer="94" />
              <wire x1="0" y1="0" x2="0" y2="10" width="0.254" layer="94" />
              <wire x1="38.1" y1="0" x2="38.1" y2="10" width="0.254" layer="94" />
              <text x="0" y="12.54" size="1.778" layer="95">&gt;NAME</text>
              <text x="0" y="-3.81" size="1.27" layer="96">&gt;VALUE</text>
              <pin name="P1" x="-5.08" y="7.46" visible="pin" length="middle" direction="pas" rot="R0" />
              <text x="1.27" y="7.96" size="0.95" layer="94" align="bottom-left">1</text>
              <pin name="P2" x="43.18" y="7.46" visible="pin" length="middle" direction="pas" rot="R180" />
              <text x="36.83" y="7.96" size="0.95" layer="94" align="bottom-right">2</text>
            </symbol>
            <symbol name="C5">
              <wire x1="0" y1="0" x2="38.1" y2="0" width="0.254" layer="94" />
              <wire x1="0" y1="10" x2="38.1" y2="10" width="0.254" layer="94" />
              <wire x1="0" y1="0" x2="0" y2="10" width="0.254" layer="94" />
              <wire x1="38.1" y1="0" x2="38.1" y2="10" width="0.254" layer="94" />
              <text x="0" y="12.54" size="1.778" layer="95">&gt;NAME</text>
              <text x="0" y="-3.81" size="1.27" layer="96">&gt;VALUE</text>
              <pin name="P1" x="-5.08" y="7.46" visible="pin" length="middle" direction="pas" rot="R0" />
              <text x="1.27" y="7.96" size="0.95" layer="94" align="bottom-left">1</text>
              <pin name="P2" x="43.18" y="7.46" visible="pin" length="middle" direction="pas" rot="R180" />
              <text x="36.83" y="7.96" size="0.95" layer="94" align="bottom-right">2</text>
            </symbol>
            <symbol name="C6">
              <wire x1="0" y1="0" x2="38.1" y2="0" width="0.254" layer="94" />
              <wire x1="0" y1="10" x2="38.1" y2="10" width="0.254" layer="94" />
              <wire x1="0" y1="0" x2="0" y2="10" width="0.254" layer="94" />
              <wire x1="38.1" y1="0" x2="38.1" y2="10" width="0.254" layer="94" />
              <text x="0" y="12.54" size="1.778" layer="95">&gt;NAME</text>
              <text x="0" y="-3.81" size="1.27" layer="96">&gt;VALUE</text>
              <pin name="P1" x="-5.08" y="7.46" visible="pin" length="middle" direction="pas" rot="R0" />
              <text x="1.27" y="7.96" size="0.95" layer="94" align="bottom-left">1</text>
              <pin name="P2" x="43.18" y="7.46" visible="pin" length="middle" direction="pas" rot="R180" />
              <text x="36.83" y="7.96" size="0.95" layer="94" align="bottom-right">2</text>
            </symbol>
            <symbol name="C7">
              <wire x1="0" y1="0" x2="38.1" y2="0" width="0.254" layer="94" />
              <wire x1="0" y1="10" x2="38.1" y2="10" width="0.254" layer="94" />
              <wire x1="0" y1="0" x2="0" y2="10" width="0.254" layer="94" />
              <wire x1="38.1" y1="0" x2="38.1" y2="10" width="0.254" layer="94" />
              <text x="0" y="12.54" size="1.778" layer="95">&gt;NAME</text>
              <text x="0" y="-3.81" size="1.27" layer="96">&gt;VALUE</text>
              <pin name="P1" x="-5.08" y="7.46" visible="pin" length="middle" direction="pas" rot="R0" />
              <text x="1.27" y="7.96" size="0.95" layer="94" align="bottom-left">1</text>
              <pin name="P2" x="43.18" y="7.46" visible="pin" length="middle" direction="pas" rot="R180" />
              <text x="36.83" y="7.96" size="0.95" layer="94" align="bottom-right">2</text>
            </symbol>
            <symbol name="C8">
              <wire x1="0" y1="0" x2="38.1" y2="0" width="0.254" layer="94" />
              <wire x1="0" y1="10" x2="38.1" y2="10" width="0.254" layer="94" />
              <wire x1="0" y1="0" x2="0" y2="10" width="0.254" layer="94" />
              <wire x1="38.1" y1="0" x2="38.1" y2="10" width="0.254" layer="94" />
              <text x="0" y="12.54" size="1.778" layer="95">&gt;NAME</text>
              <text x="0" y="-3.81" size="1.27" layer="96">&gt;VALUE</text>
              <pin name="P1" x="-5.08" y="7.46" visible="pin" length="middle" direction="pas" rot="R0" />
              <text x="1.27" y="7.96" size="0.95" layer="94" align="bottom-left">1</text>
              <pin name="P2" x="43.18" y="7.46" visible="pin" length="middle" direction="pas" rot="R180" />
              <text x="36.83" y="7.96" size="0.95" layer="94" align="bottom-right">2</text>
            </symbol>
            <symbol name="C9">
              <wire x1="0" y1="0" x2="38.1" y2="0" width="0.254" layer="94" />
              <wire x1="0" y1="10" x2="38.1" y2="10" width="0.254" layer="94" />
              <wire x1="0" y1="0" x2="0" y2="10" width="0.254" layer="94" />
              <wire x1="38.1" y1="0" x2="38.1" y2="10" width="0.254" layer="94" />
              <text x="0" y="12.54" size="1.778" layer="95">&gt;NAME</text>
              <text x="0" y="-3.81" size="1.27" layer="96">&gt;VALUE</text>
              <pin name="P1" x="-5.08" y="7.46" visible="pin" length="middle" direction="pas" rot="R0" />
              <text x="1.27" y="7.96" size="0.95" layer="94" align="bottom-left">1</text>
              <pin name="P2" x="43.18" y="7.46" visible="pin" length="middle" direction="pas" rot="R180" />
              <text x="36.83" y="7.96" size="0.95" layer="94" align="bottom-right">2</text>
            </symbol>
            <symbol name="C10">
              <wire x1="0" y1="0" x2="38.1" y2="0" width="0.254" layer="94" />
              <wire x1="0" y1="10" x2="38.1" y2="10" width="0.254" layer="94" />
              <wire x1="0" y1="0" x2="0" y2="10" width="0.254" layer="94" />
              <wire x1="38.1" y1="0" x2="38.1" y2="10" width="0.254" layer="94" />
              <text x="0" y="12.54" size="1.778" layer="95">&gt;NAME</text>
              <text x="0" y="-3.81" size="1.27" layer="96">&gt;VALUE</text>
              <pin name="P1" x="-5.08" y="7.46" visible="pin" length="middle" direction="pas" rot="R0" />
              <text x="1.27" y="7.96" size="0.95" layer="94" align="bottom-left">1</text>
              <pin name="P2" x="43.18" y="7.46" visible="pin" length="middle" direction="pas" rot="R180" />
              <text x="36.83" y="7.96" size="0.95" layer="94" align="bottom-right">2</text>
            </symbol>
            <symbol name="C11">
              <wire x1="0" y1="0" x2="38.1" y2="0" width="0.254" layer="94" />
              <wire x1="0" y1="10" x2="38.1" y2="10" width="0.254" layer="94" />
              <wire x1="0" y1="0" x2="0" y2="10" width="0.254" layer="94" />
              <wire x1="38.1" y1="0" x2="38.1" y2="10" width="0.254" layer="94" />
              <text x="0" y="12.54" size="1.778" layer="95">&gt;NAME</text>
              <text x="0" y="-3.81" size="1.27" layer="96">&gt;VALUE</text>
              <pin name="P1" x="-5.08" y="7.46" visible="pin" length="middle" direction="pas" rot="R0" />
              <text x="1.27" y="7.96" size="0.95" layer="94" align="bottom-left">1</text>
              <pin name="P2" x="43.18" y="7.46" visible="pin" length="middle" direction="pas" rot="R180" />
              <text x="36.83" y="7.96" size="0.95" layer="94" align="bottom-right">2</text>
            </symbol>
            <symbol name="C12">
              <wire x1="0" y1="0" x2="38.1" y2="0" width="0.254" layer="94" />
              <wire x1="0" y1="10" x2="38.1" y2="10" width="0.254" layer="94" />
              <wire x1="0" y1="0" x2="0" y2="10" width="0.254" layer="94" />
              <wire x1="38.1" y1="0" x2="38.1" y2="10" width="0.254" layer="94" />
              <text x="0" y="12.54" size="1.778" layer="95">&gt;NAME</text>
              <text x="0" y="-3.81" size="1.27" layer="96">&gt;VALUE</text>
              <pin name="P1" x="-5.08" y="7.46" visible="pin" length="middle" direction="pas" rot="R0" />
              <text x="1.27" y="7.96" size="0.95" layer="94" align="bottom-left">1</text>
              <pin name="P2" x="43.18" y="7.46" visible="pin" length="middle" direction="pas" rot="R180" />
              <text x="36.83" y="7.96" size="0.95" layer="94" align="bottom-right">2</text>
            </symbol>
            <symbol name="C13">
              <wire x1="0" y1="0" x2="38.1" y2="0" width="0.254" layer="94" />
              <wire x1="0" y1="10" x2="38.1" y2="10" width="0.254" layer="94" />
              <wire x1="0" y1="0" x2="0" y2="10" width="0.254" layer="94" />
              <wire x1="38.1" y1="0" x2="38.1" y2="10" width="0.254" layer="94" />
              <text x="0" y="12.54" size="1.778" layer="95">&gt;NAME</text>
              <text x="0" y="-3.81" size="1.27" layer="96">&gt;VALUE</text>
              <pin name="P1" x="-5.08" y="7.46" visible="pin" length="middle" direction="pas" rot="R0" />
              <text x="1.27" y="7.96" size="0.95" layer="94" align="bottom-left">1</text>
              <pin name="P2" x="43.18" y="7.46" visible="pin" length="middle" direction="pas" rot="R180" />
              <text x="36.83" y="7.96" size="0.95" layer="94" align="bottom-right">2</text>
            </symbol>
            <symbol name="C14">
              <wire x1="0" y1="0" x2="38.1" y2="0" width="0.254" layer="94" />
              <wire x1="0" y1="10" x2="38.1" y2="10" width="0.254" layer="94" />
              <wire x1="0" y1="0" x2="0" y2="10" width="0.254" layer="94" />
              <wire x1="38.1" y1="0" x2="38.1" y2="10" width="0.254" layer="94" />
              <text x="0" y="12.54" size="1.778" layer="95">&gt;NAME</text>
              <text x="0" y="-3.81" size="1.27" layer="96">&gt;VALUE</text>
              <pin name="P1" x="-5.08" y="7.46" visible="pin" length="middle" direction="pas" rot="R0" />
              <text x="1.27" y="7.96" size="0.95" layer="94" align="bottom-left">1</text>
              <pin name="P2" x="43.18" y="7.46" visible="pin" length="middle" direction="pas" rot="R180" />
              <text x="36.83" y="7.96" size="0.95" layer="94" align="bottom-right">2</text>
            </symbol>
            <symbol name="C15">
              <wire x1="0" y1="0" x2="38.1" y2="0" width="0.254" layer="94" />
              <wire x1="0" y1="10" x2="38.1" y2="10" width="0.254" layer="94" />
              <wire x1="0" y1="0" x2="0" y2="10" width="0.254" layer="94" />
              <wire x1="38.1" y1="0" x2="38.1" y2="10" width="0.254" layer="94" />
              <text x="0" y="12.54" size="1.778" layer="95">&gt;NAME</text>
              <text x="0" y="-3.81" size="1.27" layer="96">&gt;VALUE</text>
              <pin name="P1" x="-5.08" y="7.46" visible="pin" length="middle" direction="pas" rot="R0" />
              <text x="1.27" y="7.96" size="0.95" layer="94" align="bottom-left">1</text>
              <pin name="P2" x="43.18" y="7.46" visible="pin" length="middle" direction="pas" rot="R180" />
              <text x="36.83" y="7.96" size="0.95" layer="94" align="bottom-right">2</text>
            </symbol>
            <symbol name="C16">
              <wire x1="0" y1="0" x2="38.1" y2="0" width="0.254" layer="94" />
              <wire x1="0" y1="10" x2="38.1" y2="10" width="0.254" layer="94" />
              <wire x1="0" y1="0" x2="0" y2="10" width="0.254" layer="94" />
              <wire x1="38.1" y1="0" x2="38.1" y2="10" width="0.254" layer="94" />
              <text x="0" y="12.54" size="1.778" layer="95">&gt;NAME</text>
              <text x="0" y="-3.81" size="1.27" layer="96">&gt;VALUE</text>
              <pin name="P1" x="-5.08" y="7.46" visible="pin" length="middle" direction="pas" rot="R0" />
              <text x="1.27" y="7.96" size="0.95" layer="94" align="bottom-left">1</text>
              <pin name="P2" x="43.18" y="7.46" visible="pin" length="middle" direction="pas" rot="R180" />
              <text x="36.83" y="7.96" size="0.95" layer="94" align="bottom-right">2</text>
            </symbol>
            <symbol name="C17">
              <wire x1="0" y1="0" x2="38.1" y2="0" width="0.254" layer="94" />
              <wire x1="0" y1="10" x2="38.1" y2="10" width="0.254" layer="94" />
              <wire x1="0" y1="0" x2="0" y2="10" width="0.254" layer="94" />
              <wire x1="38.1" y1="0" x2="38.1" y2="10" width="0.254" layer="94" />
              <text x="0" y="12.54" size="1.778" layer="95">&gt;NAME</text>
              <text x="0" y="-3.81" size="1.27" layer="96">&gt;VALUE</text>
              <pin name="P1" x="-5.08" y="7.46" visible="pin" length="middle" direction="pas" rot="R0" />
              <text x="1.27" y="7.96" size="0.95" layer="94" align="bottom-left">1</text>
              <pin name="P2" x="43.18" y="7.46" visible="pin" length="middle" direction="pas" rot="R180" />
              <text x="36.83" y="7.96" size="0.95" layer="94" align="bottom-right">2</text>
            </symbol>
            <symbol name="C18">
              <wire x1="0" y1="0" x2="38.1" y2="0" width="0.254" layer="94" />
              <wire x1="0" y1="10" x2="38.1" y2="10" width="0.254" layer="94" />
              <wire x1="0" y1="0" x2="0" y2="10" width="0.254" layer="94" />
              <wire x1="38.1" y1="0" x2="38.1" y2="10" width="0.254" layer="94" />
              <text x="0" y="12.54" size="1.778" layer="95">&gt;NAME</text>
              <text x="0" y="-3.81" size="1.27" layer="96">&gt;VALUE</text>
              <pin name="P1" x="-5.08" y="7.46" visible="pin" length="middle" direction="pas" rot="R0" />
              <text x="1.27" y="7.96" size="0.95" layer="94" align="bottom-left">1</text>
              <pin name="P2" x="43.18" y="7.46" visible="pin" length="middle" direction="pas" rot="R180" />
              <text x="36.83" y="7.96" size="0.95" layer="94" align="bottom-right">2</text>
            </symbol>
            <symbol name="C19">
              <wire x1="0" y1="0" x2="38.1" y2="0" width="0.254" layer="94" />
              <wire x1="0" y1="10" x2="38.1" y2="10" width="0.254" layer="94" />
              <wire x1="0" y1="0" x2="0" y2="10" width="0.254" layer="94" />
              <wire x1="38.1" y1="0" x2="38.1" y2="10" width="0.254" layer="94" />
              <text x="0" y="12.54" size="1.778" layer="95">&gt;NAME</text>
              <text x="0" y="-3.81" size="1.27" layer="96">&gt;VALUE</text>
              <pin name="P1" x="-5.08" y="7.46" visible="pin" length="middle" direction="pas" rot="R0" />
              <text x="1.27" y="7.96" size="0.95" layer="94" align="bottom-left">1</text>
              <pin name="P2" x="43.18" y="7.46" visible="pin" length="middle" direction="pas" rot="R180" />
              <text x="36.83" y="7.96" size="0.95" layer="94" align="bottom-right">2</text>
            </symbol>
            <symbol name="C20">
              <wire x1="0" y1="0" x2="38.1" y2="0" width="0.254" layer="94" />
              <wire x1="0" y1="10" x2="38.1" y2="10" width="0.254" layer="94" />
              <wire x1="0" y1="0" x2="0" y2="10" width="0.254" layer="94" />
              <wire x1="38.1" y1="0" x2="38.1" y2="10" width="0.254" layer="94" />
              <text x="0" y="12.54" size="1.778" layer="95">&gt;NAME</text>
              <text x="0" y="-3.81" size="1.27" layer="96">&gt;VALUE</text>
              <pin name="P1" x="-5.08" y="7.46" visible="pin" length="middle" direction="pas" rot="R0" />
              <text x="1.27" y="7.96" size="0.95" layer="94" align="bottom-left">1</text>
              <pin name="P2" x="43.18" y="7.46" visible="pin" length="middle" direction="pas" rot="R180" />
              <text x="36.83" y="7.96" size="0.95" layer="94" align="bottom-right">2</text>
            </symbol>
            <symbol name="C21">
              <wire x1="0" y1="0" x2="38.1" y2="0" width="0.254" layer="94" />
              <wire x1="0" y1="10" x2="38.1" y2="10" width="0.254" layer="94" />
              <wire x1="0" y1="0" x2="0" y2="10" width="0.254" layer="94" />
              <wire x1="38.1" y1="0" x2="38.1" y2="10" width="0.254" layer="94" />
              <text x="0" y="12.54" size="1.778" layer="95">&gt;NAME</text>
              <text x="0" y="-3.81" size="1.27" layer="96">&gt;VALUE</text>
              <pin name="P1" x="-5.08" y="7.46" visible="pin" length="middle" direction="pas" rot="R0" />
              <text x="1.27" y="7.96" size="0.95" layer="94" align="bottom-left">1</text>
              <pin name="P2" x="43.18" y="7.46" visible="pin" length="middle" direction="pas" rot="R180" />
              <text x="36.83" y="7.96" size="0.95" layer="94" align="bottom-right">2</text>
            </symbol>
            <symbol name="C22">
              <wire x1="0" y1="0" x2="38.1" y2="0" width="0.254" layer="94" />
              <wire x1="0" y1="10" x2="38.1" y2="10" width="0.254" layer="94" />
              <wire x1="0" y1="0" x2="0" y2="10" width="0.254" layer="94" />
              <wire x1="38.1" y1="0" x2="38.1" y2="10" width="0.254" layer="94" />
              <text x="0" y="12.54" size="1.778" layer="95">&gt;NAME</text>
              <text x="0" y="-3.81" size="1.27" layer="96">&gt;VALUE</text>
              <pin name="P1" x="-5.08" y="7.46" visible="pin" length="middle" direction="pas" rot="R0" />
              <text x="1.27" y="7.96" size="0.95" layer="94" align="bottom-left">1</text>
              <pin name="P2" x="43.18" y="7.46" visible="pin" length="middle" direction="pas" rot="R180" />
              <text x="36.83" y="7.96" size="0.95" layer="94" align="bottom-right">2</text>
            </symbol>
            <symbol name="C23">
              <wire x1="0" y1="0" x2="38.1" y2="0" width="0.254" layer="94" />
              <wire x1="0" y1="10" x2="38.1" y2="10" width="0.254" layer="94" />
              <wire x1="0" y1="0" x2="0" y2="10" width="0.254" layer="94" />
              <wire x1="38.1" y1="0" x2="38.1" y2="10" width="0.254" layer="94" />
              <text x="0" y="12.54" size="1.778" layer="95">&gt;NAME</text>
              <text x="0" y="-3.81" size="1.27" layer="96">&gt;VALUE</text>
              <pin name="P1" x="-5.08" y="7.46" visible="pin" length="middle" direction="pas" rot="R0" />
              <text x="1.27" y="7.96" size="0.95" layer="94" align="bottom-left">1</text>
              <pin name="P2" x="43.18" y="7.46" visible="pin" length="middle" direction="pas" rot="R180" />
              <text x="36.83" y="7.96" size="0.95" layer="94" align="bottom-right">2</text>
            </symbol>
            <symbol name="C24">
              <wire x1="0" y1="0" x2="38.1" y2="0" width="0.254" layer="94" />
              <wire x1="0" y1="10" x2="38.1" y2="10" width="0.254" layer="94" />
              <wire x1="0" y1="0" x2="0" y2="10" width="0.254" layer="94" />
              <wire x1="38.1" y1="0" x2="38.1" y2="10" width="0.254" layer="94" />
              <text x="0" y="12.54" size="1.778" layer="95">&gt;NAME</text>
              <text x="0" y="-3.81" size="1.27" layer="96">&gt;VALUE</text>
              <pin name="P1" x="-5.08" y="7.46" visible="pin" length="middle" direction="pas" rot="R0" />
              <text x="1.27" y="7.96" size="0.95" layer="94" align="bottom-left">1</text>
              <pin name="P2" x="43.18" y="7.46" visible="pin" length="middle" direction="pas" rot="R180" />
              <text x="36.83" y="7.96" size="0.95" layer="94" align="bottom-right">2</text>
            </symbol>
            <symbol name="C25">
              <wire x1="0" y1="0" x2="38.1" y2="0" width="0.254" layer="94" />
              <wire x1="0" y1="10" x2="38.1" y2="10" width="0.254" layer="94" />
              <wire x1="0" y1="0" x2="0" y2="10" width="0.254" layer="94" />
              <wire x1="38.1" y1="0" x2="38.1" y2="10" width="0.254" layer="94" />
              <text x="0" y="12.54" size="1.778" layer="95">&gt;NAME</text>
              <text x="0" y="-3.81" size="1.27" layer="96">&gt;VALUE</text>
              <pin name="P1" x="-5.08" y="7.46" visible="pin" length="middle" direction="pas" rot="R0" />
              <text x="1.27" y="7.96" size="0.95" layer="94" align="bottom-left">1</text>
              <pin name="P2" x="43.18" y="7.46" visible="pin" length="middle" direction="pas" rot="R180" />
              <text x="36.83" y="7.96" size="0.95" layer="94" align="bottom-right">2</text>
            </symbol>
            <symbol name="C26">
              <wire x1="0" y1="0" x2="38.1" y2="0" width="0.254" layer="94" />
              <wire x1="0" y1="10" x2="38.1" y2="10" width="0.254" layer="94" />
              <wire x1="0" y1="0" x2="0" y2="10" width="0.254" layer="94" />
              <wire x1="38.1" y1="0" x2="38.1" y2="10" width="0.254" layer="94" />
              <text x="0" y="12.54" size="1.778" layer="95">&gt;NAME</text>
              <text x="0" y="-3.81" size="1.27" layer="96">&gt;VALUE</text>
              <pin name="P1" x="-5.08" y="7.46" visible="pin" length="middle" direction="pas" rot="R0" />
              <text x="1.27" y="7.96" size="0.95" layer="94" align="bottom-left">1</text>
              <pin name="P2" x="43.18" y="7.46" visible="pin" length="middle" direction="pas" rot="R180" />
              <text x="36.83" y="7.96" size="0.95" layer="94" align="bottom-right">2</text>
            </symbol>
            <symbol name="C27">
              <wire x1="0" y1="0" x2="38.1" y2="0" width="0.254" layer="94" />
              <wire x1="0" y1="10" x2="38.1" y2="10" width="0.254" layer="94" />
              <wire x1="0" y1="0" x2="0" y2="10" width="0.254" layer="94" />
              <wire x1="38.1" y1="0" x2="38.1" y2="10" width="0.254" layer="94" />
              <text x="0" y="12.54" size="1.778" layer="95">&gt;NAME</text>
              <text x="0" y="-3.81" size="1.27" layer="96">&gt;VALUE</text>
              <pin name="P1" x="-5.08" y="7.46" visible="pin" length="middle" direction="pas" rot="R0" />
              <text x="1.27" y="7.96" size="0.95" layer="94" align="bottom-left">1</text>
              <pin name="P2" x="43.18" y="7.46" visible="pin" length="middle" direction="pas" rot="R180" />
              <text x="36.83" y="7.96" size="0.95" layer="94" align="bottom-right">2</text>
            </symbol>
            <symbol name="C28">
              <wire x1="0" y1="0" x2="38.1" y2="0" width="0.254" layer="94" />
              <wire x1="0" y1="10" x2="38.1" y2="10" width="0.254" layer="94" />
              <wire x1="0" y1="0" x2="0" y2="10" width="0.254" layer="94" />
              <wire x1="38.1" y1="0" x2="38.1" y2="10" width="0.254" layer="94" />
              <text x="0" y="12.54" size="1.778" layer="95">&gt;NAME</text>
              <text x="0" y="-3.81" size="1.27" layer="96">&gt;VALUE</text>
              <pin name="P1" x="-5.08" y="7.46" visible="pin" length="middle" direction="pas" rot="R0" />
              <text x="1.27" y="7.96" size="0.95" layer="94" align="bottom-left">1</text>
              <pin name="P2" x="43.18" y="7.46" visible="pin" length="middle" direction="pas" rot="R180" />
              <text x="36.83" y="7.96" size="0.95" layer="94" align="bottom-right">2</text>
            </symbol>
            <symbol name="J2">
              <wire x1="0" y1="0" x2="38.1" y2="0" width="0.254" layer="94" />
              <wire x1="0" y1="10.16" x2="38.1" y2="10.16" width="0.254" layer="94" />
              <wire x1="0" y1="0" x2="0" y2="10.16" width="0.254" layer="94" />
              <wire x1="38.1" y1="0" x2="38.1" y2="10.16" width="0.254" layer="94" />
              <text x="0" y="12.7" size="1.778" layer="95">&gt;NAME</text>
              <text x="0" y="-3.81" size="1.27" layer="96">&gt;VALUE</text>
              <pin name="P1" x="-5.08" y="7.62" visible="pin" length="middle" direction="pas" rot="R0" />
              <text x="1.27" y="8.120000000000001" size="0.95" layer="94" align="bottom-left">GND</text>
              <pin name="P2" x="-5.08" y="5.08" visible="pin" length="middle" direction="pas" rot="R0" />
              <text x="1.27" y="5.58" size="0.95" layer="94" align="bottom-left">3V3_SENSE</text>
              <pin name="P3" x="-5.08" y="2.54" visible="pin" length="middle" direction="pas" rot="R0" />
              <text x="1.27" y="3.04" size="0.95" layer="94" align="bottom-left">SWDIO</text>
              <pin name="P4" x="43.18" y="7.62" visible="pin" length="middle" direction="pas" rot="R180" />
              <text x="36.83" y="8.120000000000001" size="0.95" layer="94" align="bottom-right">SWCLK</text>
              <pin name="P5" x="43.18" y="5.08" visible="pin" length="middle" direction="pas" rot="R180" />
              <text x="36.83" y="5.58" size="0.95" layer="94" align="bottom-right">RUN</text>
            </symbol>
            <symbol name="TP1">
              <wire x1="0" y1="0" x2="38.1" y2="0" width="0.254" layer="94" />
              <wire x1="0" y1="10" x2="38.1" y2="10" width="0.254" layer="94" />
              <wire x1="0" y1="0" x2="0" y2="10" width="0.254" layer="94" />
              <wire x1="38.1" y1="0" x2="38.1" y2="10" width="0.254" layer="94" />
              <text x="0" y="12.54" size="1.778" layer="95">&gt;NAME</text>
              <text x="0" y="-3.81" size="1.27" layer="96">&gt;VALUE</text>
              <pin name="P1" x="-5.08" y="7.46" visible="pin" length="middle" direction="pas" rot="R0" />
              <text x="1.27" y="7.96" size="0.95" layer="94" align="bottom-left">5V</text>
            </symbol>
            <symbol name="TP2">
              <wire x1="0" y1="0" x2="38.1" y2="0" width="0.254" layer="94" />
              <wire x1="0" y1="10" x2="38.1" y2="10" width="0.254" layer="94" />
              <wire x1="0" y1="0" x2="0" y2="10" width="0.254" layer="94" />
              <wire x1="38.1" y1="0" x2="38.1" y2="10" width="0.254" layer="94" />
              <text x="0" y="12.54" size="1.778" layer="95">&gt;NAME</text>
              <text x="0" y="-3.81" size="1.27" layer="96">&gt;VALUE</text>
              <pin name="P1" x="-5.08" y="7.46" visible="pin" length="middle" direction="pas" rot="R0" />
              <text x="1.27" y="7.96" size="0.95" layer="94" align="bottom-left">GND</text>
            </symbol>
            <symbol name="TP3">
              <wire x1="0" y1="0" x2="38.1" y2="0" width="0.254" layer="94" />
              <wire x1="0" y1="10" x2="38.1" y2="10" width="0.254" layer="94" />
              <wire x1="0" y1="0" x2="0" y2="10" width="0.254" layer="94" />
              <wire x1="38.1" y1="0" x2="38.1" y2="10" width="0.254" layer="94" />
              <text x="0" y="12.54" size="1.778" layer="95">&gt;NAME</text>
              <text x="0" y="-3.81" size="1.27" layer="96">&gt;VALUE</text>
              <pin name="P1" x="-5.08" y="7.46" visible="pin" length="middle" direction="pas" rot="R0" />
              <text x="1.27" y="7.96" size="0.95" layer="94" align="bottom-left">3V3</text>
            </symbol>
            <symbol name="TP4">
              <wire x1="0" y1="0" x2="38.1" y2="0" width="0.254" layer="94" />
              <wire x1="0" y1="10" x2="38.1" y2="10" width="0.254" layer="94" />
              <wire x1="0" y1="0" x2="0" y2="10" width="0.254" layer="94" />
              <wire x1="38.1" y1="0" x2="38.1" y2="10" width="0.254" layer="94" />
              <text x="0" y="12.54" size="1.778" layer="95">&gt;NAME</text>
              <text x="0" y="-3.81" size="1.27" layer="96">&gt;VALUE</text>
              <pin name="P1" x="-5.08" y="7.46" visible="pin" length="middle" direction="pas" rot="R0" />
              <text x="1.27" y="7.96" size="0.95" layer="94" align="bottom-left">1V1</text>
            </symbol>
            <symbol name="TP5">
              <wire x1="0" y1="0" x2="38.1" y2="0" width="0.254" layer="94" />
              <wire x1="0" y1="10" x2="38.1" y2="10" width="0.254" layer="94" />
              <wire x1="0" y1="0" x2="0" y2="10" width="0.254" layer="94" />
              <wire x1="38.1" y1="0" x2="38.1" y2="10" width="0.254" layer="94" />
              <text x="0" y="12.54" size="1.778" layer="95">&gt;NAME</text>
              <text x="0" y="-3.81" size="1.27" layer="96">&gt;VALUE</text>
              <pin name="P1" x="-5.08" y="7.46" visible="pin" length="middle" direction="pas" rot="R0" />
              <text x="1.27" y="7.96" size="0.95" layer="94" align="bottom-left">RD_5V</text>
            </symbol>
            <symbol name="TP6">
              <wire x1="0" y1="0" x2="38.1" y2="0" width="0.254" layer="94" />
              <wire x1="0" y1="10" x2="38.1" y2="10" width="0.254" layer="94" />
              <wire x1="0" y1="0" x2="0" y2="10" width="0.254" layer="94" />
              <wire x1="38.1" y1="0" x2="38.1" y2="10" width="0.254" layer="94" />
              <text x="0" y="12.54" size="1.778" layer="95">&gt;NAME</text>
              <text x="0" y="-3.81" size="1.27" layer="96">&gt;VALUE</text>
              <pin name="P1" x="-5.08" y="7.46" visible="pin" length="middle" direction="pas" rot="R0" />
              <text x="1.27" y="7.96" size="0.95" layer="94" align="bottom-left">OE_N</text>
            </symbol>
            <symbol name="TP7">
              <wire x1="0" y1="0" x2="38.1" y2="0" width="0.254" layer="94" />
              <wire x1="0" y1="10" x2="38.1" y2="10" width="0.254" layer="94" />
              <wire x1="0" y1="0" x2="0" y2="10" width="0.254" layer="94" />
              <wire x1="38.1" y1="0" x2="38.1" y2="10" width="0.254" layer="94" />
              <text x="0" y="12.54" size="1.778" layer="95">&gt;NAME</text>
              <text x="0" y="-3.81" size="1.27" layer="96">&gt;VALUE</text>
              <pin name="P1" x="-5.08" y="7.46" visible="pin" length="middle" direction="pas" rot="R0" />
              <text x="1.27" y="7.96" size="0.95" layer="94" align="bottom-left">INVALID</text>
            </symbol>
            <symbol name="TP8">
              <wire x1="0" y1="0" x2="38.1" y2="0" width="0.254" layer="94" />
              <wire x1="0" y1="10" x2="38.1" y2="10" width="0.254" layer="94" />
              <wire x1="0" y1="0" x2="0" y2="10" width="0.254" layer="94" />
              <wire x1="38.1" y1="0" x2="38.1" y2="10" width="0.254" layer="94" />
              <text x="0" y="12.54" size="1.778" layer="95">&gt;NAME</text>
              <text x="0" y="-3.81" size="1.27" layer="96">&gt;VALUE</text>
              <pin name="P1" x="-5.08" y="7.46" visible="pin" length="middle" direction="pas" rot="R0" />
              <text x="1.27" y="7.96" size="0.95" layer="94" align="bottom-left">READY_N</text>
            </symbol>
            <symbol name="JP1">
              <wire x1="0" y1="0" x2="38.1" y2="0" width="0.254" layer="94" />
              <wire x1="0" y1="10" x2="38.1" y2="10" width="0.254" layer="94" />
              <wire x1="0" y1="0" x2="0" y2="10" width="0.254" layer="94" />
              <wire x1="38.1" y1="0" x2="38.1" y2="10" width="0.254" layer="94" />
              <text x="0" y="12.54" size="1.778" layer="95">&gt;NAME</text>
              <text x="0" y="-3.81" size="1.27" layer="96">&gt;VALUE</text>
              <pin name="P1" x="-5.08" y="7.46" visible="pin" length="middle" direction="pas" rot="R0" />
              <text x="1.27" y="7.96" size="0.95" layer="94" align="bottom-left">BUFFER</text>
              <pin name="P2" x="-5.08" y="4.92" visible="pin" length="middle" direction="pas" rot="R0" />
              <text x="1.27" y="5.42" size="0.95" layer="94" align="bottom-left">MCU</text>
              <pin name="P3" x="43.18" y="7.46" visible="pin" length="middle" direction="pas" rot="R180" />
              <text x="36.83" y="7.96" size="0.95" layer="94" align="bottom-right">DIRECT</text>
            </symbol>
            <symbol name="JP2">
              <wire x1="0" y1="0" x2="38.1" y2="0" width="0.254" layer="94" />
              <wire x1="0" y1="10" x2="38.1" y2="10" width="0.254" layer="94" />
              <wire x1="0" y1="0" x2="0" y2="10" width="0.254" layer="94" />
              <wire x1="38.1" y1="0" x2="38.1" y2="10" width="0.254" layer="94" />
              <text x="0" y="12.54" size="1.778" layer="95">&gt;NAME</text>
              <text x="0" y="-3.81" size="1.27" layer="96">&gt;VALUE</text>
              <pin name="P1" x="-5.08" y="7.46" visible="pin" length="middle" direction="pas" rot="R0" />
              <text x="1.27" y="7.96" size="0.95" layer="94" align="bottom-left">BUFFER</text>
              <pin name="P2" x="-5.08" y="4.92" visible="pin" length="middle" direction="pas" rot="R0" />
              <text x="1.27" y="5.42" size="0.95" layer="94" align="bottom-left">MCU</text>
              <pin name="P3" x="43.18" y="7.46" visible="pin" length="middle" direction="pas" rot="R180" />
              <text x="36.83" y="7.96" size="0.95" layer="94" align="bottom-right">DIRECT</text>
            </symbol>
            <symbol name="JP3">
              <wire x1="0" y1="0" x2="38.1" y2="0" width="0.254" layer="94" />
              <wire x1="0" y1="10" x2="38.1" y2="10" width="0.254" layer="94" />
              <wire x1="0" y1="0" x2="0" y2="10" width="0.254" layer="94" />
              <wire x1="38.1" y1="0" x2="38.1" y2="10" width="0.254" layer="94" />
              <text x="0" y="12.54" size="1.778" layer="95">&gt;NAME</text>
              <text x="0" y="-3.81" size="1.27" layer="96">&gt;VALUE</text>
              <pin name="P1" x="-5.08" y="7.46" visible="pin" length="middle" direction="pas" rot="R0" />
              <text x="1.27" y="7.96" size="0.95" layer="94" align="bottom-left">BUFFER</text>
              <pin name="P2" x="-5.08" y="4.92" visible="pin" length="middle" direction="pas" rot="R0" />
              <text x="1.27" y="5.42" size="0.95" layer="94" align="bottom-left">MCU</text>
              <pin name="P3" x="43.18" y="7.46" visible="pin" length="middle" direction="pas" rot="R180" />
              <text x="36.83" y="7.96" size="0.95" layer="94" align="bottom-right">DIRECT</text>
            </symbol>
            <symbol name="JP4">
              <wire x1="0" y1="0" x2="38.1" y2="0" width="0.254" layer="94" />
              <wire x1="0" y1="10" x2="38.1" y2="10" width="0.254" layer="94" />
              <wire x1="0" y1="0" x2="0" y2="10" width="0.254" layer="94" />
              <wire x1="38.1" y1="0" x2="38.1" y2="10" width="0.254" layer="94" />
              <text x="0" y="12.54" size="1.778" layer="95">&gt;NAME</text>
              <text x="0" y="-3.81" size="1.27" layer="96">&gt;VALUE</text>
              <pin name="P1" x="-5.08" y="7.46" visible="pin" length="middle" direction="pas" rot="R0" />
              <text x="1.27" y="7.96" size="0.95" layer="94" align="bottom-left">BUFFER</text>
              <pin name="P2" x="-5.08" y="4.92" visible="pin" length="middle" direction="pas" rot="R0" />
              <text x="1.27" y="5.42" size="0.95" layer="94" align="bottom-left">MCU</text>
              <pin name="P3" x="43.18" y="7.46" visible="pin" length="middle" direction="pas" rot="R180" />
              <text x="36.83" y="7.96" size="0.95" layer="94" align="bottom-right">DIRECT</text>
            </symbol>
            <symbol name="JP5">
              <wire x1="0" y1="0" x2="38.1" y2="0" width="0.254" layer="94" />
              <wire x1="0" y1="10" x2="38.1" y2="10" width="0.254" layer="94" />
              <wire x1="0" y1="0" x2="0" y2="10" width="0.254" layer="94" />
              <wire x1="38.1" y1="0" x2="38.1" y2="10" width="0.254" layer="94" />
              <text x="0" y="12.54" size="1.778" layer="95">&gt;NAME</text>
              <text x="0" y="-3.81" size="1.27" layer="96">&gt;VALUE</text>
              <pin name="P1" x="-5.08" y="7.46" visible="pin" length="middle" direction="pas" rot="R0" />
              <text x="1.27" y="7.96" size="0.95" layer="94" align="bottom-left">BUFFER</text>
              <pin name="P2" x="-5.08" y="4.92" visible="pin" length="middle" direction="pas" rot="R0" />
              <text x="1.27" y="5.42" size="0.95" layer="94" align="bottom-left">MCU</text>
              <pin name="P3" x="43.18" y="7.46" visible="pin" length="middle" direction="pas" rot="R180" />
              <text x="36.83" y="7.96" size="0.95" layer="94" align="bottom-right">DIRECT</text>
            </symbol>
            <symbol name="JP6">
              <wire x1="0" y1="0" x2="38.1" y2="0" width="0.254" layer="94" />
              <wire x1="0" y1="10" x2="38.1" y2="10" width="0.254" layer="94" />
              <wire x1="0" y1="0" x2="0" y2="10" width="0.254" layer="94" />
              <wire x1="38.1" y1="0" x2="38.1" y2="10" width="0.254" layer="94" />
              <text x="0" y="12.54" size="1.778" layer="95">&gt;NAME</text>
              <text x="0" y="-3.81" size="1.27" layer="96">&gt;VALUE</text>
              <pin name="P1" x="-5.08" y="7.46" visible="pin" length="middle" direction="pas" rot="R0" />
              <text x="1.27" y="7.96" size="0.95" layer="94" align="bottom-left">BUFFER</text>
              <pin name="P2" x="-5.08" y="4.92" visible="pin" length="middle" direction="pas" rot="R0" />
              <text x="1.27" y="5.42" size="0.95" layer="94" align="bottom-left">MCU</text>
              <pin name="P3" x="43.18" y="7.46" visible="pin" length="middle" direction="pas" rot="R180" />
              <text x="36.83" y="7.96" size="0.95" layer="94" align="bottom-right">DIRECT</text>
            </symbol>
            <symbol name="JP7">
              <wire x1="0" y1="0" x2="38.1" y2="0" width="0.254" layer="94" />
              <wire x1="0" y1="10" x2="38.1" y2="10" width="0.254" layer="94" />
              <wire x1="0" y1="0" x2="0" y2="10" width="0.254" layer="94" />
              <wire x1="38.1" y1="0" x2="38.1" y2="10" width="0.254" layer="94" />
              <text x="0" y="12.54" size="1.778" layer="95">&gt;NAME</text>
              <text x="0" y="-3.81" size="1.27" layer="96">&gt;VALUE</text>
              <pin name="P1" x="-5.08" y="7.46" visible="pin" length="middle" direction="pas" rot="R0" />
              <text x="1.27" y="7.96" size="0.95" layer="94" align="bottom-left">BUFFER</text>
              <pin name="P2" x="-5.08" y="4.92" visible="pin" length="middle" direction="pas" rot="R0" />
              <text x="1.27" y="5.42" size="0.95" layer="94" align="bottom-left">MCU</text>
              <pin name="P3" x="43.18" y="7.46" visible="pin" length="middle" direction="pas" rot="R180" />
              <text x="36.83" y="7.96" size="0.95" layer="94" align="bottom-right">DIRECT</text>
            </symbol>
            <symbol name="JP8">
              <wire x1="0" y1="0" x2="38.1" y2="0" width="0.254" layer="94" />
              <wire x1="0" y1="10" x2="38.1" y2="10" width="0.254" layer="94" />
              <wire x1="0" y1="0" x2="0" y2="10" width="0.254" layer="94" />
              <wire x1="38.1" y1="0" x2="38.1" y2="10" width="0.254" layer="94" />
              <text x="0" y="12.54" size="1.778" layer="95">&gt;NAME</text>
              <text x="0" y="-3.81" size="1.27" layer="96">&gt;VALUE</text>
              <pin name="P1" x="-5.08" y="7.46" visible="pin" length="middle" direction="pas" rot="R0" />
              <text x="1.27" y="7.96" size="0.95" layer="94" align="bottom-left">BUFFER</text>
              <pin name="P2" x="-5.08" y="4.92" visible="pin" length="middle" direction="pas" rot="R0" />
              <text x="1.27" y="5.42" size="0.95" layer="94" align="bottom-left">MCU</text>
              <pin name="P3" x="43.18" y="7.46" visible="pin" length="middle" direction="pas" rot="R180" />
              <text x="36.83" y="7.96" size="0.95" layer="94" align="bottom-right">DIRECT</text>
            </symbol>
            <symbol name="JP9">
              <wire x1="0" y1="0" x2="38.1" y2="0" width="0.254" layer="94" />
              <wire x1="0" y1="10" x2="38.1" y2="10" width="0.254" layer="94" />
              <wire x1="0" y1="0" x2="0" y2="10" width="0.254" layer="94" />
              <wire x1="38.1" y1="0" x2="38.1" y2="10" width="0.254" layer="94" />
              <text x="0" y="12.54" size="1.778" layer="95">&gt;NAME</text>
              <text x="0" y="-3.81" size="1.27" layer="96">&gt;VALUE</text>
              <pin name="P1" x="-5.08" y="7.46" visible="pin" length="middle" direction="pas" rot="R0" />
              <text x="1.27" y="7.96" size="0.95" layer="94" align="bottom-left">BUFFER</text>
              <pin name="P2" x="-5.08" y="4.92" visible="pin" length="middle" direction="pas" rot="R0" />
              <text x="1.27" y="5.42" size="0.95" layer="94" align="bottom-left">MCU</text>
              <pin name="P3" x="43.18" y="7.46" visible="pin" length="middle" direction="pas" rot="R180" />
              <text x="36.83" y="7.96" size="0.95" layer="94" align="bottom-right">DIRECT</text>
            </symbol>
            <symbol name="JP10">
              <wire x1="0" y1="0" x2="38.1" y2="0" width="0.254" layer="94" />
              <wire x1="0" y1="10" x2="38.1" y2="10" width="0.254" layer="94" />
              <wire x1="0" y1="0" x2="0" y2="10" width="0.254" layer="94" />
              <wire x1="38.1" y1="0" x2="38.1" y2="10" width="0.254" layer="94" />
              <text x="0" y="12.54" size="1.778" layer="95">&gt;NAME</text>
              <text x="0" y="-3.81" size="1.27" layer="96">&gt;VALUE</text>
              <pin name="P1" x="-5.08" y="7.46" visible="pin" length="middle" direction="pas" rot="R0" />
              <text x="1.27" y="7.96" size="0.95" layer="94" align="bottom-left">BUFFER</text>
              <pin name="P2" x="-5.08" y="4.92" visible="pin" length="middle" direction="pas" rot="R0" />
              <text x="1.27" y="5.42" size="0.95" layer="94" align="bottom-left">MCU</text>
              <pin name="P3" x="43.18" y="7.46" visible="pin" length="middle" direction="pas" rot="R180" />
              <text x="36.83" y="7.96" size="0.95" layer="94" align="bottom-right">DIRECT</text>
            </symbol>
            <symbol name="JP11">
              <wire x1="0" y1="0" x2="38.1" y2="0" width="0.254" layer="94" />
              <wire x1="0" y1="10" x2="38.1" y2="10" width="0.254" layer="94" />
              <wire x1="0" y1="0" x2="0" y2="10" width="0.254" layer="94" />
              <wire x1="38.1" y1="0" x2="38.1" y2="10" width="0.254" layer="94" />
              <text x="0" y="12.54" size="1.778" layer="95">&gt;NAME</text>
              <text x="0" y="-3.81" size="1.27" layer="96">&gt;VALUE</text>
              <pin name="P1" x="-5.08" y="7.46" visible="pin" length="middle" direction="pas" rot="R0" />
              <text x="1.27" y="7.96" size="0.95" layer="94" align="bottom-left">BUFFER</text>
              <pin name="P2" x="-5.08" y="4.92" visible="pin" length="middle" direction="pas" rot="R0" />
              <text x="1.27" y="5.42" size="0.95" layer="94" align="bottom-left">MCU</text>
              <pin name="P3" x="43.18" y="7.46" visible="pin" length="middle" direction="pas" rot="R180" />
              <text x="36.83" y="7.96" size="0.95" layer="94" align="bottom-right">DIRECT</text>
            </symbol>
            <symbol name="JP12">
              <wire x1="0" y1="0" x2="38.1" y2="0" width="0.254" layer="94" />
              <wire x1="0" y1="10" x2="38.1" y2="10" width="0.254" layer="94" />
              <wire x1="0" y1="0" x2="0" y2="10" width="0.254" layer="94" />
              <wire x1="38.1" y1="0" x2="38.1" y2="10" width="0.254" layer="94" />
              <text x="0" y="12.54" size="1.778" layer="95">&gt;NAME</text>
              <text x="0" y="-3.81" size="1.27" layer="96">&gt;VALUE</text>
              <pin name="P1" x="-5.08" y="7.46" visible="pin" length="middle" direction="pas" rot="R0" />
              <text x="1.27" y="7.96" size="0.95" layer="94" align="bottom-left">BUFFER</text>
              <pin name="P2" x="-5.08" y="4.92" visible="pin" length="middle" direction="pas" rot="R0" />
              <text x="1.27" y="5.42" size="0.95" layer="94" align="bottom-left">MCU</text>
              <pin name="P3" x="43.18" y="7.46" visible="pin" length="middle" direction="pas" rot="R180" />
              <text x="36.83" y="7.96" size="0.95" layer="94" align="bottom-right">DIRECT</text>
            </symbol>
            <symbol name="JP13">
              <wire x1="0" y1="0" x2="38.1" y2="0" width="0.254" layer="94" />
              <wire x1="0" y1="10" x2="38.1" y2="10" width="0.254" layer="94" />
              <wire x1="0" y1="0" x2="0" y2="10" width="0.254" layer="94" />
              <wire x1="38.1" y1="0" x2="38.1" y2="10" width="0.254" layer="94" />
              <text x="0" y="12.54" size="1.778" layer="95">&gt;NAME</text>
              <text x="0" y="-3.81" size="1.27" layer="96">&gt;VALUE</text>
              <pin name="P1" x="-5.08" y="7.46" visible="pin" length="middle" direction="pas" rot="R0" />
              <text x="1.27" y="7.96" size="0.95" layer="94" align="bottom-left">BUFFER</text>
              <pin name="P2" x="-5.08" y="4.92" visible="pin" length="middle" direction="pas" rot="R0" />
              <text x="1.27" y="5.42" size="0.95" layer="94" align="bottom-left">MCU</text>
              <pin name="P3" x="43.18" y="7.46" visible="pin" length="middle" direction="pas" rot="R180" />
              <text x="36.83" y="7.96" size="0.95" layer="94" align="bottom-right">DIRECT</text>
            </symbol>
            <symbol name="JP14">
              <wire x1="0" y1="0" x2="38.1" y2="0" width="0.254" layer="94" />
              <wire x1="0" y1="10" x2="38.1" y2="10" width="0.254" layer="94" />
              <wire x1="0" y1="0" x2="0" y2="10" width="0.254" layer="94" />
              <wire x1="38.1" y1="0" x2="38.1" y2="10" width="0.254" layer="94" />
              <text x="0" y="12.54" size="1.778" layer="95">&gt;NAME</text>
              <text x="0" y="-3.81" size="1.27" layer="96">&gt;VALUE</text>
              <pin name="P1" x="-5.08" y="7.46" visible="pin" length="middle" direction="pas" rot="R0" />
              <text x="1.27" y="7.96" size="0.95" layer="94" align="bottom-left">BUFFER</text>
              <pin name="P2" x="-5.08" y="4.92" visible="pin" length="middle" direction="pas" rot="R0" />
              <text x="1.27" y="5.42" size="0.95" layer="94" align="bottom-left">MCU</text>
              <pin name="P3" x="43.18" y="7.46" visible="pin" length="middle" direction="pas" rot="R180" />
              <text x="36.83" y="7.96" size="0.95" layer="94" align="bottom-right">DIRECT</text>
            </symbol>
            <symbol name="JP15">
              <wire x1="0" y1="0" x2="38.1" y2="0" width="0.254" layer="94" />
              <wire x1="0" y1="10" x2="38.1" y2="10" width="0.254" layer="94" />
              <wire x1="0" y1="0" x2="0" y2="10" width="0.254" layer="94" />
              <wire x1="38.1" y1="0" x2="38.1" y2="10" width="0.254" layer="94" />
              <text x="0" y="12.54" size="1.778" layer="95">&gt;NAME</text>
              <text x="0" y="-3.81" size="1.27" layer="96">&gt;VALUE</text>
              <pin name="P1" x="-5.08" y="7.46" visible="pin" length="middle" direction="pas" rot="R0" />
              <text x="1.27" y="7.96" size="0.95" layer="94" align="bottom-left">BUFFER</text>
              <pin name="P2" x="-5.08" y="4.92" visible="pin" length="middle" direction="pas" rot="R0" />
              <text x="1.27" y="5.42" size="0.95" layer="94" align="bottom-left">MCU</text>
              <pin name="P3" x="43.18" y="7.46" visible="pin" length="middle" direction="pas" rot="R180" />
              <text x="36.83" y="7.96" size="0.95" layer="94" align="bottom-right">DIRECT</text>
            </symbol>
            <symbol name="JP16">
              <wire x1="0" y1="0" x2="38.1" y2="0" width="0.254" layer="94" />
              <wire x1="0" y1="10" x2="38.1" y2="10" width="0.254" layer="94" />
              <wire x1="0" y1="0" x2="0" y2="10" width="0.254" layer="94" />
              <wire x1="38.1" y1="0" x2="38.1" y2="10" width="0.254" layer="94" />
              <text x="0" y="12.54" size="1.778" layer="95">&gt;NAME</text>
              <text x="0" y="-3.81" size="1.27" layer="96">&gt;VALUE</text>
              <pin name="P1" x="-5.08" y="7.46" visible="pin" length="middle" direction="pas" rot="R0" />
              <text x="1.27" y="7.96" size="0.95" layer="94" align="bottom-left">BUFFER</text>
              <pin name="P2" x="-5.08" y="4.92" visible="pin" length="middle" direction="pas" rot="R0" />
              <text x="1.27" y="5.42" size="0.95" layer="94" align="bottom-left">MCU</text>
              <pin name="P3" x="43.18" y="7.46" visible="pin" length="middle" direction="pas" rot="R180" />
              <text x="36.83" y="7.96" size="0.95" layer="94" align="bottom-right">DIRECT</text>
            </symbol>
            <symbol name="JP17">
              <wire x1="0" y1="0" x2="38.1" y2="0" width="0.254" layer="94" />
              <wire x1="0" y1="10" x2="38.1" y2="10" width="0.254" layer="94" />
              <wire x1="0" y1="0" x2="0" y2="10" width="0.254" layer="94" />
              <wire x1="38.1" y1="0" x2="38.1" y2="10" width="0.254" layer="94" />
              <text x="0" y="12.54" size="1.778" layer="95">&gt;NAME</text>
              <text x="0" y="-3.81" size="1.27" layer="96">&gt;VALUE</text>
              <pin name="P1" x="-5.08" y="7.46" visible="pin" length="middle" direction="pas" rot="R0" />
              <text x="1.27" y="7.96" size="0.95" layer="94" align="bottom-left">BUFFER</text>
              <pin name="P2" x="-5.08" y="4.92" visible="pin" length="middle" direction="pas" rot="R0" />
              <text x="1.27" y="5.42" size="0.95" layer="94" align="bottom-left">MCU</text>
              <pin name="P3" x="43.18" y="7.46" visible="pin" length="middle" direction="pas" rot="R180" />
              <text x="36.83" y="7.96" size="0.95" layer="94" align="bottom-right">DIRECT</text>
            </symbol>
          </symbols>
          <devicesets>
            <deviceset name="U1" prefix="U">
              <gates>
                <gate name="G$1" symbol="U1" x="0" y="0" />
              </gates>
              <devices>
                <device name="">
                  <technologies>
                    <technology name="" />
                  </technologies>
                </device>
              </devices>
            </deviceset>
            <deviceset name="J1" prefix="J">
              <gates>
                <gate name="G$1" symbol="J1" x="0" y="0" />
              </gates>
              <devices>
                <device name="">
                  <technologies>
                    <technology name="" />
                  </technologies>
                </device>
              </devices>
            </deviceset>
            <deviceset name="U2" prefix="U">
              <gates>
                <gate name="G$1" symbol="U2" x="0" y="0" />
              </gates>
              <devices>
                <device name="">
                  <technologies>
                    <technology name="" />
                  </technologies>
                </device>
              </devices>
            </deviceset>
            <deviceset name="U3" prefix="U">
              <gates>
                <gate name="G$1" symbol="U3" x="0" y="0" />
              </gates>
              <devices>
                <device name="">
                  <technologies>
                    <technology name="" />
                  </technologies>
                </device>
              </devices>
            </deviceset>
            <deviceset name="U4" prefix="U">
              <gates>
                <gate name="G$1" symbol="U4" x="0" y="0" />
              </gates>
              <devices>
                <device name="">
                  <technologies>
                    <technology name="" />
                  </technologies>
                </device>
              </devices>
            </deviceset>
            <deviceset name="U5" prefix="U">
              <gates>
                <gate name="G$1" symbol="U5" x="0" y="0" />
              </gates>
              <devices>
                <device name="">
                  <technologies>
                    <technology name="" />
                  </technologies>
                </device>
              </devices>
            </deviceset>
            <deviceset name="U6" prefix="U">
              <gates>
                <gate name="G$1" symbol="U6" x="0" y="0" />
              </gates>
              <devices>
                <device name="">
                  <technologies>
                    <technology name="" />
                  </technologies>
                </device>
              </devices>
            </deviceset>
            <deviceset name="U7" prefix="U">
              <gates>
                <gate name="G$1" symbol="U7" x="0" y="0" />
              </gates>
              <devices>
                <device name="">
                  <technologies>
                    <technology name="" />
                  </technologies>
                </device>
              </devices>
            </deviceset>
            <deviceset name="U8" prefix="U">
              <gates>
                <gate name="G$1" symbol="U8" x="0" y="0" />
              </gates>
              <devices>
                <device name="">
                  <technologies>
                    <technology name="" />
                  </technologies>
                </device>
              </devices>
            </deviceset>
            <deviceset name="Q1" prefix="Q">
              <gates>
                <gate name="G$1" symbol="Q1" x="0" y="0" />
              </gates>
              <devices>
                <device name="">
                  <technologies>
                    <technology name="" />
                  </technologies>
                </device>
              </devices>
            </deviceset>
            <deviceset name="Q2" prefix="Q">
              <gates>
                <gate name="G$1" symbol="Q2" x="0" y="0" />
              </gates>
              <devices>
                <device name="">
                  <technologies>
                    <technology name="" />
                  </technologies>
                </device>
              </devices>
            </deviceset>
            <deviceset name="Y1" prefix="Y">
              <gates>
                <gate name="G$1" symbol="Y1" x="0" y="0" />
              </gates>
              <devices>
                <device name="">
                  <technologies>
                    <technology name="" />
                  </technologies>
                </device>
              </devices>
            </deviceset>
            <deviceset name="R1" prefix="R">
              <gates>
                <gate name="G$1" symbol="R1" x="0" y="0" />
              </gates>
              <devices>
                <device name="">
                  <technologies>
                    <technology name="" />
                  </technologies>
                </device>
              </devices>
            </deviceset>
            <deviceset name="R2" prefix="R">
              <gates>
                <gate name="G$1" symbol="R2" x="0" y="0" />
              </gates>
              <devices>
                <device name="">
                  <technologies>
                    <technology name="" />
                  </technologies>
                </device>
              </devices>
            </deviceset>
            <deviceset name="R3" prefix="R">
              <gates>
                <gate name="G$1" symbol="R3" x="0" y="0" />
              </gates>
              <devices>
                <device name="">
                  <technologies>
                    <technology name="" />
                  </technologies>
                </device>
              </devices>
            </deviceset>
            <deviceset name="R4" prefix="R">
              <gates>
                <gate name="G$1" symbol="R4" x="0" y="0" />
              </gates>
              <devices>
                <device name="">
                  <technologies>
                    <technology name="" />
                  </technologies>
                </device>
              </devices>
            </deviceset>
            <deviceset name="R5" prefix="R">
              <gates>
                <gate name="G$1" symbol="R5" x="0" y="0" />
              </gates>
              <devices>
                <device name="">
                  <technologies>
                    <technology name="" />
                  </technologies>
                </device>
              </devices>
            </deviceset>
            <deviceset name="R6" prefix="R">
              <gates>
                <gate name="G$1" symbol="R6" x="0" y="0" />
              </gates>
              <devices>
                <device name="">
                  <technologies>
                    <technology name="" />
                  </technologies>
                </device>
              </devices>
            </deviceset>
            <deviceset name="R7" prefix="R">
              <gates>
                <gate name="G$1" symbol="R7" x="0" y="0" />
              </gates>
              <devices>
                <device name="">
                  <technologies>
                    <technology name="" />
                  </technologies>
                </device>
              </devices>
            </deviceset>
            <deviceset name="R8" prefix="R">
              <gates>
                <gate name="G$1" symbol="R8" x="0" y="0" />
              </gates>
              <devices>
                <device name="">
                  <technologies>
                    <technology name="" />
                  </technologies>
                </device>
              </devices>
            </deviceset>
            <deviceset name="R9" prefix="R">
              <gates>
                <gate name="G$1" symbol="R9" x="0" y="0" />
              </gates>
              <devices>
                <device name="">
                  <technologies>
                    <technology name="" />
                  </technologies>
                </device>
              </devices>
            </deviceset>
            <deviceset name="R10" prefix="R">
              <gates>
                <gate name="G$1" symbol="R10" x="0" y="0" />
              </gates>
              <devices>
                <device name="">
                  <technologies>
                    <technology name="" />
                  </technologies>
                </device>
              </devices>
            </deviceset>
            <deviceset name="R11" prefix="R">
              <gates>
                <gate name="G$1" symbol="R11" x="0" y="0" />
              </gates>
              <devices>
                <device name="">
                  <technologies>
                    <technology name="" />
                  </technologies>
                </device>
              </devices>
            </deviceset>
            <deviceset name="R12" prefix="R">
              <gates>
                <gate name="G$1" symbol="R12" x="0" y="0" />
              </gates>
              <devices>
                <device name="">
                  <technologies>
                    <technology name="" />
                  </technologies>
                </device>
              </devices>
            </deviceset>
            <deviceset name="R13" prefix="R">
              <gates>
                <gate name="G$1" symbol="R13" x="0" y="0" />
              </gates>
              <devices>
                <device name="">
                  <technologies>
                    <technology name="" />
                  </technologies>
                </device>
              </devices>
            </deviceset>
            <deviceset name="R14" prefix="R">
              <gates>
                <gate name="G$1" symbol="R14" x="0" y="0" />
              </gates>
              <devices>
                <device name="">
                  <technologies>
                    <technology name="" />
                  </technologies>
                </device>
              </devices>
            </deviceset>
            <deviceset name="R15" prefix="R">
              <gates>
                <gate name="G$1" symbol="R15" x="0" y="0" />
              </gates>
              <devices>
                <device name="">
                  <technologies>
                    <technology name="" />
                  </technologies>
                </device>
              </devices>
            </deviceset>
            <deviceset name="R16" prefix="R">
              <gates>
                <gate name="G$1" symbol="R16" x="0" y="0" />
              </gates>
              <devices>
                <device name="">
                  <technologies>
                    <technology name="" />
                  </technologies>
                </device>
              </devices>
            </deviceset>
            <deviceset name="R17" prefix="R">
              <gates>
                <gate name="G$1" symbol="R17" x="0" y="0" />
              </gates>
              <devices>
                <device name="">
                  <technologies>
                    <technology name="" />
                  </technologies>
                </device>
              </devices>
            </deviceset>
            <deviceset name="R18" prefix="R">
              <gates>
                <gate name="G$1" symbol="R18" x="0" y="0" />
              </gates>
              <devices>
                <device name="">
                  <technologies>
                    <technology name="" />
                  </technologies>
                </device>
              </devices>
            </deviceset>
            <deviceset name="L1" prefix="L">
              <gates>
                <gate name="G$1" symbol="L1" x="0" y="0" />
              </gates>
              <devices>
                <device name="">
                  <technologies>
                    <technology name="" />
                  </technologies>
                </device>
              </devices>
            </deviceset>
            <deviceset name="C1" prefix="C">
              <gates>
                <gate name="G$1" symbol="C1" x="0" y="0" />
              </gates>
              <devices>
                <device name="">
                  <technologies>
                    <technology name="" />
                  </technologies>
                </device>
              </devices>
            </deviceset>
            <deviceset name="C2" prefix="C">
              <gates>
                <gate name="G$1" symbol="C2" x="0" y="0" />
              </gates>
              <devices>
                <device name="">
                  <technologies>
                    <technology name="" />
                  </technologies>
                </device>
              </devices>
            </deviceset>
            <deviceset name="C3" prefix="C">
              <gates>
                <gate name="G$1" symbol="C3" x="0" y="0" />
              </gates>
              <devices>
                <device name="">
                  <technologies>
                    <technology name="" />
                  </technologies>
                </device>
              </devices>
            </deviceset>
            <deviceset name="C4" prefix="C">
              <gates>
                <gate name="G$1" symbol="C4" x="0" y="0" />
              </gates>
              <devices>
                <device name="">
                  <technologies>
                    <technology name="" />
                  </technologies>
                </device>
              </devices>
            </deviceset>
            <deviceset name="C5" prefix="C">
              <gates>
                <gate name="G$1" symbol="C5" x="0" y="0" />
              </gates>
              <devices>
                <device name="">
                  <technologies>
                    <technology name="" />
                  </technologies>
                </device>
              </devices>
            </deviceset>
            <deviceset name="C6" prefix="C">
              <gates>
                <gate name="G$1" symbol="C6" x="0" y="0" />
              </gates>
              <devices>
                <device name="">
                  <technologies>
                    <technology name="" />
                  </technologies>
                </device>
              </devices>
            </deviceset>
            <deviceset name="C7" prefix="C">
              <gates>
                <gate name="G$1" symbol="C7" x="0" y="0" />
              </gates>
              <devices>
                <device name="">
                  <technologies>
                    <technology name="" />
                  </technologies>
                </device>
              </devices>
            </deviceset>
            <deviceset name="C8" prefix="C">
              <gates>
                <gate name="G$1" symbol="C8" x="0" y="0" />
              </gates>
              <devices>
                <device name="">
                  <technologies>
                    <technology name="" />
                  </technologies>
                </device>
              </devices>
            </deviceset>
            <deviceset name="C9" prefix="C">
              <gates>
                <gate name="G$1" symbol="C9" x="0" y="0" />
              </gates>
              <devices>
                <device name="">
                  <technologies>
                    <technology name="" />
                  </technologies>
                </device>
              </devices>
            </deviceset>
            <deviceset name="C10" prefix="C">
              <gates>
                <gate name="G$1" symbol="C10" x="0" y="0" />
              </gates>
              <devices>
                <device name="">
                  <technologies>
                    <technology name="" />
                  </technologies>
                </device>
              </devices>
            </deviceset>
            <deviceset name="C11" prefix="C">
              <gates>
                <gate name="G$1" symbol="C11" x="0" y="0" />
              </gates>
              <devices>
                <device name="">
                  <technologies>
                    <technology name="" />
                  </technologies>
                </device>
              </devices>
            </deviceset>
            <deviceset name="C12" prefix="C">
              <gates>
                <gate name="G$1" symbol="C12" x="0" y="0" />
              </gates>
              <devices>
                <device name="">
                  <technologies>
                    <technology name="" />
                  </technologies>
                </device>
              </devices>
            </deviceset>
            <deviceset name="C13" prefix="C">
              <gates>
                <gate name="G$1" symbol="C13" x="0" y="0" />
              </gates>
              <devices>
                <device name="">
                  <technologies>
                    <technology name="" />
                  </technologies>
                </device>
              </devices>
            </deviceset>
            <deviceset name="C14" prefix="C">
              <gates>
                <gate name="G$1" symbol="C14" x="0" y="0" />
              </gates>
              <devices>
                <device name="">
                  <technologies>
                    <technology name="" />
                  </technologies>
                </device>
              </devices>
            </deviceset>
            <deviceset name="C15" prefix="C">
              <gates>
                <gate name="G$1" symbol="C15" x="0" y="0" />
              </gates>
              <devices>
                <device name="">
                  <technologies>
                    <technology name="" />
                  </technologies>
                </device>
              </devices>
            </deviceset>
            <deviceset name="C16" prefix="C">
              <gates>
                <gate name="G$1" symbol="C16" x="0" y="0" />
              </gates>
              <devices>
                <device name="">
                  <technologies>
                    <technology name="" />
                  </technologies>
                </device>
              </devices>
            </deviceset>
            <deviceset name="C17" prefix="C">
              <gates>
                <gate name="G$1" symbol="C17" x="0" y="0" />
              </gates>
              <devices>
                <device name="">
                  <technologies>
                    <technology name="" />
                  </technologies>
                </device>
              </devices>
            </deviceset>
            <deviceset name="C18" prefix="C">
              <gates>
                <gate name="G$1" symbol="C18" x="0" y="0" />
              </gates>
              <devices>
                <device name="">
                  <technologies>
                    <technology name="" />
                  </technologies>
                </device>
              </devices>
            </deviceset>
            <deviceset name="C19" prefix="C">
              <gates>
                <gate name="G$1" symbol="C19" x="0" y="0" />
              </gates>
              <devices>
                <device name="">
                  <technologies>
                    <technology name="" />
                  </technologies>
                </device>
              </devices>
            </deviceset>
            <deviceset name="C20" prefix="C">
              <gates>
                <gate name="G$1" symbol="C20" x="0" y="0" />
              </gates>
              <devices>
                <device name="">
                  <technologies>
                    <technology name="" />
                  </technologies>
                </device>
              </devices>
            </deviceset>
            <deviceset name="C21" prefix="C">
              <gates>
                <gate name="G$1" symbol="C21" x="0" y="0" />
              </gates>
              <devices>
                <device name="">
                  <technologies>
                    <technology name="" />
                  </technologies>
                </device>
              </devices>
            </deviceset>
            <deviceset name="C22" prefix="C">
              <gates>
                <gate name="G$1" symbol="C22" x="0" y="0" />
              </gates>
              <devices>
                <device name="">
                  <technologies>
                    <technology name="" />
                  </technologies>
                </device>
              </devices>
            </deviceset>
            <deviceset name="C23" prefix="C">
              <gates>
                <gate name="G$1" symbol="C23" x="0" y="0" />
              </gates>
              <devices>
                <device name="">
                  <technologies>
                    <technology name="" />
                  </technologies>
                </device>
              </devices>
            </deviceset>
            <deviceset name="C24" prefix="C">
              <gates>
                <gate name="G$1" symbol="C24" x="0" y="0" />
              </gates>
              <devices>
                <device name="">
                  <technologies>
                    <technology name="" />
                  </technologies>
                </device>
              </devices>
            </deviceset>
            <deviceset name="C25" prefix="C">
              <gates>
                <gate name="G$1" symbol="C25" x="0" y="0" />
              </gates>
              <devices>
                <device name="">
                  <technologies>
                    <technology name="" />
                  </technologies>
                </device>
              </devices>
            </deviceset>
            <deviceset name="C26" prefix="C">
              <gates>
                <gate name="G$1" symbol="C26" x="0" y="0" />
              </gates>
              <devices>
                <device name="">
                  <technologies>
                    <technology name="" />
                  </technologies>
                </device>
              </devices>
            </deviceset>
            <deviceset name="C27" prefix="C">
              <gates>
                <gate name="G$1" symbol="C27" x="0" y="0" />
              </gates>
              <devices>
                <device name="">
                  <technologies>
                    <technology name="" />
                  </technologies>
                </device>
              </devices>
            </deviceset>
            <deviceset name="C28" prefix="C">
              <gates>
                <gate name="G$1" symbol="C28" x="0" y="0" />
              </gates>
              <devices>
                <device name="">
                  <technologies>
                    <technology name="" />
                  </technologies>
                </device>
              </devices>
            </deviceset>
            <deviceset name="J2" prefix="J">
              <gates>
                <gate name="G$1" symbol="J2" x="0" y="0" />
              </gates>
              <devices>
                <device name="">
                  <technologies>
                    <technology name="" />
                  </technologies>
                </device>
              </devices>
            </deviceset>
            <deviceset name="TP1" prefix="TP">
              <gates>
                <gate name="G$1" symbol="TP1" x="0" y="0" />
              </gates>
              <devices>
                <device name="">
                  <technologies>
                    <technology name="" />
                  </technologies>
                </device>
              </devices>
            </deviceset>
            <deviceset name="TP2" prefix="TP">
              <gates>
                <gate name="G$1" symbol="TP2" x="0" y="0" />
              </gates>
              <devices>
                <device name="">
                  <technologies>
                    <technology name="" />
                  </technologies>
                </device>
              </devices>
            </deviceset>
            <deviceset name="TP3" prefix="TP">
              <gates>
                <gate name="G$1" symbol="TP3" x="0" y="0" />
              </gates>
              <devices>
                <device name="">
                  <technologies>
                    <technology name="" />
                  </technologies>
                </device>
              </devices>
            </deviceset>
            <deviceset name="TP4" prefix="TP">
              <gates>
                <gate name="G$1" symbol="TP4" x="0" y="0" />
              </gates>
              <devices>
                <device name="">
                  <technologies>
                    <technology name="" />
                  </technologies>
                </device>
              </devices>
            </deviceset>
            <deviceset name="TP5" prefix="TP">
              <gates>
                <gate name="G$1" symbol="TP5" x="0" y="0" />
              </gates>
              <devices>
                <device name="">
                  <technologies>
                    <technology name="" />
                  </technologies>
                </device>
              </devices>
            </deviceset>
            <deviceset name="TP6" prefix="TP">
              <gates>
                <gate name="G$1" symbol="TP6" x="0" y="0" />
              </gates>
              <devices>
                <device name="">
                  <technologies>
                    <technology name="" />
                  </technologies>
                </device>
              </devices>
            </deviceset>
            <deviceset name="TP7" prefix="TP">
              <gates>
                <gate name="G$1" symbol="TP7" x="0" y="0" />
              </gates>
              <devices>
                <device name="">
                  <technologies>
                    <technology name="" />
                  </technologies>
                </device>
              </devices>
            </deviceset>
            <deviceset name="TP8" prefix="TP">
              <gates>
                <gate name="G$1" symbol="TP8" x="0" y="0" />
              </gates>
              <devices>
                <device name="">
                  <technologies>
                    <technology name="" />
                  </technologies>
                </device>
              </devices>
            </deviceset>
            <deviceset name="JP1" prefix="JP">
              <gates>
                <gate name="G$1" symbol="JP1" x="0" y="0" />
              </gates>
              <devices>
                <device name="" package="SJ3_P1.0_0.6x1.2">
                  <connects>
                    <connect gate="G$1" pin="P1" pad="1" />
                    <connect gate="G$1" pin="P2" pad="2" />
                    <connect gate="G$1" pin="P3" pad="3" />
                  </connects>
                  <technologies>
                    <technology name="" />
                  </technologies>
                </device>
              </devices>
            </deviceset>
            <deviceset name="JP2" prefix="JP">
              <gates>
                <gate name="G$1" symbol="JP2" x="0" y="0" />
              </gates>
              <devices>
                <device name="" package="SJ3_P1.0_0.6x1.2">
                  <connects>
                    <connect gate="G$1" pin="P1" pad="1" />
                    <connect gate="G$1" pin="P2" pad="2" />
                    <connect gate="G$1" pin="P3" pad="3" />
                  </connects>
                  <technologies>
                    <technology name="" />
                  </technologies>
                </device>
              </devices>
            </deviceset>
            <deviceset name="JP3" prefix="JP">
              <gates>
                <gate name="G$1" symbol="JP3" x="0" y="0" />
              </gates>
              <devices>
                <device name="" package="SJ3_P1.0_0.6x1.2">
                  <connects>
                    <connect gate="G$1" pin="P1" pad="1" />
                    <connect gate="G$1" pin="P2" pad="2" />
                    <connect gate="G$1" pin="P3" pad="3" />
                  </connects>
                  <technologies>
                    <technology name="" />
                  </technologies>
                </device>
              </devices>
            </deviceset>
            <deviceset name="JP4" prefix="JP">
              <gates>
                <gate name="G$1" symbol="JP4" x="0" y="0" />
              </gates>
              <devices>
                <device name="" package="SJ3_P1.0_0.6x1.2">
                  <connects>
                    <connect gate="G$1" pin="P1" pad="1" />
                    <connect gate="G$1" pin="P2" pad="2" />
                    <connect gate="G$1" pin="P3" pad="3" />
                  </connects>
                  <technologies>
                    <technology name="" />
                  </technologies>
                </device>
              </devices>
            </deviceset>
            <deviceset name="JP5" prefix="JP">
              <gates>
                <gate name="G$1" symbol="JP5" x="0" y="0" />
              </gates>
              <devices>
                <device name="" package="SJ3_P1.0_0.6x1.2">
                  <connects>
                    <connect gate="G$1" pin="P1" pad="1" />
                    <connect gate="G$1" pin="P2" pad="2" />
                    <connect gate="G$1" pin="P3" pad="3" />
                  </connects>
                  <technologies>
                    <technology name="" />
                  </technologies>
                </device>
              </devices>
            </deviceset>
            <deviceset name="JP6" prefix="JP">
              <gates>
                <gate name="G$1" symbol="JP6" x="0" y="0" />
              </gates>
              <devices>
                <device name="" package="SJ3_P1.0_0.6x1.2">
                  <connects>
                    <connect gate="G$1" pin="P1" pad="1" />
                    <connect gate="G$1" pin="P2" pad="2" />
                    <connect gate="G$1" pin="P3" pad="3" />
                  </connects>
                  <technologies>
                    <technology name="" />
                  </technologies>
                </device>
              </devices>
            </deviceset>
            <deviceset name="JP7" prefix="JP">
              <gates>
                <gate name="G$1" symbol="JP7" x="0" y="0" />
              </gates>
              <devices>
                <device name="" package="SJ3_P1.0_0.6x1.2">
                  <connects>
                    <connect gate="G$1" pin="P1" pad="1" />
                    <connect gate="G$1" pin="P2" pad="2" />
                    <connect gate="G$1" pin="P3" pad="3" />
                  </connects>
                  <technologies>
                    <technology name="" />
                  </technologies>
                </device>
              </devices>
            </deviceset>
            <deviceset name="JP8" prefix="JP">
              <gates>
                <gate name="G$1" symbol="JP8" x="0" y="0" />
              </gates>
              <devices>
                <device name="" package="SJ3_P1.0_0.6x1.2">
                  <connects>
                    <connect gate="G$1" pin="P1" pad="1" />
                    <connect gate="G$1" pin="P2" pad="2" />
                    <connect gate="G$1" pin="P3" pad="3" />
                  </connects>
                  <technologies>
                    <technology name="" />
                  </technologies>
                </device>
              </devices>
            </deviceset>
            <deviceset name="JP9" prefix="JP">
              <gates>
                <gate name="G$1" symbol="JP9" x="0" y="0" />
              </gates>
              <devices>
                <device name="" package="SJ3_P1.0_0.6x1.2">
                  <connects>
                    <connect gate="G$1" pin="P1" pad="1" />
                    <connect gate="G$1" pin="P2" pad="2" />
                    <connect gate="G$1" pin="P3" pad="3" />
                  </connects>
                  <technologies>
                    <technology name="" />
                  </technologies>
                </device>
              </devices>
            </deviceset>
            <deviceset name="JP10" prefix="JP">
              <gates>
                <gate name="G$1" symbol="JP10" x="0" y="0" />
              </gates>
              <devices>
                <device name="" package="SJ3_P1.0_0.6x1.2">
                  <connects>
                    <connect gate="G$1" pin="P1" pad="1" />
                    <connect gate="G$1" pin="P2" pad="2" />
                    <connect gate="G$1" pin="P3" pad="3" />
                  </connects>
                  <technologies>
                    <technology name="" />
                  </technologies>
                </device>
              </devices>
            </deviceset>
            <deviceset name="JP11" prefix="JP">
              <gates>
                <gate name="G$1" symbol="JP11" x="0" y="0" />
              </gates>
              <devices>
                <device name="" package="SJ3_P1.0_0.6x1.2">
                  <connects>
                    <connect gate="G$1" pin="P1" pad="1" />
                    <connect gate="G$1" pin="P2" pad="2" />
                    <connect gate="G$1" pin="P3" pad="3" />
                  </connects>
                  <technologies>
                    <technology name="" />
                  </technologies>
                </device>
              </devices>
            </deviceset>
            <deviceset name="JP12" prefix="JP">
              <gates>
                <gate name="G$1" symbol="JP12" x="0" y="0" />
              </gates>
              <devices>
                <device name="" package="SJ3_P1.0_0.6x1.2">
                  <connects>
                    <connect gate="G$1" pin="P1" pad="1" />
                    <connect gate="G$1" pin="P2" pad="2" />
                    <connect gate="G$1" pin="P3" pad="3" />
                  </connects>
                  <technologies>
                    <technology name="" />
                  </technologies>
                </device>
              </devices>
            </deviceset>
            <deviceset name="JP13" prefix="JP">
              <gates>
                <gate name="G$1" symbol="JP13" x="0" y="0" />
              </gates>
              <devices>
                <device name="" package="SJ3_P1.0_0.6x1.2">
                  <connects>
                    <connect gate="G$1" pin="P1" pad="1" />
                    <connect gate="G$1" pin="P2" pad="2" />
                    <connect gate="G$1" pin="P3" pad="3" />
                  </connects>
                  <technologies>
                    <technology name="" />
                  </technologies>
                </device>
              </devices>
            </deviceset>
            <deviceset name="JP14" prefix="JP">
              <gates>
                <gate name="G$1" symbol="JP14" x="0" y="0" />
              </gates>
              <devices>
                <device name="" package="SJ3_P1.0_0.6x1.2">
                  <connects>
                    <connect gate="G$1" pin="P1" pad="1" />
                    <connect gate="G$1" pin="P2" pad="2" />
                    <connect gate="G$1" pin="P3" pad="3" />
                  </connects>
                  <technologies>
                    <technology name="" />
                  </technologies>
                </device>
              </devices>
            </deviceset>
            <deviceset name="JP15" prefix="JP">
              <gates>
                <gate name="G$1" symbol="JP15" x="0" y="0" />
              </gates>
              <devices>
                <device name="" package="SJ3_P1.0_0.6x1.2">
                  <connects>
                    <connect gate="G$1" pin="P1" pad="1" />
                    <connect gate="G$1" pin="P2" pad="2" />
                    <connect gate="G$1" pin="P3" pad="3" />
                  </connects>
                  <technologies>
                    <technology name="" />
                  </technologies>
                </device>
              </devices>
            </deviceset>
            <deviceset name="JP16" prefix="JP">
              <gates>
                <gate name="G$1" symbol="JP16" x="0" y="0" />
              </gates>
              <devices>
                <device name="" package="SJ3_P1.0_0.6x1.2">
                  <connects>
                    <connect gate="G$1" pin="P1" pad="1" />
                    <connect gate="G$1" pin="P2" pad="2" />
                    <connect gate="G$1" pin="P3" pad="3" />
                  </connects>
                  <technologies>
                    <technology name="" />
                  </technologies>
                </device>
              </devices>
            </deviceset>
            <deviceset name="JP17" prefix="JP">
              <gates>
                <gate name="G$1" symbol="JP17" x="0" y="0" />
              </gates>
              <devices>
                <device name="" package="SJ3_P1.0_0.6x1.2">
                  <connects>
                    <connect gate="G$1" pin="P1" pad="1" />
                    <connect gate="G$1" pin="P2" pad="2" />
                    <connect gate="G$1" pin="P3" pad="3" />
                  </connects>
                  <technologies>
                    <technology name="" />
                  </technologies>
                </device>
              </devices>
            </deviceset>
          </devicesets>
        </library>
      </libraries>
      <attributes />
      <variantdefs />
      <classes>
        <class number="0" name="default" width="0" drill="0" />
      </classes>
      <parts>
        <part name="U1" library="GBC_ROM_REFERENCE" deviceset="U1" device="" value="RP2350B A4">
          <attribute name="FOOTPRINT_REQUIRED" value="QFN80_10x10_P0.4_EP" />
          <attribute name="DESIGN_STATUS" value="SCHEMATIC_ONLY_NOT_PCB" />
        </part>
        <part name="J1" library="GBC_ROM_REFERENCE" deviceset="J1" device="" value="GB_CART_32">
          <attribute name="FOOTPRINT_REQUIRED" value="GB_CART_CUSTOM" />
          <attribute name="DESIGN_STATUS" value="SCHEMATIC_ONLY_NOT_PCB" />
        </part>
        <part name="U2" library="GBC_ROM_REFERENCE" deviceset="U2" device="" value="SN74LVC244APWR">
          <attribute name="FOOTPRINT_REQUIRED" value="TSSOP20_P0.65" />
          <attribute name="DESIGN_STATUS" value="SCHEMATIC_ONLY_NOT_PCB" />
        </part>
        <part name="U3" library="GBC_ROM_REFERENCE" deviceset="U3" device="" value="SN74LVC244APWR">
          <attribute name="FOOTPRINT_REQUIRED" value="TSSOP20_P0.65" />
          <attribute name="DESIGN_STATUS" value="SCHEMATIC_ONLY_NOT_PCB" />
        </part>
        <part name="U4" library="GBC_ROM_REFERENCE" deviceset="U4" device="" value="SN74LVC1G17DBVR">
          <attribute name="FOOTPRINT_REQUIRED" value="SOT23_5" />
          <attribute name="DESIGN_STATUS" value="SCHEMATIC_ONLY_NOT_PCB" />
        </part>
        <part name="U5" library="GBC_ROM_REFERENCE" deviceset="U5" device="" value="SN74AHCT245PWR">
          <attribute name="FOOTPRINT_REQUIRED" value="TSSOP20_P0.65" />
          <attribute name="DESIGN_STATUS" value="SCHEMATIC_ONLY_NOT_PCB" />
        </part>
        <part name="U6" library="GBC_ROM_REFERENCE" deviceset="U6" device="" value="SN74AHCT32PWR">
          <attribute name="FOOTPRINT_REQUIRED" value="TSSOP14_P0.65" />
          <attribute name="DESIGN_STATUS" value="SCHEMATIC_ONLY_NOT_PCB" />
        </part>
        <part name="U7" library="GBC_ROM_REFERENCE" deviceset="U7" device="" value="W25Q16JVSSIQ">
          <attribute name="FOOTPRINT_REQUIRED" value="SOIC8_W5.3_P1.27" />
          <attribute name="DESIGN_STATUS" value="SCHEMATIC_ONLY_NOT_PCB" />
        </part>
        <part name="U8" library="GBC_ROM_REFERENCE" deviceset="U8" device="" value="TLV75533PDBVR">
          <attribute name="FOOTPRINT_REQUIRED" value="SOT23_5" />
          <attribute name="DESIGN_STATUS" value="SCHEMATIC_ONLY_NOT_PCB" />
        </part>
        <part name="Q1" library="GBC_ROM_REFERENCE" deviceset="Q1" device="" value="BSS138">
          <attribute name="FOOTPRINT_REQUIRED" value="SOT23" />
          <attribute name="DESIGN_STATUS" value="SCHEMATIC_ONLY_NOT_PCB" />
        </part>
        <part name="Q2" library="GBC_ROM_REFERENCE" deviceset="Q2" device="" value="BSS138">
          <attribute name="FOOTPRINT_REQUIRED" value="SOT23" />
          <attribute name="DESIGN_STATUS" value="SCHEMATIC_ONLY_NOT_PCB" />
        </part>
        <part name="Y1" library="GBC_ROM_REFERENCE" deviceset="Y1" device="" value="12MHz CL=8pF">
          <attribute name="FOOTPRINT_REQUIRED" value="XTAL_3225_4P" />
          <attribute name="DESIGN_STATUS" value="SCHEMATIC_ONLY_NOT_PCB" />
        </part>
        <part name="R1" library="GBC_ROM_REFERENCE" deviceset="R1" device="" value="33R">
          <attribute name="FOOTPRINT_REQUIRED" value="0402" />
          <attribute name="DESIGN_STATUS" value="SCHEMATIC_ONLY_NOT_PCB" />
        </part>
        <part name="R2" library="GBC_ROM_REFERENCE" deviceset="R2" device="" value="1k">
          <attribute name="FOOTPRINT_REQUIRED" value="0402" />
          <attribute name="DESIGN_STATUS" value="SCHEMATIC_ONLY_NOT_PCB" />
        </part>
        <part name="R3" library="GBC_ROM_REFERENCE" deviceset="R3" device="" value="10k">
          <attribute name="FOOTPRINT_REQUIRED" value="0402" />
          <attribute name="DESIGN_STATUS" value="SCHEMATIC_ONLY_NOT_PCB" />
        </part>
        <part name="R4" library="GBC_ROM_REFERENCE" deviceset="R4" device="" value="10k">
          <attribute name="FOOTPRINT_REQUIRED" value="0402" />
          <attribute name="DESIGN_STATUS" value="SCHEMATIC_ONLY_NOT_PCB" />
        </part>
        <part name="R5" library="GBC_ROM_REFERENCE" deviceset="R5" device="" value="10k">
          <attribute name="FOOTPRINT_REQUIRED" value="0402" />
          <attribute name="DESIGN_STATUS" value="SCHEMATIC_ONLY_NOT_PCB" />
        </part>
        <part name="R6" library="GBC_ROM_REFERENCE" deviceset="R6" device="" value="10k">
          <attribute name="FOOTPRINT_REQUIRED" value="0402" />
          <attribute name="DESIGN_STATUS" value="SCHEMATIC_ONLY_NOT_PCB" />
        </part>
        <part name="R7" library="GBC_ROM_REFERENCE" deviceset="R7" device="" value="10k">
          <attribute name="FOOTPRINT_REQUIRED" value="0402" />
          <attribute name="DESIGN_STATUS" value="SCHEMATIC_ONLY_NOT_PCB" />
        </part>
        <part name="R8" library="GBC_ROM_REFERENCE" deviceset="R8" device="" value="10k">
          <attribute name="FOOTPRINT_REQUIRED" value="0402" />
          <attribute name="DESIGN_STATUS" value="SCHEMATIC_ONLY_NOT_PCB" />
        </part>
        <part name="R9" library="GBC_ROM_REFERENCE" deviceset="R9" device="" value="100k">
          <attribute name="FOOTPRINT_REQUIRED" value="0402" />
          <attribute name="DESIGN_STATUS" value="SCHEMATIC_ONLY_NOT_PCB" />
        </part>
        <part name="R10" library="GBC_ROM_REFERENCE" deviceset="R10" device="" value="10k">
          <attribute name="FOOTPRINT_REQUIRED" value="0402" />
          <attribute name="DESIGN_STATUS" value="SCHEMATIC_ONLY_NOT_PCB" />
        </part>
        <part name="R11" library="GBC_ROM_REFERENCE" deviceset="R11" device="" value="33R">
          <attribute name="FOOTPRINT_REQUIRED" value="0402" />
          <attribute name="DESIGN_STATUS" value="SCHEMATIC_ONLY_NOT_PCB" />
        </part>
        <part name="R12" library="GBC_ROM_REFERENCE" deviceset="R12" device="" value="33R">
          <attribute name="FOOTPRINT_REQUIRED" value="0402" />
          <attribute name="DESIGN_STATUS" value="SCHEMATIC_ONLY_NOT_PCB" />
        </part>
        <part name="R13" library="GBC_ROM_REFERENCE" deviceset="R13" device="" value="33R">
          <attribute name="FOOTPRINT_REQUIRED" value="0402" />
          <attribute name="DESIGN_STATUS" value="SCHEMATIC_ONLY_NOT_PCB" />
        </part>
        <part name="R14" library="GBC_ROM_REFERENCE" deviceset="R14" device="" value="33R">
          <attribute name="FOOTPRINT_REQUIRED" value="0402" />
          <attribute name="DESIGN_STATUS" value="SCHEMATIC_ONLY_NOT_PCB" />
        </part>
        <part name="R15" library="GBC_ROM_REFERENCE" deviceset="R15" device="" value="33R">
          <attribute name="FOOTPRINT_REQUIRED" value="0402" />
          <attribute name="DESIGN_STATUS" value="SCHEMATIC_ONLY_NOT_PCB" />
        </part>
        <part name="R16" library="GBC_ROM_REFERENCE" deviceset="R16" device="" value="33R">
          <attribute name="FOOTPRINT_REQUIRED" value="0402" />
          <attribute name="DESIGN_STATUS" value="SCHEMATIC_ONLY_NOT_PCB" />
        </part>
        <part name="R17" library="GBC_ROM_REFERENCE" deviceset="R17" device="" value="33R">
          <attribute name="FOOTPRINT_REQUIRED" value="0402" />
          <attribute name="DESIGN_STATUS" value="SCHEMATIC_ONLY_NOT_PCB" />
        </part>
        <part name="R18" library="GBC_ROM_REFERENCE" deviceset="R18" device="" value="33R">
          <attribute name="FOOTPRINT_REQUIRED" value="0402" />
          <attribute name="DESIGN_STATUS" value="SCHEMATIC_ONLY_NOT_PCB" />
        </part>
        <part name="L1" library="GBC_ROM_REFERENCE" deviceset="L1" device="" value="AOTA-B201610S3R3-101-T">
          <attribute name="FOOTPRINT_REQUIRED" value="2016" />
          <attribute name="DESIGN_STATUS" value="SCHEMATIC_ONLY_NOT_PCB" />
        </part>
        <part name="C1" library="GBC_ROM_REFERENCE" deviceset="C1" device="" value="4.7uF">
          <attribute name="FOOTPRINT_REQUIRED" value="0603" />
          <attribute name="DESIGN_STATUS" value="SCHEMATIC_ONLY_NOT_PCB" />
        </part>
        <part name="C2" library="GBC_ROM_REFERENCE" deviceset="C2" device="" value="4.7uF">
          <attribute name="FOOTPRINT_REQUIRED" value="0603" />
          <attribute name="DESIGN_STATUS" value="SCHEMATIC_ONLY_NOT_PCB" />
        </part>
        <part name="C3" library="GBC_ROM_REFERENCE" deviceset="C3" device="" value="4.7uF">
          <attribute name="FOOTPRINT_REQUIRED" value="0603" />
          <attribute name="DESIGN_STATUS" value="SCHEMATIC_ONLY_NOT_PCB" />
        </part>
        <part name="C4" library="GBC_ROM_REFERENCE" deviceset="C4" device="" value="4.7uF">
          <attribute name="FOOTPRINT_REQUIRED" value="0603" />
          <attribute name="DESIGN_STATUS" value="SCHEMATIC_ONLY_NOT_PCB" />
        </part>
        <part name="C5" library="GBC_ROM_REFERENCE" deviceset="C5" device="" value="4.7uF">
          <attribute name="FOOTPRINT_REQUIRED" value="0603" />
          <attribute name="DESIGN_STATUS" value="SCHEMATIC_ONLY_NOT_PCB" />
        </part>
        <part name="C6" library="GBC_ROM_REFERENCE" deviceset="C6" device="" value="4.7uF">
          <attribute name="FOOTPRINT_REQUIRED" value="0603" />
          <attribute name="DESIGN_STATUS" value="SCHEMATIC_ONLY_NOT_PCB" />
        </part>
        <part name="C7" library="GBC_ROM_REFERENCE" deviceset="C7" device="" value="100nF">
          <attribute name="FOOTPRINT_REQUIRED" value="0402" />
          <attribute name="DESIGN_STATUS" value="SCHEMATIC_ONLY_NOT_PCB" />
        </part>
        <part name="C8" library="GBC_ROM_REFERENCE" deviceset="C8" device="" value="100nF">
          <attribute name="FOOTPRINT_REQUIRED" value="0402" />
          <attribute name="DESIGN_STATUS" value="SCHEMATIC_ONLY_NOT_PCB" />
        </part>
        <part name="C9" library="GBC_ROM_REFERENCE" deviceset="C9" device="" value="100nF">
          <attribute name="FOOTPRINT_REQUIRED" value="0402" />
          <attribute name="DESIGN_STATUS" value="SCHEMATIC_ONLY_NOT_PCB" />
        </part>
        <part name="C10" library="GBC_ROM_REFERENCE" deviceset="C10" device="" value="100nF">
          <attribute name="FOOTPRINT_REQUIRED" value="0402" />
          <attribute name="DESIGN_STATUS" value="SCHEMATIC_ONLY_NOT_PCB" />
        </part>
        <part name="C11" library="GBC_ROM_REFERENCE" deviceset="C11" device="" value="100nF">
          <attribute name="FOOTPRINT_REQUIRED" value="0402" />
          <attribute name="DESIGN_STATUS" value="SCHEMATIC_ONLY_NOT_PCB" />
        </part>
        <part name="C12" library="GBC_ROM_REFERENCE" deviceset="C12" device="" value="100nF">
          <attribute name="FOOTPRINT_REQUIRED" value="0402" />
          <attribute name="DESIGN_STATUS" value="SCHEMATIC_ONLY_NOT_PCB" />
        </part>
        <part name="C13" library="GBC_ROM_REFERENCE" deviceset="C13" device="" value="100nF">
          <attribute name="FOOTPRINT_REQUIRED" value="0402" />
          <attribute name="DESIGN_STATUS" value="SCHEMATIC_ONLY_NOT_PCB" />
        </part>
        <part name="C14" library="GBC_ROM_REFERENCE" deviceset="C14" device="" value="100nF">
          <attribute name="FOOTPRINT_REQUIRED" value="0402" />
          <attribute name="DESIGN_STATUS" value="SCHEMATIC_ONLY_NOT_PCB" />
        </part>
        <part name="C15" library="GBC_ROM_REFERENCE" deviceset="C15" device="" value="100nF">
          <attribute name="FOOTPRINT_REQUIRED" value="0402" />
          <attribute name="DESIGN_STATUS" value="SCHEMATIC_ONLY_NOT_PCB" />
        </part>
        <part name="C16" library="GBC_ROM_REFERENCE" deviceset="C16" device="" value="100nF">
          <attribute name="FOOTPRINT_REQUIRED" value="0402" />
          <attribute name="DESIGN_STATUS" value="SCHEMATIC_ONLY_NOT_PCB" />
        </part>
        <part name="C17" library="GBC_ROM_REFERENCE" deviceset="C17" device="" value="100nF">
          <attribute name="FOOTPRINT_REQUIRED" value="0402" />
          <attribute name="DESIGN_STATUS" value="SCHEMATIC_ONLY_NOT_PCB" />
        </part>
        <part name="C18" library="GBC_ROM_REFERENCE" deviceset="C18" device="" value="100nF">
          <attribute name="FOOTPRINT_REQUIRED" value="0402" />
          <attribute name="DESIGN_STATUS" value="SCHEMATIC_ONLY_NOT_PCB" />
        </part>
        <part name="C19" library="GBC_ROM_REFERENCE" deviceset="C19" device="" value="100nF">
          <attribute name="FOOTPRINT_REQUIRED" value="0402" />
          <attribute name="DESIGN_STATUS" value="SCHEMATIC_ONLY_NOT_PCB" />
        </part>
        <part name="C20" library="GBC_ROM_REFERENCE" deviceset="C20" device="" value="100nF">
          <attribute name="FOOTPRINT_REQUIRED" value="0402" />
          <attribute name="DESIGN_STATUS" value="SCHEMATIC_ONLY_NOT_PCB" />
        </part>
        <part name="C21" library="GBC_ROM_REFERENCE" deviceset="C21" device="" value="100nF">
          <attribute name="FOOTPRINT_REQUIRED" value="0402" />
          <attribute name="DESIGN_STATUS" value="SCHEMATIC_ONLY_NOT_PCB" />
        </part>
        <part name="C22" library="GBC_ROM_REFERENCE" deviceset="C22" device="" value="100nF">
          <attribute name="FOOTPRINT_REQUIRED" value="0402" />
          <attribute name="DESIGN_STATUS" value="SCHEMATIC_ONLY_NOT_PCB" />
        </part>
        <part name="C23" library="GBC_ROM_REFERENCE" deviceset="C23" device="" value="100nF">
          <attribute name="FOOTPRINT_REQUIRED" value="0402" />
          <attribute name="DESIGN_STATUS" value="SCHEMATIC_ONLY_NOT_PCB" />
        </part>
        <part name="C24" library="GBC_ROM_REFERENCE" deviceset="C24" device="" value="100nF">
          <attribute name="FOOTPRINT_REQUIRED" value="0402" />
          <attribute name="DESIGN_STATUS" value="SCHEMATIC_ONLY_NOT_PCB" />
        </part>
        <part name="C25" library="GBC_ROM_REFERENCE" deviceset="C25" device="" value="100nF">
          <attribute name="FOOTPRINT_REQUIRED" value="0402" />
          <attribute name="DESIGN_STATUS" value="SCHEMATIC_ONLY_NOT_PCB" />
        </part>
        <part name="C26" library="GBC_ROM_REFERENCE" deviceset="C26" device="" value="100nF">
          <attribute name="FOOTPRINT_REQUIRED" value="0402" />
          <attribute name="DESIGN_STATUS" value="SCHEMATIC_ONLY_NOT_PCB" />
        </part>
        <part name="C27" library="GBC_ROM_REFERENCE" deviceset="C27" device="" value="12pF">
          <attribute name="FOOTPRINT_REQUIRED" value="0402" />
          <attribute name="DESIGN_STATUS" value="SCHEMATIC_ONLY_NOT_PCB" />
        </part>
        <part name="C28" library="GBC_ROM_REFERENCE" deviceset="C28" device="" value="12pF">
          <attribute name="FOOTPRINT_REQUIRED" value="0402" />
          <attribute name="DESIGN_STATUS" value="SCHEMATIC_ONLY_NOT_PCB" />
        </part>
        <part name="J2" library="GBC_ROM_REFERENCE" deviceset="J2" device="" value="SWD_POGO">
          <attribute name="FOOTPRINT_REQUIRED" value="PADS_1.27" />
          <attribute name="DESIGN_STATUS" value="SCHEMATIC_ONLY_NOT_PCB" />
        </part>
        <part name="TP1" library="GBC_ROM_REFERENCE" deviceset="TP1" device="" value="TESTPOINT">
          <attribute name="FOOTPRINT_REQUIRED" value="TP1mm" />
          <attribute name="DESIGN_STATUS" value="SCHEMATIC_ONLY_NOT_PCB" />
        </part>
        <part name="TP2" library="GBC_ROM_REFERENCE" deviceset="TP2" device="" value="TESTPOINT">
          <attribute name="FOOTPRINT_REQUIRED" value="TP1mm" />
          <attribute name="DESIGN_STATUS" value="SCHEMATIC_ONLY_NOT_PCB" />
        </part>
        <part name="TP3" library="GBC_ROM_REFERENCE" deviceset="TP3" device="" value="TESTPOINT">
          <attribute name="FOOTPRINT_REQUIRED" value="TP1mm" />
          <attribute name="DESIGN_STATUS" value="SCHEMATIC_ONLY_NOT_PCB" />
        </part>
        <part name="TP4" library="GBC_ROM_REFERENCE" deviceset="TP4" device="" value="TESTPOINT">
          <attribute name="FOOTPRINT_REQUIRED" value="TP1mm" />
          <attribute name="DESIGN_STATUS" value="SCHEMATIC_ONLY_NOT_PCB" />
        </part>
        <part name="TP5" library="GBC_ROM_REFERENCE" deviceset="TP5" device="" value="TESTPOINT">
          <attribute name="FOOTPRINT_REQUIRED" value="TP1mm" />
          <attribute name="DESIGN_STATUS" value="SCHEMATIC_ONLY_NOT_PCB" />
        </part>
        <part name="TP6" library="GBC_ROM_REFERENCE" deviceset="TP6" device="" value="TESTPOINT">
          <attribute name="FOOTPRINT_REQUIRED" value="TP1mm" />
          <attribute name="DESIGN_STATUS" value="SCHEMATIC_ONLY_NOT_PCB" />
        </part>
        <part name="TP7" library="GBC_ROM_REFERENCE" deviceset="TP7" device="" value="TESTPOINT">
          <attribute name="FOOTPRINT_REQUIRED" value="TP1mm" />
          <attribute name="DESIGN_STATUS" value="SCHEMATIC_ONLY_NOT_PCB" />
        </part>
        <part name="TP8" library="GBC_ROM_REFERENCE" deviceset="TP8" device="" value="TESTPOINT">
          <attribute name="FOOTPRINT_REQUIRED" value="TP1mm" />
          <attribute name="DESIGN_STATUS" value="SCHEMATIC_ONLY_NOT_PCB" />
        </part>
        <part name="JP1" library="GBC_ROM_REFERENCE" deviceset="JP1" device="" value="SJ3_INPUT_SELECT">
          <attribute name="FOOTPRINT_REQUIRED" value="SJ3_P1.0_0.6x1.2" />
          <attribute name="DESIGN_STATUS" value="SCHEMATIC_ONLY_NOT_PCB" />
        </part>
        <part name="JP2" library="GBC_ROM_REFERENCE" deviceset="JP2" device="" value="SJ3_INPUT_SELECT">
          <attribute name="FOOTPRINT_REQUIRED" value="SJ3_P1.0_0.6x1.2" />
          <attribute name="DESIGN_STATUS" value="SCHEMATIC_ONLY_NOT_PCB" />
        </part>
        <part name="JP3" library="GBC_ROM_REFERENCE" deviceset="JP3" device="" value="SJ3_INPUT_SELECT">
          <attribute name="FOOTPRINT_REQUIRED" value="SJ3_P1.0_0.6x1.2" />
          <attribute name="DESIGN_STATUS" value="SCHEMATIC_ONLY_NOT_PCB" />
        </part>
        <part name="JP4" library="GBC_ROM_REFERENCE" deviceset="JP4" device="" value="SJ3_INPUT_SELECT">
          <attribute name="FOOTPRINT_REQUIRED" value="SJ3_P1.0_0.6x1.2" />
          <attribute name="DESIGN_STATUS" value="SCHEMATIC_ONLY_NOT_PCB" />
        </part>
        <part name="JP5" library="GBC_ROM_REFERENCE" deviceset="JP5" device="" value="SJ3_INPUT_SELECT">
          <attribute name="FOOTPRINT_REQUIRED" value="SJ3_P1.0_0.6x1.2" />
          <attribute name="DESIGN_STATUS" value="SCHEMATIC_ONLY_NOT_PCB" />
        </part>
        <part name="JP6" library="GBC_ROM_REFERENCE" deviceset="JP6" device="" value="SJ3_INPUT_SELECT">
          <attribute name="FOOTPRINT_REQUIRED" value="SJ3_P1.0_0.6x1.2" />
          <attribute name="DESIGN_STATUS" value="SCHEMATIC_ONLY_NOT_PCB" />
        </part>
        <part name="JP7" library="GBC_ROM_REFERENCE" deviceset="JP7" device="" value="SJ3_INPUT_SELECT">
          <attribute name="FOOTPRINT_REQUIRED" value="SJ3_P1.0_0.6x1.2" />
          <attribute name="DESIGN_STATUS" value="SCHEMATIC_ONLY_NOT_PCB" />
        </part>
        <part name="JP8" library="GBC_ROM_REFERENCE" deviceset="JP8" device="" value="SJ3_INPUT_SELECT">
          <attribute name="FOOTPRINT_REQUIRED" value="SJ3_P1.0_0.6x1.2" />
          <attribute name="DESIGN_STATUS" value="SCHEMATIC_ONLY_NOT_PCB" />
        </part>
        <part name="JP9" library="GBC_ROM_REFERENCE" deviceset="JP9" device="" value="SJ3_INPUT_SELECT">
          <attribute name="FOOTPRINT_REQUIRED" value="SJ3_P1.0_0.6x1.2" />
          <attribute name="DESIGN_STATUS" value="SCHEMATIC_ONLY_NOT_PCB" />
        </part>
        <part name="JP10" library="GBC_ROM_REFERENCE" deviceset="JP10" device="" value="SJ3_INPUT_SELECT">
          <attribute name="FOOTPRINT_REQUIRED" value="SJ3_P1.0_0.6x1.2" />
          <attribute name="DESIGN_STATUS" value="SCHEMATIC_ONLY_NOT_PCB" />
        </part>
        <part name="JP11" library="GBC_ROM_REFERENCE" deviceset="JP11" device="" value="SJ3_INPUT_SELECT">
          <attribute name="FOOTPRINT_REQUIRED" value="SJ3_P1.0_0.6x1.2" />
          <attribute name="DESIGN_STATUS" value="SCHEMATIC_ONLY_NOT_PCB" />
        </part>
        <part name="JP12" library="GBC_ROM_REFERENCE" deviceset="JP12" device="" value="SJ3_INPUT_SELECT">
          <attribute name="FOOTPRINT_REQUIRED" value="SJ3_P1.0_0.6x1.2" />
          <attribute name="DESIGN_STATUS" value="SCHEMATIC_ONLY_NOT_PCB" />
        </part>
        <part name="JP13" library="GBC_ROM_REFERENCE" deviceset="JP13" device="" value="SJ3_INPUT_SELECT">
          <attribute name="FOOTPRINT_REQUIRED" value="SJ3_P1.0_0.6x1.2" />
          <attribute name="DESIGN_STATUS" value="SCHEMATIC_ONLY_NOT_PCB" />
        </part>
        <part name="JP14" library="GBC_ROM_REFERENCE" deviceset="JP14" device="" value="SJ3_INPUT_SELECT">
          <attribute name="FOOTPRINT_REQUIRED" value="SJ3_P1.0_0.6x1.2" />
          <attribute name="DESIGN_STATUS" value="SCHEMATIC_ONLY_NOT_PCB" />
        </part>
        <part name="JP15" library="GBC_ROM_REFERENCE" deviceset="JP15" device="" value="SJ3_INPUT_SELECT">
          <attribute name="FOOTPRINT_REQUIRED" value="SJ3_P1.0_0.6x1.2" />
          <attribute name="DESIGN_STATUS" value="SCHEMATIC_ONLY_NOT_PCB" />
        </part>
        <part name="JP16" library="GBC_ROM_REFERENCE" deviceset="JP16" device="" value="SJ3_INPUT_SELECT">
          <attribute name="FOOTPRINT_REQUIRED" value="SJ3_P1.0_0.6x1.2" />
          <attribute name="DESIGN_STATUS" value="SCHEMATIC_ONLY_NOT_PCB" />
        </part>
        <part name="JP17" library="GBC_ROM_REFERENCE" deviceset="JP17" device="" value="SJ3_INPUT_SELECT">
          <attribute name="FOOTPRINT_REQUIRED" value="SJ3_P1.0_0.6x1.2" />
          <attribute name="DESIGN_STATUS" value="SCHEMATIC_ONLY_NOT_PCB" />
        </part>
      </parts>
      <sheets>
        <sheet>
          <plain>
            <text x="0" y="265" size="3.5" layer="94">GBC RP2350B ROM emulator Rev A.1 / Sheet 1 / bind footprints before PCB</text>
          </plain>
          <instances>
            <instance part="J1" gate="G$1" x="45" y="210" smashed="no" />
          </instances>
          <busses />
          <nets>
            <net name="GND" class="0">
              <segment>
                <pinref part="J1" gate="G$1" pin="P32" />
                <wire x1="88.18" y1="212.54" x2="100.88000000000001" y2="212.54" width="0.1524" layer="91" />
                <label x="100.88000000000001" y="212.54" size="1.0" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="5V" class="0">
              <segment>
                <pinref part="J1" gate="G$1" pin="P1" />
                <wire x1="39.92" y1="250.64" x2="27.220000000000002" y2="250.64" width="0.1524" layer="91" />
                <label x="27.220000000000002" y="250.64" size="1.0" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="RD_5V" class="0">
              <segment>
                <pinref part="J1" gate="G$1" pin="P4" />
                <wire x1="39.92" y1="243.01999999999998" x2="27.220000000000002" y2="243.01999999999998" width="0.1524" layer="91" />
                <label x="27.220000000000002" y="243.01999999999998" size="1.0" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="A0_5V" class="0">
              <segment>
                <pinref part="J1" gate="G$1" pin="P6" />
                <wire x1="39.92" y1="237.94" x2="27.220000000000002" y2="237.94" width="0.1524" layer="91" />
                <label x="27.220000000000002" y="237.94" size="1.0" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="A1_5V" class="0">
              <segment>
                <pinref part="J1" gate="G$1" pin="P7" />
                <wire x1="39.92" y1="235.4" x2="27.220000000000002" y2="235.4" width="0.1524" layer="91" />
                <label x="27.220000000000002" y="235.4" size="1.0" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="A2_5V" class="0">
              <segment>
                <pinref part="J1" gate="G$1" pin="P8" />
                <wire x1="39.92" y1="232.86" x2="27.220000000000002" y2="232.86" width="0.1524" layer="91" />
                <label x="27.220000000000002" y="232.86" size="1.0" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="A3_5V" class="0">
              <segment>
                <pinref part="J1" gate="G$1" pin="P9" />
                <wire x1="39.92" y1="230.32" x2="27.220000000000002" y2="230.32" width="0.1524" layer="91" />
                <label x="27.220000000000002" y="230.32" size="1.0" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="A4_5V" class="0">
              <segment>
                <pinref part="J1" gate="G$1" pin="P10" />
                <wire x1="39.92" y1="227.78" x2="27.220000000000002" y2="227.78" width="0.1524" layer="91" />
                <label x="27.220000000000002" y="227.78" size="1.0" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="A5_5V" class="0">
              <segment>
                <pinref part="J1" gate="G$1" pin="P11" />
                <wire x1="39.92" y1="225.24" x2="27.220000000000002" y2="225.24" width="0.1524" layer="91" />
                <label x="27.220000000000002" y="225.24" size="1.0" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="A6_5V" class="0">
              <segment>
                <pinref part="J1" gate="G$1" pin="P12" />
                <wire x1="39.92" y1="222.7" x2="27.220000000000002" y2="222.7" width="0.1524" layer="91" />
                <label x="27.220000000000002" y="222.7" size="1.0" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="A7_5V" class="0">
              <segment>
                <pinref part="J1" gate="G$1" pin="P13" />
                <wire x1="39.92" y1="220.16" x2="27.220000000000002" y2="220.16" width="0.1524" layer="91" />
                <label x="27.220000000000002" y="220.16" size="1.0" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="A8_5V" class="0">
              <segment>
                <pinref part="J1" gate="G$1" pin="P14" />
                <wire x1="39.92" y1="217.62" x2="27.220000000000002" y2="217.62" width="0.1524" layer="91" />
                <label x="27.220000000000002" y="217.62" size="1.0" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="A9_5V" class="0">
              <segment>
                <pinref part="J1" gate="G$1" pin="P15" />
                <wire x1="39.92" y1="215.07999999999998" x2="27.220000000000002" y2="215.07999999999998" width="0.1524" layer="91" />
                <label x="27.220000000000002" y="215.07999999999998" size="1.0" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="A10_5V" class="0">
              <segment>
                <pinref part="J1" gate="G$1" pin="P16" />
                <wire x1="39.92" y1="212.54" x2="27.220000000000002" y2="212.54" width="0.1524" layer="91" />
                <label x="27.220000000000002" y="212.54" size="1.0" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="A11_5V" class="0">
              <segment>
                <pinref part="J1" gate="G$1" pin="P17" />
                <wire x1="88.18" y1="250.64" x2="100.88000000000001" y2="250.64" width="0.1524" layer="91" />
                <label x="100.88000000000001" y="250.64" size="1.0" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="A12_5V" class="0">
              <segment>
                <pinref part="J1" gate="G$1" pin="P18" />
                <wire x1="88.18" y1="248.1" x2="100.88000000000001" y2="248.1" width="0.1524" layer="91" />
                <label x="100.88000000000001" y="248.1" size="1.0" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="A13_5V" class="0">
              <segment>
                <pinref part="J1" gate="G$1" pin="P19" />
                <wire x1="88.18" y1="245.56" x2="100.88000000000001" y2="245.56" width="0.1524" layer="91" />
                <label x="100.88000000000001" y="245.56" size="1.0" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="A14_5V" class="0">
              <segment>
                <pinref part="J1" gate="G$1" pin="P20" />
                <wire x1="88.18" y1="243.01999999999998" x2="100.88000000000001" y2="243.01999999999998" width="0.1524" layer="91" />
                <label x="100.88000000000001" y="243.01999999999998" size="1.0" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="A15_5V" class="0">
              <segment>
                <pinref part="J1" gate="G$1" pin="P21" />
                <wire x1="88.18" y1="240.48" x2="100.88000000000001" y2="240.48" width="0.1524" layer="91" />
                <label x="100.88000000000001" y="240.48" size="1.0" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="D0_GB" class="0">
              <segment>
                <pinref part="J1" gate="G$1" pin="P22" />
                <wire x1="88.18" y1="237.94" x2="100.88000000000001" y2="237.94" width="0.1524" layer="91" />
                <label x="100.88000000000001" y="237.94" size="1.0" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="D1_GB" class="0">
              <segment>
                <pinref part="J1" gate="G$1" pin="P23" />
                <wire x1="88.18" y1="235.4" x2="100.88000000000001" y2="235.4" width="0.1524" layer="91" />
                <label x="100.88000000000001" y="235.4" size="1.0" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="D2_GB" class="0">
              <segment>
                <pinref part="J1" gate="G$1" pin="P24" />
                <wire x1="88.18" y1="232.86" x2="100.88000000000001" y2="232.86" width="0.1524" layer="91" />
                <label x="100.88000000000001" y="232.86" size="1.0" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="D3_GB" class="0">
              <segment>
                <pinref part="J1" gate="G$1" pin="P25" />
                <wire x1="88.18" y1="230.32" x2="100.88000000000001" y2="230.32" width="0.1524" layer="91" />
                <label x="100.88000000000001" y="230.32" size="1.0" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="D4_GB" class="0">
              <segment>
                <pinref part="J1" gate="G$1" pin="P26" />
                <wire x1="88.18" y1="227.78" x2="100.88000000000001" y2="227.78" width="0.1524" layer="91" />
                <label x="100.88000000000001" y="227.78" size="1.0" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="D5_GB" class="0">
              <segment>
                <pinref part="J1" gate="G$1" pin="P27" />
                <wire x1="88.18" y1="225.24" x2="100.88000000000001" y2="225.24" width="0.1524" layer="91" />
                <label x="100.88000000000001" y="225.24" size="1.0" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="D6_GB" class="0">
              <segment>
                <pinref part="J1" gate="G$1" pin="P28" />
                <wire x1="88.18" y1="222.7" x2="100.88000000000001" y2="222.7" width="0.1524" layer="91" />
                <label x="100.88000000000001" y="222.7" size="1.0" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="D7_GB" class="0">
              <segment>
                <pinref part="J1" gate="G$1" pin="P29" />
                <wire x1="88.18" y1="220.16" x2="100.88000000000001" y2="220.16" width="0.1524" layer="91" />
                <label x="100.88000000000001" y="220.16" size="1.0" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="GB_RESET" class="0">
              <segment>
                <pinref part="J1" gate="G$1" pin="P30" />
                <wire x1="88.18" y1="217.62" x2="100.88000000000001" y2="217.62" width="0.1524" layer="91" />
                <label x="100.88000000000001" y="217.62" size="1.0" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
          </nets>
        </sheet>
        <sheet>
          <plain>
            <text x="0" y="265" size="3.5" layer="94">GBC RP2350B ROM emulator Rev A.1 / Sheet 2 / bind footprints before PCB</text>
          </plain>
          <instances>
            <instance part="U1" gate="G$1" x="55" y="120" smashed="no" />
            <instance part="U7" gate="G$1" x="160" y="210" smashed="no" />
          </instances>
          <busses />
          <nets>
            <net name="A0_RP" class="0">
              <segment>
                <pinref part="U1" gate="G$1" pin="P77" />
                <wire x1="49.92" y1="224.14" x2="37.22" y2="224.14" width="0.1524" layer="91" />
                <label x="37.22" y="224.14" size="1.0" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="A1_RP" class="0">
              <segment>
                <pinref part="U1" gate="G$1" pin="P78" />
                <wire x1="49.92" y1="221.60000000000002" x2="37.22" y2="221.60000000000002" width="0.1524" layer="91" />
                <label x="37.22" y="221.60000000000002" size="1.0" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="A2_RP" class="0">
              <segment>
                <pinref part="U1" gate="G$1" pin="P79" />
                <wire x1="49.92" y1="219.06" x2="37.22" y2="219.06" width="0.1524" layer="91" />
                <label x="37.22" y="219.06" size="1.0" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="A3_RP" class="0">
              <segment>
                <pinref part="U1" gate="G$1" pin="P80" />
                <wire x1="49.92" y1="216.52" x2="37.22" y2="216.52" width="0.1524" layer="91" />
                <label x="37.22" y="216.52" size="1.0" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="A4_RP" class="0">
              <segment>
                <pinref part="U1" gate="G$1" pin="P1" />
                <wire x1="49.92" y1="213.98000000000002" x2="37.22" y2="213.98000000000002" width="0.1524" layer="91" />
                <label x="37.22" y="213.98000000000002" size="1.0" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="A5_RP" class="0">
              <segment>
                <pinref part="U1" gate="G$1" pin="P2" />
                <wire x1="49.92" y1="211.44" x2="37.22" y2="211.44" width="0.1524" layer="91" />
                <label x="37.22" y="211.44" size="1.0" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="A6_RP" class="0">
              <segment>
                <pinref part="U1" gate="G$1" pin="P3" />
                <wire x1="49.92" y1="208.9" x2="37.22" y2="208.9" width="0.1524" layer="91" />
                <label x="37.22" y="208.9" size="1.0" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="A7_RP" class="0">
              <segment>
                <pinref part="U1" gate="G$1" pin="P4" />
                <wire x1="49.92" y1="206.36" x2="37.22" y2="206.36" width="0.1524" layer="91" />
                <label x="37.22" y="206.36" size="1.0" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="A8_RP" class="0">
              <segment>
                <pinref part="U1" gate="G$1" pin="P6" />
                <wire x1="49.92" y1="203.82" x2="37.22" y2="203.82" width="0.1524" layer="91" />
                <label x="37.22" y="203.82" size="1.0" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="A9_RP" class="0">
              <segment>
                <pinref part="U1" gate="G$1" pin="P7" />
                <wire x1="49.92" y1="201.28" x2="37.22" y2="201.28" width="0.1524" layer="91" />
                <label x="37.22" y="201.28" size="1.0" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="A10_RP" class="0">
              <segment>
                <pinref part="U1" gate="G$1" pin="P8" />
                <wire x1="49.92" y1="198.74" x2="37.22" y2="198.74" width="0.1524" layer="91" />
                <label x="37.22" y="198.74" size="1.0" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="A11_RP" class="0">
              <segment>
                <pinref part="U1" gate="G$1" pin="P9" />
                <wire x1="49.92" y1="196.2" x2="37.22" y2="196.2" width="0.1524" layer="91" />
                <label x="37.22" y="196.2" size="1.0" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="A12_RP" class="0">
              <segment>
                <pinref part="U1" gate="G$1" pin="P11" />
                <wire x1="49.92" y1="193.66" x2="37.22" y2="193.66" width="0.1524" layer="91" />
                <label x="37.22" y="193.66" size="1.0" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="A13_RP" class="0">
              <segment>
                <pinref part="U1" gate="G$1" pin="P12" />
                <wire x1="49.92" y1="191.12" x2="37.22" y2="191.12" width="0.1524" layer="91" />
                <label x="37.22" y="191.12" size="1.0" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="A14_RP" class="0">
              <segment>
                <pinref part="U1" gate="G$1" pin="P13" />
                <wire x1="49.92" y1="188.58" x2="37.22" y2="188.58" width="0.1524" layer="91" />
                <label x="37.22" y="188.58" size="1.0" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="A15_RP" class="0">
              <segment>
                <pinref part="U1" gate="G$1" pin="P14" />
                <wire x1="49.92" y1="186.04000000000002" x2="37.22" y2="186.04000000000002" width="0.1524" layer="91" />
                <label x="37.22" y="186.04000000000002" size="1.0" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="D0_3V3" class="0">
              <segment>
                <pinref part="U1" gate="G$1" pin="P16" />
                <wire x1="49.92" y1="183.5" x2="37.22" y2="183.5" width="0.1524" layer="91" />
                <label x="37.22" y="183.5" size="1.0" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="D1_3V3" class="0">
              <segment>
                <pinref part="U1" gate="G$1" pin="P17" />
                <wire x1="49.92" y1="180.96" x2="37.22" y2="180.96" width="0.1524" layer="91" />
                <label x="37.22" y="180.96" size="1.0" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="D2_3V3" class="0">
              <segment>
                <pinref part="U1" gate="G$1" pin="P18" />
                <wire x1="49.92" y1="178.42000000000002" x2="37.22" y2="178.42000000000002" width="0.1524" layer="91" />
                <label x="37.22" y="178.42000000000002" size="1.0" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="D3_3V3" class="0">
              <segment>
                <pinref part="U1" gate="G$1" pin="P19" />
                <wire x1="49.92" y1="175.88" x2="37.22" y2="175.88" width="0.1524" layer="91" />
                <label x="37.22" y="175.88" size="1.0" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="D4_3V3" class="0">
              <segment>
                <pinref part="U1" gate="G$1" pin="P20" />
                <wire x1="49.92" y1="173.34" x2="37.22" y2="173.34" width="0.1524" layer="91" />
                <label x="37.22" y="173.34" size="1.0" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="D5_3V3" class="0">
              <segment>
                <pinref part="U1" gate="G$1" pin="P21" />
                <wire x1="49.92" y1="170.8" x2="37.22" y2="170.8" width="0.1524" layer="91" />
                <label x="37.22" y="170.8" size="1.0" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="D6_3V3" class="0">
              <segment>
                <pinref part="U1" gate="G$1" pin="P22" />
                <wire x1="49.92" y1="168.26" x2="37.22" y2="168.26" width="0.1524" layer="91" />
                <label x="37.22" y="168.26" size="1.0" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="D7_3V3" class="0">
              <segment>
                <pinref part="U1" gate="G$1" pin="P23" />
                <wire x1="49.92" y1="165.72" x2="37.22" y2="165.72" width="0.1524" layer="91" />
                <label x="37.22" y="165.72" size="1.0" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="RD_RP" class="0">
              <segment>
                <pinref part="U1" gate="G$1" pin="P25" />
                <wire x1="49.92" y1="163.18" x2="37.22" y2="163.18" width="0.1524" layer="91" />
                <label x="37.22" y="163.18" size="1.0" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="INVALID" class="0">
              <segment>
                <pinref part="U1" gate="G$1" pin="P26" />
                <wire x1="49.92" y1="160.64" x2="37.22" y2="160.64" width="0.1524" layer="91" />
                <label x="37.22" y="160.64" size="1.0" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="RESET_HOLD" class="0">
              <segment>
                <pinref part="U1" gate="G$1" pin="P27" />
                <wire x1="49.92" y1="158.10000000000002" x2="37.22" y2="158.10000000000002" width="0.1524" layer="91" />
                <label x="37.22" y="158.10000000000002" size="1.0" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="FW_READY" class="0">
              <segment>
                <pinref part="U1" gate="G$1" pin="P28" />
                <wire x1="49.92" y1="155.56" x2="37.22" y2="155.56" width="0.1524" layer="91" />
                <label x="37.22" y="155.56" size="1.0" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="3V3" class="0">
              <segment>
                <pinref part="U1" gate="G$1" pin="P5" />
                <wire x1="98.18" y1="206.36" x2="110.88000000000001" y2="206.36" width="0.1524" layer="91" />
                <label x="110.88000000000001" y="206.36" size="1.0" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="U1" gate="G$1" pin="P15" />
                <wire x1="98.18" y1="203.82" x2="110.88000000000001" y2="203.82" width="0.1524" layer="91" />
                <label x="110.88000000000001" y="203.82" size="1.0" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="U1" gate="G$1" pin="P24" />
                <wire x1="98.18" y1="201.28" x2="110.88000000000001" y2="201.28" width="0.1524" layer="91" />
                <label x="110.88000000000001" y="201.28" size="1.0" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="U1" gate="G$1" pin="P29" />
                <wire x1="98.18" y1="198.74" x2="110.88000000000001" y2="198.74" width="0.1524" layer="91" />
                <label x="110.88000000000001" y="198.74" size="1.0" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="U1" gate="G$1" pin="P41" />
                <wire x1="98.18" y1="196.2" x2="110.88000000000001" y2="196.2" width="0.1524" layer="91" />
                <label x="110.88000000000001" y="196.2" size="1.0" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="U1" gate="G$1" pin="P50" />
                <wire x1="98.18" y1="193.66" x2="110.88000000000001" y2="193.66" width="0.1524" layer="91" />
                <label x="110.88000000000001" y="193.66" size="1.0" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="U1" gate="G$1" pin="P60" />
                <wire x1="98.18" y1="191.12" x2="110.88000000000001" y2="191.12" width="0.1524" layer="91" />
                <label x="110.88000000000001" y="191.12" size="1.0" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="U1" gate="G$1" pin="P76" />
                <wire x1="98.18" y1="188.58" x2="110.88000000000001" y2="188.58" width="0.1524" layer="91" />
                <label x="110.88000000000001" y="188.58" size="1.0" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="U1" gate="G$1" pin="P69" />
                <wire x1="98.18" y1="178.42000000000002" x2="110.88000000000001" y2="178.42000000000002" width="0.1524" layer="91" />
                <label x="110.88000000000001" y="178.42000000000002" size="1.0" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="U1" gate="G$1" pin="P68" />
                <wire x1="98.18" y1="175.88" x2="110.88000000000001" y2="175.88" width="0.1524" layer="91" />
                <label x="110.88000000000001" y="175.88" size="1.0" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="U1" gate="G$1" pin="P59" />
                <wire x1="98.18" y1="173.34" x2="110.88000000000001" y2="173.34" width="0.1524" layer="91" />
                <label x="110.88000000000001" y="173.34" size="1.0" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="U1" gate="G$1" pin="P64" />
                <wire x1="98.18" y1="163.18" x2="110.88000000000001" y2="163.18" width="0.1524" layer="91" />
                <label x="110.88000000000001" y="163.18" size="1.0" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="U7" gate="G$1" pin="P8" />
                <wire x1="203.18" y1="212.54" x2="215.88" y2="212.54" width="0.1524" layer="91" />
                <label x="215.88" y="212.54" size="1.0" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="1V1" class="0">
              <segment>
                <pinref part="U1" gate="G$1" pin="P10" />
                <wire x1="98.18" y1="186.04000000000002" x2="110.88000000000001" y2="186.04000000000002" width="0.1524" layer="91" />
                <label x="110.88000000000001" y="186.04000000000002" size="1.0" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="U1" gate="G$1" pin="P32" />
                <wire x1="98.18" y1="183.5" x2="110.88000000000001" y2="183.5" width="0.1524" layer="91" />
                <label x="110.88000000000001" y="183.5" size="1.0" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="U1" gate="G$1" pin="P51" />
                <wire x1="98.18" y1="180.96" x2="110.88000000000001" y2="180.96" width="0.1524" layer="91" />
                <label x="110.88000000000001" y="180.96" size="1.0" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="U1" gate="G$1" pin="P65" />
                <wire x1="98.18" y1="160.64" x2="110.88000000000001" y2="160.64" width="0.1524" layer="91" />
                <label x="110.88000000000001" y="160.64" size="1.0" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="VREG_A" class="0">
              <segment>
                <pinref part="U1" gate="G$1" pin="P61" />
                <wire x1="98.18" y1="170.8" x2="110.88000000000001" y2="170.8" width="0.1524" layer="91" />
                <label x="110.88000000000001" y="170.8" size="1.0" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="GND" class="0">
              <segment>
                <pinref part="U1" gate="G$1" pin="P62" />
                <wire x1="98.18" y1="168.26" x2="110.88000000000001" y2="168.26" width="0.1524" layer="91" />
                <label x="110.88000000000001" y="168.26" size="1.0" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="U1" gate="G$1" pin="P81" />
                <wire x1="98.18" y1="125.08000000000001" x2="110.88000000000001" y2="125.08000000000001" width="0.1524" layer="91" />
                <label x="110.88000000000001" y="125.08000000000001" size="1.0" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="U7" gate="G$1" pin="P4" />
                <wire x1="154.92" y1="212.54" x2="142.22" y2="212.54" width="0.1524" layer="91" />
                <label x="142.22" y="212.54" size="1.0" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="LX" class="0">
              <segment>
                <pinref part="U1" gate="G$1" pin="P63" />
                <wire x1="98.18" y1="165.72" x2="110.88000000000001" y2="165.72" width="0.1524" layer="91" />
                <label x="110.88000000000001" y="165.72" size="1.0" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="XIN" class="0">
              <segment>
                <pinref part="U1" gate="G$1" pin="P30" />
                <wire x1="98.18" y1="158.10000000000002" x2="110.88000000000001" y2="158.10000000000002" width="0.1524" layer="91" />
                <label x="110.88000000000001" y="158.10000000000002" size="1.0" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="XOUT" class="0">
              <segment>
                <pinref part="U1" gate="G$1" pin="P31" />
                <wire x1="98.18" y1="155.56" x2="110.88000000000001" y2="155.56" width="0.1524" layer="91" />
                <label x="110.88000000000001" y="155.56" size="1.0" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="SWCLK" class="0">
              <segment>
                <pinref part="U1" gate="G$1" pin="P33" />
                <wire x1="98.18" y1="153.02" x2="110.88000000000001" y2="153.02" width="0.1524" layer="91" />
                <label x="110.88000000000001" y="153.02" size="1.0" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="SWDIO" class="0">
              <segment>
                <pinref part="U1" gate="G$1" pin="P34" />
                <wire x1="98.18" y1="150.48000000000002" x2="110.88000000000001" y2="150.48000000000002" width="0.1524" layer="91" />
                <label x="110.88000000000001" y="150.48000000000002" size="1.0" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="RUN" class="0">
              <segment>
                <pinref part="U1" gate="G$1" pin="P35" />
                <wire x1="98.18" y1="147.94" x2="110.88000000000001" y2="147.94" width="0.1524" layer="91" />
                <label x="110.88000000000001" y="147.94" size="1.0" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="Q_D3" class="0">
              <segment>
                <pinref part="U1" gate="G$1" pin="P70" />
                <wire x1="98.18" y1="140.32" x2="110.88000000000001" y2="140.32" width="0.1524" layer="91" />
                <label x="110.88000000000001" y="140.32" size="1.0" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="U7" gate="G$1" pin="P7" />
                <wire x1="203.18" y1="215.08" x2="215.88" y2="215.08" width="0.1524" layer="91" />
                <label x="215.88" y="215.08" size="1.0" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="Q_CLK" class="0">
              <segment>
                <pinref part="U1" gate="G$1" pin="P71" />
                <wire x1="98.18" y1="137.78" x2="110.88000000000001" y2="137.78" width="0.1524" layer="91" />
                <label x="110.88000000000001" y="137.78" size="1.0" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="U7" gate="G$1" pin="P6" />
                <wire x1="203.18" y1="217.62" x2="215.88" y2="217.62" width="0.1524" layer="91" />
                <label x="215.88" y="217.62" size="1.0" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="Q_D0" class="0">
              <segment>
                <pinref part="U1" gate="G$1" pin="P72" />
                <wire x1="98.18" y1="135.24" x2="110.88000000000001" y2="135.24" width="0.1524" layer="91" />
                <label x="110.88000000000001" y="135.24" size="1.0" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="U7" gate="G$1" pin="P5" />
                <wire x1="203.18" y1="220.16" x2="215.88" y2="220.16" width="0.1524" layer="91" />
                <label x="215.88" y="220.16" size="1.0" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="Q_D2" class="0">
              <segment>
                <pinref part="U1" gate="G$1" pin="P73" />
                <wire x1="98.18" y1="132.7" x2="110.88000000000001" y2="132.7" width="0.1524" layer="91" />
                <label x="110.88000000000001" y="132.7" size="1.0" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="U7" gate="G$1" pin="P3" />
                <wire x1="154.92" y1="215.08" x2="142.22" y2="215.08" width="0.1524" layer="91" />
                <label x="142.22" y="215.08" size="1.0" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="Q_D1" class="0">
              <segment>
                <pinref part="U1" gate="G$1" pin="P74" />
                <wire x1="98.18" y1="130.16000000000003" x2="110.88000000000001" y2="130.16000000000003" width="0.1524" layer="91" />
                <label x="110.88000000000001" y="130.16000000000003" size="1.0" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="U7" gate="G$1" pin="P2" />
                <wire x1="154.92" y1="217.62" x2="142.22" y2="217.62" width="0.1524" layer="91" />
                <label x="142.22" y="217.62" size="1.0" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="Q_CS" class="0">
              <segment>
                <pinref part="U1" gate="G$1" pin="P75" />
                <wire x1="98.18" y1="127.62" x2="110.88000000000001" y2="127.62" width="0.1524" layer="91" />
                <label x="110.88000000000001" y="127.62" size="1.0" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="U7" gate="G$1" pin="P1" />
                <wire x1="154.92" y1="220.16" x2="142.22" y2="220.16" width="0.1524" layer="91" />
                <label x="142.22" y="220.16" size="1.0" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
          </nets>
        </sheet>
        <sheet>
          <plain>
            <text x="0" y="265" size="3.5" layer="94">GBC RP2350B ROM emulator Rev A.1 / Sheet 3 / bind footprints before PCB</text>
          </plain>
          <instances>
            <instance part="U2" gate="G$1" x="45" y="210" smashed="no" />
            <instance part="U3" gate="G$1" x="160" y="210" smashed="no" />
            <instance part="U4" gate="G$1" x="275" y="210" smashed="no" />
            <instance part="U5" gate="G$1" x="45" y="145" smashed="no" />
            <instance part="U6" gate="G$1" x="160" y="145" smashed="no" />
          </instances>
          <busses />
          <nets>
            <net name="D0_3V3" class="0">
              <segment>
                <pinref part="U5" gate="G$1" pin="P2" />
                <wire x1="39.92" y1="160.24" x2="27.220000000000002" y2="160.24" width="0.1524" layer="91" />
                <label x="27.220000000000002" y="160.24" size="1.0" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="D1_3V3" class="0">
              <segment>
                <pinref part="U5" gate="G$1" pin="P3" />
                <wire x1="39.92" y1="155.16" x2="27.220000000000002" y2="155.16" width="0.1524" layer="91" />
                <label x="27.220000000000002" y="155.16" size="1.0" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="D2_3V3" class="0">
              <segment>
                <pinref part="U5" gate="G$1" pin="P4" />
                <wire x1="39.92" y1="150.08" x2="27.220000000000002" y2="150.08" width="0.1524" layer="91" />
                <label x="27.220000000000002" y="150.08" size="1.0" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="D3_3V3" class="0">
              <segment>
                <pinref part="U5" gate="G$1" pin="P5" />
                <wire x1="88.18" y1="170.4" x2="100.88000000000001" y2="170.4" width="0.1524" layer="91" />
                <label x="100.88000000000001" y="170.4" size="1.0" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="D4_3V3" class="0">
              <segment>
                <pinref part="U5" gate="G$1" pin="P6" />
                <wire x1="88.18" y1="165.32" x2="100.88000000000001" y2="165.32" width="0.1524" layer="91" />
                <label x="100.88000000000001" y="165.32" size="1.0" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="D5_3V3" class="0">
              <segment>
                <pinref part="U5" gate="G$1" pin="P7" />
                <wire x1="88.18" y1="160.24" x2="100.88000000000001" y2="160.24" width="0.1524" layer="91" />
                <label x="100.88000000000001" y="160.24" size="1.0" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="D6_3V3" class="0">
              <segment>
                <pinref part="U5" gate="G$1" pin="P8" />
                <wire x1="88.18" y1="155.16" x2="100.88000000000001" y2="155.16" width="0.1524" layer="91" />
                <label x="100.88000000000001" y="155.16" size="1.0" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="D7_3V3" class="0">
              <segment>
                <pinref part="U5" gate="G$1" pin="P9" />
                <wire x1="88.18" y1="150.08" x2="100.88000000000001" y2="150.08" width="0.1524" layer="91" />
                <label x="100.88000000000001" y="150.08" size="1.0" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="INVALID" class="0">
              <segment>
                <pinref part="U6" gate="G$1" pin="P5" />
                <wire x1="154.92" y1="152.62" x2="142.22" y2="152.62" width="0.1524" layer="91" />
                <label x="142.22" y="152.62" size="1.0" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="3V3" class="0">
              <segment>
                <pinref part="U2" gate="G$1" pin="P20" />
                <wire x1="39.92" y1="227.78" x2="27.220000000000002" y2="227.78" width="0.1524" layer="91" />
                <label x="27.220000000000002" y="227.78" size="1.0" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="U3" gate="G$1" pin="P20" />
                <wire x1="154.92" y1="227.78" x2="142.22" y2="227.78" width="0.1524" layer="91" />
                <label x="142.22" y="227.78" size="1.0" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="U4" gate="G$1" pin="P5" />
                <wire x1="318.18" y1="215.08" x2="330.88" y2="215.08" width="0.1524" layer="91" />
                <label x="330.88" y="215.08" size="1.0" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="GND" class="0">
              <segment>
                <pinref part="U2" gate="G$1" pin="P1" />
                <wire x1="39.92" y1="235.4" x2="27.220000000000002" y2="235.4" width="0.1524" layer="91" />
                <label x="27.220000000000002" y="235.4" size="1.0" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="U2" gate="G$1" pin="P19" />
                <wire x1="39.92" y1="232.86" x2="27.220000000000002" y2="232.86" width="0.1524" layer="91" />
                <label x="27.220000000000002" y="232.86" size="1.0" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="U2" gate="G$1" pin="P10" />
                <wire x1="39.92" y1="230.32" x2="27.220000000000002" y2="230.32" width="0.1524" layer="91" />
                <label x="27.220000000000002" y="230.32" size="1.0" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="U3" gate="G$1" pin="P1" />
                <wire x1="154.92" y1="235.4" x2="142.22" y2="235.4" width="0.1524" layer="91" />
                <label x="142.22" y="235.4" size="1.0" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="U3" gate="G$1" pin="P19" />
                <wire x1="154.92" y1="232.86" x2="142.22" y2="232.86" width="0.1524" layer="91" />
                <label x="142.22" y="232.86" size="1.0" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="U3" gate="G$1" pin="P10" />
                <wire x1="154.92" y1="230.32" x2="142.22" y2="230.32" width="0.1524" layer="91" />
                <label x="142.22" y="230.32" size="1.0" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="U4" gate="G$1" pin="P3" />
                <wire x1="269.92" y1="212.54" x2="257.22" y2="212.54" width="0.1524" layer="91" />
                <label x="257.22" y="212.54" size="1.0" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="U5" gate="G$1" pin="P10" />
                <wire x1="39.92" y1="167.86" x2="27.220000000000002" y2="167.86" width="0.1524" layer="91" />
                <label x="27.220000000000002" y="167.86" size="1.0" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="U6" gate="G$1" pin="P7" />
                <wire x1="154.92" y1="147.54" x2="142.22" y2="147.54" width="0.1524" layer="91" />
                <label x="142.22" y="147.54" size="1.0" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="U6" gate="G$1" pin="P12" />
                <wire x1="203.18" y1="152.62" x2="215.88" y2="152.62" width="0.1524" layer="91" />
                <label x="215.88" y="152.62" size="1.0" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="U6" gate="G$1" pin="P13" />
                <wire x1="203.18" y1="150.08" x2="215.88" y2="150.08" width="0.1524" layer="91" />
                <label x="215.88" y="150.08" size="1.0" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="5V" class="0">
              <segment>
                <pinref part="U5" gate="G$1" pin="P1" />
                <wire x1="39.92" y1="170.4" x2="27.220000000000002" y2="170.4" width="0.1524" layer="91" />
                <label x="27.220000000000002" y="170.4" size="1.0" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="U5" gate="G$1" pin="P20" />
                <wire x1="39.92" y1="162.78" x2="27.220000000000002" y2="162.78" width="0.1524" layer="91" />
                <label x="27.220000000000002" y="162.78" size="1.0" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="U6" gate="G$1" pin="P14" />
                <wire x1="203.18" y1="147.54" x2="215.88" y2="147.54" width="0.1524" layer="91" />
                <label x="215.88" y="147.54" size="1.0" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="RD_5V" class="0">
              <segment>
                <pinref part="U4" gate="G$1" pin="P2" />
                <wire x1="269.92" y1="215.08" x2="257.22" y2="215.08" width="0.1524" layer="91" />
                <label x="257.22" y="215.08" size="1.0" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="U6" gate="G$1" pin="P2" />
                <wire x1="154.92" y1="160.24" x2="142.22" y2="160.24" width="0.1524" layer="91" />
                <label x="142.22" y="160.24" size="1.0" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="A0_5V" class="0">
              <segment>
                <pinref part="U2" gate="G$1" pin="P2" />
                <wire x1="39.92" y1="225.24" x2="27.220000000000002" y2="225.24" width="0.1524" layer="91" />
                <label x="27.220000000000002" y="225.24" size="1.0" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="A1_5V" class="0">
              <segment>
                <pinref part="U2" gate="G$1" pin="P4" />
                <wire x1="39.92" y1="220.16" x2="27.220000000000002" y2="220.16" width="0.1524" layer="91" />
                <label x="27.220000000000002" y="220.16" size="1.0" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="A2_5V" class="0">
              <segment>
                <pinref part="U2" gate="G$1" pin="P6" />
                <wire x1="39.92" y1="215.08" x2="27.220000000000002" y2="215.08" width="0.1524" layer="91" />
                <label x="27.220000000000002" y="215.08" size="1.0" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="A3_5V" class="0">
              <segment>
                <pinref part="U2" gate="G$1" pin="P8" />
                <wire x1="88.18" y1="235.4" x2="100.88000000000001" y2="235.4" width="0.1524" layer="91" />
                <label x="100.88000000000001" y="235.4" size="1.0" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="A4_5V" class="0">
              <segment>
                <pinref part="U2" gate="G$1" pin="P11" />
                <wire x1="88.18" y1="230.32" x2="100.88000000000001" y2="230.32" width="0.1524" layer="91" />
                <label x="100.88000000000001" y="230.32" size="1.0" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="A5_5V" class="0">
              <segment>
                <pinref part="U2" gate="G$1" pin="P13" />
                <wire x1="88.18" y1="225.24" x2="100.88000000000001" y2="225.24" width="0.1524" layer="91" />
                <label x="100.88000000000001" y="225.24" size="1.0" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="A6_5V" class="0">
              <segment>
                <pinref part="U2" gate="G$1" pin="P15" />
                <wire x1="88.18" y1="220.16" x2="100.88000000000001" y2="220.16" width="0.1524" layer="91" />
                <label x="100.88000000000001" y="220.16" size="1.0" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="A7_5V" class="0">
              <segment>
                <pinref part="U2" gate="G$1" pin="P17" />
                <wire x1="88.18" y1="215.08" x2="100.88000000000001" y2="215.08" width="0.1524" layer="91" />
                <label x="100.88000000000001" y="215.08" size="1.0" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="A8_5V" class="0">
              <segment>
                <pinref part="U3" gate="G$1" pin="P2" />
                <wire x1="154.92" y1="225.24" x2="142.22" y2="225.24" width="0.1524" layer="91" />
                <label x="142.22" y="225.24" size="1.0" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="A9_5V" class="0">
              <segment>
                <pinref part="U3" gate="G$1" pin="P4" />
                <wire x1="154.92" y1="220.16" x2="142.22" y2="220.16" width="0.1524" layer="91" />
                <label x="142.22" y="220.16" size="1.0" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="A10_5V" class="0">
              <segment>
                <pinref part="U3" gate="G$1" pin="P6" />
                <wire x1="154.92" y1="215.08" x2="142.22" y2="215.08" width="0.1524" layer="91" />
                <label x="142.22" y="215.08" size="1.0" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="A11_5V" class="0">
              <segment>
                <pinref part="U3" gate="G$1" pin="P8" />
                <wire x1="203.18" y1="235.4" x2="215.88" y2="235.4" width="0.1524" layer="91" />
                <label x="215.88" y="235.4" size="1.0" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="A12_5V" class="0">
              <segment>
                <pinref part="U3" gate="G$1" pin="P11" />
                <wire x1="203.18" y1="230.32" x2="215.88" y2="230.32" width="0.1524" layer="91" />
                <label x="215.88" y="230.32" size="1.0" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="A13_5V" class="0">
              <segment>
                <pinref part="U3" gate="G$1" pin="P13" />
                <wire x1="203.18" y1="225.24" x2="215.88" y2="225.24" width="0.1524" layer="91" />
                <label x="215.88" y="225.24" size="1.0" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="A14_5V" class="0">
              <segment>
                <pinref part="U3" gate="G$1" pin="P15" />
                <wire x1="203.18" y1="220.16" x2="215.88" y2="220.16" width="0.1524" layer="91" />
                <label x="215.88" y="220.16" size="1.0" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="A15_5V" class="0">
              <segment>
                <pinref part="U3" gate="G$1" pin="P17" />
                <wire x1="203.18" y1="215.08" x2="215.88" y2="215.08" width="0.1524" layer="91" />
                <label x="215.88" y="215.08" size="1.0" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="U6" gate="G$1" pin="P1" />
                <wire x1="154.92" y1="162.78" x2="142.22" y2="162.78" width="0.1524" layer="91" />
                <label x="142.22" y="162.78" size="1.0" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="A0_BUFFERED" class="0">
              <segment>
                <pinref part="U2" gate="G$1" pin="P18" />
                <wire x1="39.92" y1="222.7" x2="27.220000000000002" y2="222.7" width="0.1524" layer="91" />
                <label x="27.220000000000002" y="222.7" size="1.0" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="A1_BUFFERED" class="0">
              <segment>
                <pinref part="U2" gate="G$1" pin="P16" />
                <wire x1="39.92" y1="217.62" x2="27.220000000000002" y2="217.62" width="0.1524" layer="91" />
                <label x="27.220000000000002" y="217.62" size="1.0" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="A2_BUFFERED" class="0">
              <segment>
                <pinref part="U2" gate="G$1" pin="P14" />
                <wire x1="39.92" y1="212.54" x2="27.220000000000002" y2="212.54" width="0.1524" layer="91" />
                <label x="27.220000000000002" y="212.54" size="1.0" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="A3_BUFFERED" class="0">
              <segment>
                <pinref part="U2" gate="G$1" pin="P12" />
                <wire x1="88.18" y1="232.86" x2="100.88000000000001" y2="232.86" width="0.1524" layer="91" />
                <label x="100.88000000000001" y="232.86" size="1.0" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="A4_BUFFERED" class="0">
              <segment>
                <pinref part="U2" gate="G$1" pin="P9" />
                <wire x1="88.18" y1="227.78" x2="100.88000000000001" y2="227.78" width="0.1524" layer="91" />
                <label x="100.88000000000001" y="227.78" size="1.0" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="A5_BUFFERED" class="0">
              <segment>
                <pinref part="U2" gate="G$1" pin="P7" />
                <wire x1="88.18" y1="222.7" x2="100.88000000000001" y2="222.7" width="0.1524" layer="91" />
                <label x="100.88000000000001" y="222.7" size="1.0" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="A6_BUFFERED" class="0">
              <segment>
                <pinref part="U2" gate="G$1" pin="P5" />
                <wire x1="88.18" y1="217.62" x2="100.88000000000001" y2="217.62" width="0.1524" layer="91" />
                <label x="100.88000000000001" y="217.62" size="1.0" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="A7_BUFFERED" class="0">
              <segment>
                <pinref part="U2" gate="G$1" pin="P3" />
                <wire x1="88.18" y1="212.54" x2="100.88000000000001" y2="212.54" width="0.1524" layer="91" />
                <label x="100.88000000000001" y="212.54" size="1.0" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="A8_BUFFERED" class="0">
              <segment>
                <pinref part="U3" gate="G$1" pin="P18" />
                <wire x1="154.92" y1="222.7" x2="142.22" y2="222.7" width="0.1524" layer="91" />
                <label x="142.22" y="222.7" size="1.0" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="A9_BUFFERED" class="0">
              <segment>
                <pinref part="U3" gate="G$1" pin="P16" />
                <wire x1="154.92" y1="217.62" x2="142.22" y2="217.62" width="0.1524" layer="91" />
                <label x="142.22" y="217.62" size="1.0" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="A10_BUFFERED" class="0">
              <segment>
                <pinref part="U3" gate="G$1" pin="P14" />
                <wire x1="154.92" y1="212.54" x2="142.22" y2="212.54" width="0.1524" layer="91" />
                <label x="142.22" y="212.54" size="1.0" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="A11_BUFFERED" class="0">
              <segment>
                <pinref part="U3" gate="G$1" pin="P12" />
                <wire x1="203.18" y1="232.86" x2="215.88" y2="232.86" width="0.1524" layer="91" />
                <label x="215.88" y="232.86" size="1.0" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="A12_BUFFERED" class="0">
              <segment>
                <pinref part="U3" gate="G$1" pin="P9" />
                <wire x1="203.18" y1="227.78" x2="215.88" y2="227.78" width="0.1524" layer="91" />
                <label x="215.88" y="227.78" size="1.0" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="A13_BUFFERED" class="0">
              <segment>
                <pinref part="U3" gate="G$1" pin="P7" />
                <wire x1="203.18" y1="222.7" x2="215.88" y2="222.7" width="0.1524" layer="91" />
                <label x="215.88" y="222.7" size="1.0" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="A14_BUFFERED" class="0">
              <segment>
                <pinref part="U3" gate="G$1" pin="P5" />
                <wire x1="203.18" y1="217.62" x2="215.88" y2="217.62" width="0.1524" layer="91" />
                <label x="215.88" y="217.62" size="1.0" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="A15_BUFFERED" class="0">
              <segment>
                <pinref part="U3" gate="G$1" pin="P3" />
                <wire x1="203.18" y1="212.54" x2="215.88" y2="212.54" width="0.1524" layer="91" />
                <label x="215.88" y="212.54" size="1.0" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="RD_BUFFERED" class="0">
              <segment>
                <pinref part="U4" gate="G$1" pin="P4" />
                <wire x1="318.18" y1="217.62" x2="330.88" y2="217.62" width="0.1524" layer="91" />
                <label x="330.88" y="217.62" size="1.0" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="OE_N" class="0">
              <segment>
                <pinref part="U5" gate="G$1" pin="P19" />
                <wire x1="39.92" y1="165.32" x2="27.220000000000002" y2="165.32" width="0.1524" layer="91" />
                <label x="27.220000000000002" y="165.32" size="1.0" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="U6" gate="G$1" pin="P8" />
                <wire x1="203.18" y1="162.78" x2="215.88" y2="162.78" width="0.1524" layer="91" />
                <label x="215.88" y="162.78" size="1.0" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="D0_BUF" class="0">
              <segment>
                <pinref part="U5" gate="G$1" pin="P18" />
                <wire x1="39.92" y1="157.7" x2="27.220000000000002" y2="157.7" width="0.1524" layer="91" />
                <label x="27.220000000000002" y="157.7" size="1.0" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="D1_BUF" class="0">
              <segment>
                <pinref part="U5" gate="G$1" pin="P17" />
                <wire x1="39.92" y1="152.62" x2="27.220000000000002" y2="152.62" width="0.1524" layer="91" />
                <label x="27.220000000000002" y="152.62" size="1.0" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="D2_BUF" class="0">
              <segment>
                <pinref part="U5" gate="G$1" pin="P16" />
                <wire x1="39.92" y1="147.54" x2="27.220000000000002" y2="147.54" width="0.1524" layer="91" />
                <label x="27.220000000000002" y="147.54" size="1.0" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="D3_BUF" class="0">
              <segment>
                <pinref part="U5" gate="G$1" pin="P15" />
                <wire x1="88.18" y1="167.86" x2="100.88000000000001" y2="167.86" width="0.1524" layer="91" />
                <label x="100.88000000000001" y="167.86" size="1.0" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="D4_BUF" class="0">
              <segment>
                <pinref part="U5" gate="G$1" pin="P14" />
                <wire x1="88.18" y1="162.78" x2="100.88000000000001" y2="162.78" width="0.1524" layer="91" />
                <label x="100.88000000000001" y="162.78" size="1.0" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="D5_BUF" class="0">
              <segment>
                <pinref part="U5" gate="G$1" pin="P13" />
                <wire x1="88.18" y1="157.7" x2="100.88000000000001" y2="157.7" width="0.1524" layer="91" />
                <label x="100.88000000000001" y="157.7" size="1.0" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="D6_BUF" class="0">
              <segment>
                <pinref part="U5" gate="G$1" pin="P12" />
                <wire x1="88.18" y1="152.62" x2="100.88000000000001" y2="152.62" width="0.1524" layer="91" />
                <label x="100.88000000000001" y="152.62" size="1.0" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="D7_BUF" class="0">
              <segment>
                <pinref part="U5" gate="G$1" pin="P11" />
                <wire x1="88.18" y1="147.54" x2="100.88000000000001" y2="147.54" width="0.1524" layer="91" />
                <label x="100.88000000000001" y="147.54" size="1.0" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="NOT_ROM_READ" class="0">
              <segment>
                <pinref part="U6" gate="G$1" pin="P3" />
                <wire x1="154.92" y1="157.7" x2="142.22" y2="157.7" width="0.1524" layer="91" />
                <label x="142.22" y="157.7" size="1.0" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="U6" gate="G$1" pin="P4" />
                <wire x1="154.92" y1="155.16" x2="142.22" y2="155.16" width="0.1524" layer="91" />
                <label x="142.22" y="155.16" size="1.0" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="READ_BLOCK" class="0">
              <segment>
                <pinref part="U6" gate="G$1" pin="P6" />
                <wire x1="154.92" y1="150.08" x2="142.22" y2="150.08" width="0.1524" layer="91" />
                <label x="142.22" y="150.08" size="1.0" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="U6" gate="G$1" pin="P9" />
                <wire x1="203.18" y1="160.24" x2="215.88" y2="160.24" width="0.1524" layer="91" />
                <label x="215.88" y="160.24" size="1.0" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="READY_N" class="0">
              <segment>
                <pinref part="U6" gate="G$1" pin="P10" />
                <wire x1="203.18" y1="157.7" x2="215.88" y2="157.7" width="0.1524" layer="91" />
                <label x="215.88" y="157.7" size="1.0" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
          </nets>
        </sheet>
        <sheet>
          <plain>
            <text x="0" y="265" size="3.5" layer="94">GBC RP2350B ROM emulator Rev A.1 / Sheet 4 / bind footprints before PCB</text>
          </plain>
          <instances>
            <instance part="U8" gate="G$1" x="45" y="210" smashed="no" />
            <instance part="Q1" gate="G$1" x="160" y="210" smashed="no" />
            <instance part="Q2" gate="G$1" x="275" y="210" smashed="no" />
            <instance part="Y1" gate="G$1" x="45" y="145" smashed="no" />
            <instance part="R1" gate="G$1" x="160" y="145" smashed="no" />
            <instance part="R2" gate="G$1" x="275" y="145" smashed="no" />
            <instance part="R3" gate="G$1" x="45" y="80" smashed="no" />
            <instance part="R4" gate="G$1" x="160" y="80" smashed="no" />
            <instance part="R5" gate="G$1" x="275" y="80" smashed="no" />
            <instance part="R6" gate="G$1" x="45" y="15" smashed="no" />
            <instance part="R7" gate="G$1" x="160" y="15" smashed="no" />
            <instance part="R8" gate="G$1" x="275" y="15" smashed="no" />
          </instances>
          <busses />
          <nets>
            <net name="INVALID" class="0">
              <segment>
                <pinref part="R7" gate="G$1" pin="P2" />
                <wire x1="203.18" y1="22.46" x2="215.88" y2="22.46" width="0.1524" layer="91" />
                <label x="215.88" y="22.46" size="1.0" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="RESET_HOLD" class="0">
              <segment>
                <pinref part="Q1" gate="G$1" pin="P1" />
                <wire x1="154.92" y1="217.46" x2="142.22" y2="217.46" width="0.1524" layer="91" />
                <label x="142.22" y="217.46" size="1.0" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="R8" gate="G$1" pin="P2" />
                <wire x1="318.18" y1="22.46" x2="330.88" y2="22.46" width="0.1524" layer="91" />
                <label x="330.88" y="22.46" size="1.0" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="FW_READY" class="0">
              <segment>
                <pinref part="Q2" gate="G$1" pin="P1" />
                <wire x1="269.92" y1="217.46" x2="257.22" y2="217.46" width="0.1524" layer="91" />
                <label x="257.22" y="217.46" size="1.0" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="3V3" class="0">
              <segment>
                <pinref part="U8" gate="G$1" pin="P5" />
                <wire x1="88.18" y1="215.08" x2="100.88000000000001" y2="215.08" width="0.1524" layer="91" />
                <label x="100.88000000000001" y="215.08" size="1.0" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="R1" gate="G$1" pin="P1" />
                <wire x1="154.92" y1="152.46" x2="142.22" y2="152.46" width="0.1524" layer="91" />
                <label x="142.22" y="152.46" size="1.0" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="R3" gate="G$1" pin="P1" />
                <wire x1="39.92" y1="87.46" x2="27.220000000000002" y2="87.46" width="0.1524" layer="91" />
                <label x="27.220000000000002" y="87.46" size="1.0" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="R4" gate="G$1" pin="P1" />
                <wire x1="154.92" y1="87.46" x2="142.22" y2="87.46" width="0.1524" layer="91" />
                <label x="142.22" y="87.46" size="1.0" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="R5" gate="G$1" pin="P1" />
                <wire x1="269.92" y1="87.46" x2="257.22" y2="87.46" width="0.1524" layer="91" />
                <label x="257.22" y="87.46" size="1.0" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="R6" gate="G$1" pin="P1" />
                <wire x1="39.92" y1="22.46" x2="27.220000000000002" y2="22.46" width="0.1524" layer="91" />
                <label x="27.220000000000002" y="22.46" size="1.0" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="R7" gate="G$1" pin="P1" />
                <wire x1="154.92" y1="22.46" x2="142.22" y2="22.46" width="0.1524" layer="91" />
                <label x="142.22" y="22.46" size="1.0" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="R8" gate="G$1" pin="P1" />
                <wire x1="269.92" y1="22.46" x2="257.22" y2="22.46" width="0.1524" layer="91" />
                <label x="257.22" y="22.46" size="1.0" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="VREG_A" class="0">
              <segment>
                <pinref part="R1" gate="G$1" pin="P2" />
                <wire x1="203.18" y1="152.46" x2="215.88" y2="152.46" width="0.1524" layer="91" />
                <label x="215.88" y="152.46" size="1.0" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="GND" class="0">
              <segment>
                <pinref part="U8" gate="G$1" pin="P2" />
                <wire x1="39.92" y1="215.08" x2="27.220000000000002" y2="215.08" width="0.1524" layer="91" />
                <label x="27.220000000000002" y="215.08" size="1.0" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="Q1" gate="G$1" pin="P2" />
                <wire x1="154.92" y1="214.92" x2="142.22" y2="214.92" width="0.1524" layer="91" />
                <label x="142.22" y="214.92" size="1.0" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="Q2" gate="G$1" pin="P2" />
                <wire x1="269.92" y1="214.92" x2="257.22" y2="214.92" width="0.1524" layer="91" />
                <label x="257.22" y="214.92" size="1.0" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="Y1" gate="G$1" pin="P2" />
                <wire x1="39.92" y1="149.92" x2="27.220000000000002" y2="149.92" width="0.1524" layer="91" />
                <label x="27.220000000000002" y="149.92" size="1.0" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="Y1" gate="G$1" pin="P4" />
                <wire x1="88.18" y1="149.92" x2="100.88000000000001" y2="149.92" width="0.1524" layer="91" />
                <label x="100.88000000000001" y="149.92" size="1.0" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="XIN" class="0">
              <segment>
                <pinref part="Y1" gate="G$1" pin="P1" />
                <wire x1="39.92" y1="152.46" x2="27.220000000000002" y2="152.46" width="0.1524" layer="91" />
                <label x="27.220000000000002" y="152.46" size="1.0" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="XOUT" class="0">
              <segment>
                <pinref part="R2" gate="G$1" pin="P1" />
                <wire x1="269.92" y1="152.46" x2="257.22" y2="152.46" width="0.1524" layer="91" />
                <label x="257.22" y="152.46" size="1.0" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="RUN" class="0">
              <segment>
                <pinref part="R3" gate="G$1" pin="P2" />
                <wire x1="88.18" y1="87.46" x2="100.88000000000001" y2="87.46" width="0.1524" layer="91" />
                <label x="100.88000000000001" y="87.46" size="1.0" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="Q_D3" class="0">
              <segment>
                <pinref part="R6" gate="G$1" pin="P2" />
                <wire x1="88.18" y1="22.46" x2="100.88000000000001" y2="22.46" width="0.1524" layer="91" />
                <label x="100.88000000000001" y="22.46" size="1.0" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="Q_D2" class="0">
              <segment>
                <pinref part="R5" gate="G$1" pin="P2" />
                <wire x1="318.18" y1="87.46" x2="330.88" y2="87.46" width="0.1524" layer="91" />
                <label x="330.88" y="87.46" size="1.0" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="Q_CS" class="0">
              <segment>
                <pinref part="R4" gate="G$1" pin="P2" />
                <wire x1="203.18" y1="87.46" x2="215.88" y2="87.46" width="0.1524" layer="91" />
                <label x="215.88" y="87.46" size="1.0" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="5V" class="0">
              <segment>
                <pinref part="U8" gate="G$1" pin="P1" />
                <wire x1="39.92" y1="217.62" x2="27.220000000000002" y2="217.62" width="0.1524" layer="91" />
                <label x="27.220000000000002" y="217.62" size="1.0" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="U8" gate="G$1" pin="P3" />
                <wire x1="39.92" y1="212.54" x2="27.220000000000002" y2="212.54" width="0.1524" layer="91" />
                <label x="27.220000000000002" y="212.54" size="1.0" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="GB_RESET" class="0">
              <segment>
                <pinref part="Q1" gate="G$1" pin="P3" />
                <wire x1="203.18" y1="217.46" x2="215.88" y2="217.46" width="0.1524" layer="91" />
                <label x="215.88" y="217.46" size="1.0" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="READY_N" class="0">
              <segment>
                <pinref part="Q2" gate="G$1" pin="P3" />
                <wire x1="318.18" y1="217.46" x2="330.88" y2="217.46" width="0.1524" layer="91" />
                <label x="330.88" y="217.46" size="1.0" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="XTAL_OUT" class="0">
              <segment>
                <pinref part="Y1" gate="G$1" pin="P3" />
                <wire x1="88.18" y1="152.46" x2="100.88000000000001" y2="152.46" width="0.1524" layer="91" />
                <label x="100.88000000000001" y="152.46" size="1.0" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="R2" gate="G$1" pin="P2" />
                <wire x1="318.18" y1="152.46" x2="330.88" y2="152.46" width="0.1524" layer="91" />
                <label x="330.88" y="152.46" size="1.0" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
          </nets>
        </sheet>
        <sheet>
          <plain>
            <text x="0" y="265" size="3.5" layer="94">GBC RP2350B ROM emulator Rev A.1 / Sheet 5 / bind footprints before PCB</text>
          </plain>
          <instances>
            <instance part="R9" gate="G$1" x="45" y="210" smashed="no" />
            <instance part="R10" gate="G$1" x="160" y="210" smashed="no" />
            <instance part="R11" gate="G$1" x="275" y="210" smashed="no" />
            <instance part="R12" gate="G$1" x="45" y="145" smashed="no" />
            <instance part="R13" gate="G$1" x="160" y="145" smashed="no" />
            <instance part="R14" gate="G$1" x="275" y="145" smashed="no" />
            <instance part="R15" gate="G$1" x="45" y="80" smashed="no" />
            <instance part="R16" gate="G$1" x="160" y="80" smashed="no" />
            <instance part="R17" gate="G$1" x="275" y="80" smashed="no" />
            <instance part="R18" gate="G$1" x="45" y="15" smashed="no" />
            <instance part="L1" gate="G$1" x="160" y="15" smashed="no" />
            <instance part="C1" gate="G$1" x="275" y="15" smashed="no" />
          </instances>
          <busses />
          <nets>
            <net name="FW_READY" class="0">
              <segment>
                <pinref part="R9" gate="G$1" pin="P1" />
                <wire x1="39.92" y1="217.46" x2="27.220000000000002" y2="217.46" width="0.1524" layer="91" />
                <label x="27.220000000000002" y="217.46" size="1.0" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="1V1" class="0">
              <segment>
                <pinref part="L1" gate="G$1" pin="P2" />
                <wire x1="203.18" y1="22.46" x2="215.88" y2="22.46" width="0.1524" layer="91" />
                <label x="215.88" y="22.46" size="1.0" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="GND" class="0">
              <segment>
                <pinref part="R9" gate="G$1" pin="P2" />
                <wire x1="88.18" y1="217.46" x2="100.88000000000001" y2="217.46" width="0.1524" layer="91" />
                <label x="100.88000000000001" y="217.46" size="1.0" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="C1" gate="G$1" pin="P2" />
                <wire x1="318.18" y1="22.46" x2="330.88" y2="22.46" width="0.1524" layer="91" />
                <label x="330.88" y="22.46" size="1.0" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="LX" class="0">
              <segment>
                <pinref part="L1" gate="G$1" pin="P1" />
                <wire x1="154.92" y1="22.46" x2="142.22" y2="22.46" width="0.1524" layer="91" />
                <label x="142.22" y="22.46" size="1.0" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="5V" class="0">
              <segment>
                <pinref part="R10" gate="G$1" pin="P1" />
                <wire x1="154.92" y1="217.46" x2="142.22" y2="217.46" width="0.1524" layer="91" />
                <label x="142.22" y="217.46" size="1.0" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="C1" gate="G$1" pin="P1" />
                <wire x1="269.92" y1="22.46" x2="257.22" y2="22.46" width="0.1524" layer="91" />
                <label x="257.22" y="22.46" size="1.0" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="D0_GB" class="0">
              <segment>
                <pinref part="R11" gate="G$1" pin="P2" />
                <wire x1="318.18" y1="217.46" x2="330.88" y2="217.46" width="0.1524" layer="91" />
                <label x="330.88" y="217.46" size="1.0" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="D1_GB" class="0">
              <segment>
                <pinref part="R12" gate="G$1" pin="P2" />
                <wire x1="88.18" y1="152.46" x2="100.88000000000001" y2="152.46" width="0.1524" layer="91" />
                <label x="100.88000000000001" y="152.46" size="1.0" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="D2_GB" class="0">
              <segment>
                <pinref part="R13" gate="G$1" pin="P2" />
                <wire x1="203.18" y1="152.46" x2="215.88" y2="152.46" width="0.1524" layer="91" />
                <label x="215.88" y="152.46" size="1.0" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="D3_GB" class="0">
              <segment>
                <pinref part="R14" gate="G$1" pin="P2" />
                <wire x1="318.18" y1="152.46" x2="330.88" y2="152.46" width="0.1524" layer="91" />
                <label x="330.88" y="152.46" size="1.0" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="D4_GB" class="0">
              <segment>
                <pinref part="R15" gate="G$1" pin="P2" />
                <wire x1="88.18" y1="87.46" x2="100.88000000000001" y2="87.46" width="0.1524" layer="91" />
                <label x="100.88000000000001" y="87.46" size="1.0" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="D5_GB" class="0">
              <segment>
                <pinref part="R16" gate="G$1" pin="P2" />
                <wire x1="203.18" y1="87.46" x2="215.88" y2="87.46" width="0.1524" layer="91" />
                <label x="215.88" y="87.46" size="1.0" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="D6_GB" class="0">
              <segment>
                <pinref part="R17" gate="G$1" pin="P2" />
                <wire x1="318.18" y1="87.46" x2="330.88" y2="87.46" width="0.1524" layer="91" />
                <label x="330.88" y="87.46" size="1.0" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="D7_GB" class="0">
              <segment>
                <pinref part="R18" gate="G$1" pin="P2" />
                <wire x1="88.18" y1="22.46" x2="100.88000000000001" y2="22.46" width="0.1524" layer="91" />
                <label x="100.88000000000001" y="22.46" size="1.0" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="D0_BUF" class="0">
              <segment>
                <pinref part="R11" gate="G$1" pin="P1" />
                <wire x1="269.92" y1="217.46" x2="257.22" y2="217.46" width="0.1524" layer="91" />
                <label x="257.22" y="217.46" size="1.0" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="D1_BUF" class="0">
              <segment>
                <pinref part="R12" gate="G$1" pin="P1" />
                <wire x1="39.92" y1="152.46" x2="27.220000000000002" y2="152.46" width="0.1524" layer="91" />
                <label x="27.220000000000002" y="152.46" size="1.0" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="D2_BUF" class="0">
              <segment>
                <pinref part="R13" gate="G$1" pin="P1" />
                <wire x1="154.92" y1="152.46" x2="142.22" y2="152.46" width="0.1524" layer="91" />
                <label x="142.22" y="152.46" size="1.0" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="D3_BUF" class="0">
              <segment>
                <pinref part="R14" gate="G$1" pin="P1" />
                <wire x1="269.92" y1="152.46" x2="257.22" y2="152.46" width="0.1524" layer="91" />
                <label x="257.22" y="152.46" size="1.0" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="D4_BUF" class="0">
              <segment>
                <pinref part="R15" gate="G$1" pin="P1" />
                <wire x1="39.92" y1="87.46" x2="27.220000000000002" y2="87.46" width="0.1524" layer="91" />
                <label x="27.220000000000002" y="87.46" size="1.0" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="D5_BUF" class="0">
              <segment>
                <pinref part="R16" gate="G$1" pin="P1" />
                <wire x1="154.92" y1="87.46" x2="142.22" y2="87.46" width="0.1524" layer="91" />
                <label x="142.22" y="87.46" size="1.0" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="D6_BUF" class="0">
              <segment>
                <pinref part="R17" gate="G$1" pin="P1" />
                <wire x1="269.92" y1="87.46" x2="257.22" y2="87.46" width="0.1524" layer="91" />
                <label x="257.22" y="87.46" size="1.0" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="D7_BUF" class="0">
              <segment>
                <pinref part="R18" gate="G$1" pin="P1" />
                <wire x1="39.92" y1="22.46" x2="27.220000000000002" y2="22.46" width="0.1524" layer="91" />
                <label x="27.220000000000002" y="22.46" size="1.0" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="READY_N" class="0">
              <segment>
                <pinref part="R10" gate="G$1" pin="P2" />
                <wire x1="203.18" y1="217.46" x2="215.88" y2="217.46" width="0.1524" layer="91" />
                <label x="215.88" y="217.46" size="1.0" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
          </nets>
        </sheet>
        <sheet>
          <plain>
            <text x="0" y="265" size="3.5" layer="94">GBC RP2350B ROM emulator Rev A.1 / Sheet 6 / bind footprints before PCB</text>
          </plain>
          <instances>
            <instance part="C2" gate="G$1" x="45" y="210" smashed="no" />
            <instance part="C3" gate="G$1" x="160" y="210" smashed="no" />
            <instance part="C4" gate="G$1" x="275" y="210" smashed="no" />
            <instance part="C5" gate="G$1" x="45" y="145" smashed="no" />
            <instance part="C6" gate="G$1" x="160" y="145" smashed="no" />
            <instance part="C7" gate="G$1" x="275" y="145" smashed="no" />
            <instance part="C8" gate="G$1" x="45" y="80" smashed="no" />
            <instance part="C9" gate="G$1" x="160" y="80" smashed="no" />
            <instance part="C10" gate="G$1" x="275" y="80" smashed="no" />
            <instance part="C11" gate="G$1" x="45" y="15" smashed="no" />
            <instance part="C12" gate="G$1" x="160" y="15" smashed="no" />
            <instance part="C13" gate="G$1" x="275" y="15" smashed="no" />
          </instances>
          <busses />
          <nets>
            <net name="3V3" class="0">
              <segment>
                <pinref part="C2" gate="G$1" pin="P1" />
                <wire x1="39.92" y1="217.46" x2="27.220000000000002" y2="217.46" width="0.1524" layer="91" />
                <label x="27.220000000000002" y="217.46" size="1.0" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="C3" gate="G$1" pin="P1" />
                <wire x1="154.92" y1="217.46" x2="142.22" y2="217.46" width="0.1524" layer="91" />
                <label x="142.22" y="217.46" size="1.0" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="C4" gate="G$1" pin="P1" />
                <wire x1="269.92" y1="217.46" x2="257.22" y2="217.46" width="0.1524" layer="91" />
                <label x="257.22" y="217.46" size="1.0" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="C7" gate="G$1" pin="P1" />
                <wire x1="269.92" y1="152.46" x2="257.22" y2="152.46" width="0.1524" layer="91" />
                <label x="257.22" y="152.46" size="1.0" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="C8" gate="G$1" pin="P1" />
                <wire x1="39.92" y1="87.46" x2="27.220000000000002" y2="87.46" width="0.1524" layer="91" />
                <label x="27.220000000000002" y="87.46" size="1.0" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="C9" gate="G$1" pin="P1" />
                <wire x1="154.92" y1="87.46" x2="142.22" y2="87.46" width="0.1524" layer="91" />
                <label x="142.22" y="87.46" size="1.0" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="C10" gate="G$1" pin="P1" />
                <wire x1="269.92" y1="87.46" x2="257.22" y2="87.46" width="0.1524" layer="91" />
                <label x="257.22" y="87.46" size="1.0" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="C11" gate="G$1" pin="P1" />
                <wire x1="39.92" y1="22.46" x2="27.220000000000002" y2="22.46" width="0.1524" layer="91" />
                <label x="27.220000000000002" y="22.46" size="1.0" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="C12" gate="G$1" pin="P1" />
                <wire x1="154.92" y1="22.46" x2="142.22" y2="22.46" width="0.1524" layer="91" />
                <label x="142.22" y="22.46" size="1.0" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="C13" gate="G$1" pin="P1" />
                <wire x1="269.92" y1="22.46" x2="257.22" y2="22.46" width="0.1524" layer="91" />
                <label x="257.22" y="22.46" size="1.0" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="1V1" class="0">
              <segment>
                <pinref part="C6" gate="G$1" pin="P1" />
                <wire x1="154.92" y1="152.46" x2="142.22" y2="152.46" width="0.1524" layer="91" />
                <label x="142.22" y="152.46" size="1.0" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="VREG_A" class="0">
              <segment>
                <pinref part="C5" gate="G$1" pin="P1" />
                <wire x1="39.92" y1="152.46" x2="27.220000000000002" y2="152.46" width="0.1524" layer="91" />
                <label x="27.220000000000002" y="152.46" size="1.0" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="GND" class="0">
              <segment>
                <pinref part="C2" gate="G$1" pin="P2" />
                <wire x1="88.18" y1="217.46" x2="100.88000000000001" y2="217.46" width="0.1524" layer="91" />
                <label x="100.88000000000001" y="217.46" size="1.0" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="C3" gate="G$1" pin="P2" />
                <wire x1="203.18" y1="217.46" x2="215.88" y2="217.46" width="0.1524" layer="91" />
                <label x="215.88" y="217.46" size="1.0" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="C4" gate="G$1" pin="P2" />
                <wire x1="318.18" y1="217.46" x2="330.88" y2="217.46" width="0.1524" layer="91" />
                <label x="330.88" y="217.46" size="1.0" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="C5" gate="G$1" pin="P2" />
                <wire x1="88.18" y1="152.46" x2="100.88000000000001" y2="152.46" width="0.1524" layer="91" />
                <label x="100.88000000000001" y="152.46" size="1.0" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="C6" gate="G$1" pin="P2" />
                <wire x1="203.18" y1="152.46" x2="215.88" y2="152.46" width="0.1524" layer="91" />
                <label x="215.88" y="152.46" size="1.0" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="C7" gate="G$1" pin="P2" />
                <wire x1="318.18" y1="152.46" x2="330.88" y2="152.46" width="0.1524" layer="91" />
                <label x="330.88" y="152.46" size="1.0" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="C8" gate="G$1" pin="P2" />
                <wire x1="88.18" y1="87.46" x2="100.88000000000001" y2="87.46" width="0.1524" layer="91" />
                <label x="100.88000000000001" y="87.46" size="1.0" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="C9" gate="G$1" pin="P2" />
                <wire x1="203.18" y1="87.46" x2="215.88" y2="87.46" width="0.1524" layer="91" />
                <label x="215.88" y="87.46" size="1.0" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="C10" gate="G$1" pin="P2" />
                <wire x1="318.18" y1="87.46" x2="330.88" y2="87.46" width="0.1524" layer="91" />
                <label x="330.88" y="87.46" size="1.0" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="C11" gate="G$1" pin="P2" />
                <wire x1="88.18" y1="22.46" x2="100.88000000000001" y2="22.46" width="0.1524" layer="91" />
                <label x="100.88000000000001" y="22.46" size="1.0" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="C12" gate="G$1" pin="P2" />
                <wire x1="203.18" y1="22.46" x2="215.88" y2="22.46" width="0.1524" layer="91" />
                <label x="215.88" y="22.46" size="1.0" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="C13" gate="G$1" pin="P2" />
                <wire x1="318.18" y1="22.46" x2="330.88" y2="22.46" width="0.1524" layer="91" />
                <label x="330.88" y="22.46" size="1.0" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
          </nets>
        </sheet>
        <sheet>
          <plain>
            <text x="0" y="265" size="3.5" layer="94">GBC RP2350B ROM emulator Rev A.1 / Sheet 7 / bind footprints before PCB</text>
          </plain>
          <instances>
            <instance part="C14" gate="G$1" x="45" y="210" smashed="no" />
            <instance part="C15" gate="G$1" x="160" y="210" smashed="no" />
            <instance part="C16" gate="G$1" x="275" y="210" smashed="no" />
            <instance part="C17" gate="G$1" x="45" y="145" smashed="no" />
            <instance part="C18" gate="G$1" x="160" y="145" smashed="no" />
            <instance part="C19" gate="G$1" x="275" y="145" smashed="no" />
            <instance part="C20" gate="G$1" x="45" y="80" smashed="no" />
            <instance part="C21" gate="G$1" x="160" y="80" smashed="no" />
            <instance part="C22" gate="G$1" x="275" y="80" smashed="no" />
            <instance part="C23" gate="G$1" x="45" y="15" smashed="no" />
            <instance part="C24" gate="G$1" x="160" y="15" smashed="no" />
            <instance part="C25" gate="G$1" x="275" y="15" smashed="no" />
          </instances>
          <busses />
          <nets>
            <net name="3V3" class="0">
              <segment>
                <pinref part="C14" gate="G$1" pin="P1" />
                <wire x1="39.92" y1="217.46" x2="27.220000000000002" y2="217.46" width="0.1524" layer="91" />
                <label x="27.220000000000002" y="217.46" size="1.0" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="C15" gate="G$1" pin="P1" />
                <wire x1="154.92" y1="217.46" x2="142.22" y2="217.46" width="0.1524" layer="91" />
                <label x="142.22" y="217.46" size="1.0" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="C16" gate="G$1" pin="P1" />
                <wire x1="269.92" y1="217.46" x2="257.22" y2="217.46" width="0.1524" layer="91" />
                <label x="257.22" y="217.46" size="1.0" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="C17" gate="G$1" pin="P1" />
                <wire x1="39.92" y1="152.46" x2="27.220000000000002" y2="152.46" width="0.1524" layer="91" />
                <label x="27.220000000000002" y="152.46" size="1.0" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="C21" gate="G$1" pin="P1" />
                <wire x1="154.92" y1="87.46" x2="142.22" y2="87.46" width="0.1524" layer="91" />
                <label x="142.22" y="87.46" size="1.0" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="C22" gate="G$1" pin="P1" />
                <wire x1="269.92" y1="87.46" x2="257.22" y2="87.46" width="0.1524" layer="91" />
                <label x="257.22" y="87.46" size="1.0" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="C23" gate="G$1" pin="P1" />
                <wire x1="39.92" y1="22.46" x2="27.220000000000002" y2="22.46" width="0.1524" layer="91" />
                <label x="27.220000000000002" y="22.46" size="1.0" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="1V1" class="0">
              <segment>
                <pinref part="C18" gate="G$1" pin="P1" />
                <wire x1="154.92" y1="152.46" x2="142.22" y2="152.46" width="0.1524" layer="91" />
                <label x="142.22" y="152.46" size="1.0" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="C19" gate="G$1" pin="P1" />
                <wire x1="269.92" y1="152.46" x2="257.22" y2="152.46" width="0.1524" layer="91" />
                <label x="257.22" y="152.46" size="1.0" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="C20" gate="G$1" pin="P1" />
                <wire x1="39.92" y1="87.46" x2="27.220000000000002" y2="87.46" width="0.1524" layer="91" />
                <label x="27.220000000000002" y="87.46" size="1.0" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="GND" class="0">
              <segment>
                <pinref part="C14" gate="G$1" pin="P2" />
                <wire x1="88.18" y1="217.46" x2="100.88000000000001" y2="217.46" width="0.1524" layer="91" />
                <label x="100.88000000000001" y="217.46" size="1.0" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="C15" gate="G$1" pin="P2" />
                <wire x1="203.18" y1="217.46" x2="215.88" y2="217.46" width="0.1524" layer="91" />
                <label x="215.88" y="217.46" size="1.0" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="C16" gate="G$1" pin="P2" />
                <wire x1="318.18" y1="217.46" x2="330.88" y2="217.46" width="0.1524" layer="91" />
                <label x="330.88" y="217.46" size="1.0" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="C17" gate="G$1" pin="P2" />
                <wire x1="88.18" y1="152.46" x2="100.88000000000001" y2="152.46" width="0.1524" layer="91" />
                <label x="100.88000000000001" y="152.46" size="1.0" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="C18" gate="G$1" pin="P2" />
                <wire x1="203.18" y1="152.46" x2="215.88" y2="152.46" width="0.1524" layer="91" />
                <label x="215.88" y="152.46" size="1.0" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="C19" gate="G$1" pin="P2" />
                <wire x1="318.18" y1="152.46" x2="330.88" y2="152.46" width="0.1524" layer="91" />
                <label x="330.88" y="152.46" size="1.0" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="C20" gate="G$1" pin="P2" />
                <wire x1="88.18" y1="87.46" x2="100.88000000000001" y2="87.46" width="0.1524" layer="91" />
                <label x="100.88000000000001" y="87.46" size="1.0" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="C21" gate="G$1" pin="P2" />
                <wire x1="203.18" y1="87.46" x2="215.88" y2="87.46" width="0.1524" layer="91" />
                <label x="215.88" y="87.46" size="1.0" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="C22" gate="G$1" pin="P2" />
                <wire x1="318.18" y1="87.46" x2="330.88" y2="87.46" width="0.1524" layer="91" />
                <label x="330.88" y="87.46" size="1.0" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="C23" gate="G$1" pin="P2" />
                <wire x1="88.18" y1="22.46" x2="100.88000000000001" y2="22.46" width="0.1524" layer="91" />
                <label x="100.88000000000001" y="22.46" size="1.0" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="C24" gate="G$1" pin="P2" />
                <wire x1="203.18" y1="22.46" x2="215.88" y2="22.46" width="0.1524" layer="91" />
                <label x="215.88" y="22.46" size="1.0" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="C25" gate="G$1" pin="P2" />
                <wire x1="318.18" y1="22.46" x2="330.88" y2="22.46" width="0.1524" layer="91" />
                <label x="330.88" y="22.46" size="1.0" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="5V" class="0">
              <segment>
                <pinref part="C24" gate="G$1" pin="P1" />
                <wire x1="154.92" y1="22.46" x2="142.22" y2="22.46" width="0.1524" layer="91" />
                <label x="142.22" y="22.46" size="1.0" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="C25" gate="G$1" pin="P1" />
                <wire x1="269.92" y1="22.46" x2="257.22" y2="22.46" width="0.1524" layer="91" />
                <label x="257.22" y="22.46" size="1.0" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
          </nets>
        </sheet>
        <sheet>
          <plain>
            <text x="0" y="265" size="3.5" layer="94">GBC RP2350B ROM emulator Rev A.1 / Sheet 8 / bind footprints before PCB</text>
          </plain>
          <instances>
            <instance part="C26" gate="G$1" x="45" y="210" smashed="no" />
            <instance part="C27" gate="G$1" x="160" y="210" smashed="no" />
            <instance part="C28" gate="G$1" x="275" y="210" smashed="no" />
            <instance part="J2" gate="G$1" x="45" y="145" smashed="no" />
            <instance part="TP1" gate="G$1" x="160" y="145" smashed="no" />
            <instance part="TP2" gate="G$1" x="275" y="145" smashed="no" />
            <instance part="TP3" gate="G$1" x="45" y="80" smashed="no" />
            <instance part="TP4" gate="G$1" x="160" y="80" smashed="no" />
            <instance part="TP5" gate="G$1" x="275" y="80" smashed="no" />
            <instance part="TP6" gate="G$1" x="45" y="15" smashed="no" />
            <instance part="TP7" gate="G$1" x="160" y="15" smashed="no" />
            <instance part="TP8" gate="G$1" x="275" y="15" smashed="no" />
          </instances>
          <busses />
          <nets>
            <net name="INVALID" class="0">
              <segment>
                <pinref part="TP7" gate="G$1" pin="P1" />
                <wire x1="154.92" y1="22.46" x2="142.22" y2="22.46" width="0.1524" layer="91" />
                <label x="142.22" y="22.46" size="1.0" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="3V3" class="0">
              <segment>
                <pinref part="C26" gate="G$1" pin="P1" />
                <wire x1="39.92" y1="217.46" x2="27.220000000000002" y2="217.46" width="0.1524" layer="91" />
                <label x="27.220000000000002" y="217.46" size="1.0" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="J2" gate="G$1" pin="P2" />
                <wire x1="39.92" y1="150.08" x2="27.220000000000002" y2="150.08" width="0.1524" layer="91" />
                <label x="27.220000000000002" y="150.08" size="1.0" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="TP3" gate="G$1" pin="P1" />
                <wire x1="39.92" y1="87.46" x2="27.220000000000002" y2="87.46" width="0.1524" layer="91" />
                <label x="27.220000000000002" y="87.46" size="1.0" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="1V1" class="0">
              <segment>
                <pinref part="TP4" gate="G$1" pin="P1" />
                <wire x1="154.92" y1="87.46" x2="142.22" y2="87.46" width="0.1524" layer="91" />
                <label x="142.22" y="87.46" size="1.0" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="GND" class="0">
              <segment>
                <pinref part="C26" gate="G$1" pin="P2" />
                <wire x1="88.18" y1="217.46" x2="100.88000000000001" y2="217.46" width="0.1524" layer="91" />
                <label x="100.88000000000001" y="217.46" size="1.0" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="C27" gate="G$1" pin="P2" />
                <wire x1="203.18" y1="217.46" x2="215.88" y2="217.46" width="0.1524" layer="91" />
                <label x="215.88" y="217.46" size="1.0" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="C28" gate="G$1" pin="P2" />
                <wire x1="318.18" y1="217.46" x2="330.88" y2="217.46" width="0.1524" layer="91" />
                <label x="330.88" y="217.46" size="1.0" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="J2" gate="G$1" pin="P1" />
                <wire x1="39.92" y1="152.62" x2="27.220000000000002" y2="152.62" width="0.1524" layer="91" />
                <label x="27.220000000000002" y="152.62" size="1.0" layer="95" rot="R0" xref="no" />
              </segment>
              <segment>
                <pinref part="TP2" gate="G$1" pin="P1" />
                <wire x1="269.92" y1="152.46" x2="257.22" y2="152.46" width="0.1524" layer="91" />
                <label x="257.22" y="152.46" size="1.0" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="XIN" class="0">
              <segment>
                <pinref part="C27" gate="G$1" pin="P1" />
                <wire x1="154.92" y1="217.46" x2="142.22" y2="217.46" width="0.1524" layer="91" />
                <label x="142.22" y="217.46" size="1.0" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="SWCLK" class="0">
              <segment>
                <pinref part="J2" gate="G$1" pin="P4" />
                <wire x1="88.18" y1="152.62" x2="100.88000000000001" y2="152.62" width="0.1524" layer="91" />
                <label x="100.88000000000001" y="152.62" size="1.0" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="SWDIO" class="0">
              <segment>
                <pinref part="J2" gate="G$1" pin="P3" />
                <wire x1="39.92" y1="147.54" x2="27.220000000000002" y2="147.54" width="0.1524" layer="91" />
                <label x="27.220000000000002" y="147.54" size="1.0" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="RUN" class="0">
              <segment>
                <pinref part="J2" gate="G$1" pin="P5" />
                <wire x1="88.18" y1="150.08" x2="100.88000000000001" y2="150.08" width="0.1524" layer="91" />
                <label x="100.88000000000001" y="150.08" size="1.0" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="5V" class="0">
              <segment>
                <pinref part="TP1" gate="G$1" pin="P1" />
                <wire x1="154.92" y1="152.46" x2="142.22" y2="152.46" width="0.1524" layer="91" />
                <label x="142.22" y="152.46" size="1.0" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="RD_5V" class="0">
              <segment>
                <pinref part="TP5" gate="G$1" pin="P1" />
                <wire x1="269.92" y1="87.46" x2="257.22" y2="87.46" width="0.1524" layer="91" />
                <label x="257.22" y="87.46" size="1.0" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="OE_N" class="0">
              <segment>
                <pinref part="TP6" gate="G$1" pin="P1" />
                <wire x1="39.92" y1="22.46" x2="27.220000000000002" y2="22.46" width="0.1524" layer="91" />
                <label x="27.220000000000002" y="22.46" size="1.0" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="READY_N" class="0">
              <segment>
                <pinref part="TP8" gate="G$1" pin="P1" />
                <wire x1="269.92" y1="22.46" x2="257.22" y2="22.46" width="0.1524" layer="91" />
                <label x="257.22" y="22.46" size="1.0" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="XTAL_OUT" class="0">
              <segment>
                <pinref part="C28" gate="G$1" pin="P1" />
                <wire x1="269.92" y1="217.46" x2="257.22" y2="217.46" width="0.1524" layer="91" />
                <label x="257.22" y="217.46" size="1.0" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
          </nets>
        </sheet>
        <sheet>
          <plain>
            <text x="0" y="265" size="3.5" layer="94">GBC RP2350B ROM emulator Rev A.1 / Sheet 9 / bind footprints before PCB</text>
          </plain>
          <instances>
            <instance part="JP1" gate="G$1" x="45" y="210" smashed="no" />
            <instance part="JP2" gate="G$1" x="160" y="210" smashed="no" />
            <instance part="JP3" gate="G$1" x="275" y="210" smashed="no" />
            <instance part="JP4" gate="G$1" x="45" y="145" smashed="no" />
            <instance part="JP5" gate="G$1" x="160" y="145" smashed="no" />
            <instance part="JP6" gate="G$1" x="275" y="145" smashed="no" />
            <instance part="JP7" gate="G$1" x="45" y="80" smashed="no" />
            <instance part="JP8" gate="G$1" x="160" y="80" smashed="no" />
            <instance part="JP9" gate="G$1" x="275" y="80" smashed="no" />
          </instances>
          <busses />
          <nets>
            <net name="A0_RP" class="0">
              <segment>
                <pinref part="JP1" gate="G$1" pin="P2" />
                <wire x1="39.92" y1="214.92" x2="27.220000000000002" y2="214.92" width="0.1524" layer="91" />
                <label x="27.220000000000002" y="214.92" size="1.0" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="A1_RP" class="0">
              <segment>
                <pinref part="JP2" gate="G$1" pin="P2" />
                <wire x1="154.92" y1="214.92" x2="142.22" y2="214.92" width="0.1524" layer="91" />
                <label x="142.22" y="214.92" size="1.0" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="A2_RP" class="0">
              <segment>
                <pinref part="JP3" gate="G$1" pin="P2" />
                <wire x1="269.92" y1="214.92" x2="257.22" y2="214.92" width="0.1524" layer="91" />
                <label x="257.22" y="214.92" size="1.0" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="A3_RP" class="0">
              <segment>
                <pinref part="JP4" gate="G$1" pin="P2" />
                <wire x1="39.92" y1="149.92" x2="27.220000000000002" y2="149.92" width="0.1524" layer="91" />
                <label x="27.220000000000002" y="149.92" size="1.0" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="A4_RP" class="0">
              <segment>
                <pinref part="JP5" gate="G$1" pin="P2" />
                <wire x1="154.92" y1="149.92" x2="142.22" y2="149.92" width="0.1524" layer="91" />
                <label x="142.22" y="149.92" size="1.0" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="A5_RP" class="0">
              <segment>
                <pinref part="JP6" gate="G$1" pin="P2" />
                <wire x1="269.92" y1="149.92" x2="257.22" y2="149.92" width="0.1524" layer="91" />
                <label x="257.22" y="149.92" size="1.0" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="A6_RP" class="0">
              <segment>
                <pinref part="JP7" gate="G$1" pin="P2" />
                <wire x1="39.92" y1="84.92" x2="27.220000000000002" y2="84.92" width="0.1524" layer="91" />
                <label x="27.220000000000002" y="84.92" size="1.0" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="A7_RP" class="0">
              <segment>
                <pinref part="JP8" gate="G$1" pin="P2" />
                <wire x1="154.92" y1="84.92" x2="142.22" y2="84.92" width="0.1524" layer="91" />
                <label x="142.22" y="84.92" size="1.0" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="A8_RP" class="0">
              <segment>
                <pinref part="JP9" gate="G$1" pin="P2" />
                <wire x1="269.92" y1="84.92" x2="257.22" y2="84.92" width="0.1524" layer="91" />
                <label x="257.22" y="84.92" size="1.0" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="A0_5V" class="0">
              <segment>
                <pinref part="JP1" gate="G$1" pin="P3" />
                <wire x1="88.18" y1="217.46" x2="100.88000000000001" y2="217.46" width="0.1524" layer="91" />
                <label x="100.88000000000001" y="217.46" size="1.0" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="A1_5V" class="0">
              <segment>
                <pinref part="JP2" gate="G$1" pin="P3" />
                <wire x1="203.18" y1="217.46" x2="215.88" y2="217.46" width="0.1524" layer="91" />
                <label x="215.88" y="217.46" size="1.0" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="A2_5V" class="0">
              <segment>
                <pinref part="JP3" gate="G$1" pin="P3" />
                <wire x1="318.18" y1="217.46" x2="330.88" y2="217.46" width="0.1524" layer="91" />
                <label x="330.88" y="217.46" size="1.0" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="A3_5V" class="0">
              <segment>
                <pinref part="JP4" gate="G$1" pin="P3" />
                <wire x1="88.18" y1="152.46" x2="100.88000000000001" y2="152.46" width="0.1524" layer="91" />
                <label x="100.88000000000001" y="152.46" size="1.0" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="A4_5V" class="0">
              <segment>
                <pinref part="JP5" gate="G$1" pin="P3" />
                <wire x1="203.18" y1="152.46" x2="215.88" y2="152.46" width="0.1524" layer="91" />
                <label x="215.88" y="152.46" size="1.0" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="A5_5V" class="0">
              <segment>
                <pinref part="JP6" gate="G$1" pin="P3" />
                <wire x1="318.18" y1="152.46" x2="330.88" y2="152.46" width="0.1524" layer="91" />
                <label x="330.88" y="152.46" size="1.0" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="A6_5V" class="0">
              <segment>
                <pinref part="JP7" gate="G$1" pin="P3" />
                <wire x1="88.18" y1="87.46" x2="100.88000000000001" y2="87.46" width="0.1524" layer="91" />
                <label x="100.88000000000001" y="87.46" size="1.0" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="A7_5V" class="0">
              <segment>
                <pinref part="JP8" gate="G$1" pin="P3" />
                <wire x1="203.18" y1="87.46" x2="215.88" y2="87.46" width="0.1524" layer="91" />
                <label x="215.88" y="87.46" size="1.0" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="A8_5V" class="0">
              <segment>
                <pinref part="JP9" gate="G$1" pin="P3" />
                <wire x1="318.18" y1="87.46" x2="330.88" y2="87.46" width="0.1524" layer="91" />
                <label x="330.88" y="87.46" size="1.0" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="A0_BUFFERED" class="0">
              <segment>
                <pinref part="JP1" gate="G$1" pin="P1" />
                <wire x1="39.92" y1="217.46" x2="27.220000000000002" y2="217.46" width="0.1524" layer="91" />
                <label x="27.220000000000002" y="217.46" size="1.0" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="A1_BUFFERED" class="0">
              <segment>
                <pinref part="JP2" gate="G$1" pin="P1" />
                <wire x1="154.92" y1="217.46" x2="142.22" y2="217.46" width="0.1524" layer="91" />
                <label x="142.22" y="217.46" size="1.0" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="A2_BUFFERED" class="0">
              <segment>
                <pinref part="JP3" gate="G$1" pin="P1" />
                <wire x1="269.92" y1="217.46" x2="257.22" y2="217.46" width="0.1524" layer="91" />
                <label x="257.22" y="217.46" size="1.0" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="A3_BUFFERED" class="0">
              <segment>
                <pinref part="JP4" gate="G$1" pin="P1" />
                <wire x1="39.92" y1="152.46" x2="27.220000000000002" y2="152.46" width="0.1524" layer="91" />
                <label x="27.220000000000002" y="152.46" size="1.0" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="A4_BUFFERED" class="0">
              <segment>
                <pinref part="JP5" gate="G$1" pin="P1" />
                <wire x1="154.92" y1="152.46" x2="142.22" y2="152.46" width="0.1524" layer="91" />
                <label x="142.22" y="152.46" size="1.0" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="A5_BUFFERED" class="0">
              <segment>
                <pinref part="JP6" gate="G$1" pin="P1" />
                <wire x1="269.92" y1="152.46" x2="257.22" y2="152.46" width="0.1524" layer="91" />
                <label x="257.22" y="152.46" size="1.0" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="A6_BUFFERED" class="0">
              <segment>
                <pinref part="JP7" gate="G$1" pin="P1" />
                <wire x1="39.92" y1="87.46" x2="27.220000000000002" y2="87.46" width="0.1524" layer="91" />
                <label x="27.220000000000002" y="87.46" size="1.0" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="A7_BUFFERED" class="0">
              <segment>
                <pinref part="JP8" gate="G$1" pin="P1" />
                <wire x1="154.92" y1="87.46" x2="142.22" y2="87.46" width="0.1524" layer="91" />
                <label x="142.22" y="87.46" size="1.0" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="A8_BUFFERED" class="0">
              <segment>
                <pinref part="JP9" gate="G$1" pin="P1" />
                <wire x1="269.92" y1="87.46" x2="257.22" y2="87.46" width="0.1524" layer="91" />
                <label x="257.22" y="87.46" size="1.0" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
          </nets>
        </sheet>
        <sheet>
          <plain>
            <text x="0" y="265" size="3.5" layer="94">GBC RP2350B ROM emulator Rev A.1 / Sheet 10 / bind footprints before PCB</text>
          </plain>
          <instances>
            <instance part="JP10" gate="G$1" x="45" y="210" smashed="no" />
            <instance part="JP11" gate="G$1" x="160" y="210" smashed="no" />
            <instance part="JP12" gate="G$1" x="275" y="210" smashed="no" />
            <instance part="JP13" gate="G$1" x="45" y="145" smashed="no" />
            <instance part="JP14" gate="G$1" x="160" y="145" smashed="no" />
            <instance part="JP15" gate="G$1" x="275" y="145" smashed="no" />
            <instance part="JP16" gate="G$1" x="45" y="80" smashed="no" />
            <instance part="JP17" gate="G$1" x="160" y="80" smashed="no" />
          </instances>
          <busses />
          <nets>
            <net name="A9_RP" class="0">
              <segment>
                <pinref part="JP10" gate="G$1" pin="P2" />
                <wire x1="39.92" y1="214.92" x2="27.220000000000002" y2="214.92" width="0.1524" layer="91" />
                <label x="27.220000000000002" y="214.92" size="1.0" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="A10_RP" class="0">
              <segment>
                <pinref part="JP11" gate="G$1" pin="P2" />
                <wire x1="154.92" y1="214.92" x2="142.22" y2="214.92" width="0.1524" layer="91" />
                <label x="142.22" y="214.92" size="1.0" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="A11_RP" class="0">
              <segment>
                <pinref part="JP12" gate="G$1" pin="P2" />
                <wire x1="269.92" y1="214.92" x2="257.22" y2="214.92" width="0.1524" layer="91" />
                <label x="257.22" y="214.92" size="1.0" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="A12_RP" class="0">
              <segment>
                <pinref part="JP13" gate="G$1" pin="P2" />
                <wire x1="39.92" y1="149.92" x2="27.220000000000002" y2="149.92" width="0.1524" layer="91" />
                <label x="27.220000000000002" y="149.92" size="1.0" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="A13_RP" class="0">
              <segment>
                <pinref part="JP14" gate="G$1" pin="P2" />
                <wire x1="154.92" y1="149.92" x2="142.22" y2="149.92" width="0.1524" layer="91" />
                <label x="142.22" y="149.92" size="1.0" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="A14_RP" class="0">
              <segment>
                <pinref part="JP15" gate="G$1" pin="P2" />
                <wire x1="269.92" y1="149.92" x2="257.22" y2="149.92" width="0.1524" layer="91" />
                <label x="257.22" y="149.92" size="1.0" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="A15_RP" class="0">
              <segment>
                <pinref part="JP16" gate="G$1" pin="P2" />
                <wire x1="39.92" y1="84.92" x2="27.220000000000002" y2="84.92" width="0.1524" layer="91" />
                <label x="27.220000000000002" y="84.92" size="1.0" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="RD_RP" class="0">
              <segment>
                <pinref part="JP17" gate="G$1" pin="P2" />
                <wire x1="154.92" y1="84.92" x2="142.22" y2="84.92" width="0.1524" layer="91" />
                <label x="142.22" y="84.92" size="1.0" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="RD_5V" class="0">
              <segment>
                <pinref part="JP17" gate="G$1" pin="P3" />
                <wire x1="203.18" y1="87.46" x2="215.88" y2="87.46" width="0.1524" layer="91" />
                <label x="215.88" y="87.46" size="1.0" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="A9_5V" class="0">
              <segment>
                <pinref part="JP10" gate="G$1" pin="P3" />
                <wire x1="88.18" y1="217.46" x2="100.88000000000001" y2="217.46" width="0.1524" layer="91" />
                <label x="100.88000000000001" y="217.46" size="1.0" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="A10_5V" class="0">
              <segment>
                <pinref part="JP11" gate="G$1" pin="P3" />
                <wire x1="203.18" y1="217.46" x2="215.88" y2="217.46" width="0.1524" layer="91" />
                <label x="215.88" y="217.46" size="1.0" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="A11_5V" class="0">
              <segment>
                <pinref part="JP12" gate="G$1" pin="P3" />
                <wire x1="318.18" y1="217.46" x2="330.88" y2="217.46" width="0.1524" layer="91" />
                <label x="330.88" y="217.46" size="1.0" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="A12_5V" class="0">
              <segment>
                <pinref part="JP13" gate="G$1" pin="P3" />
                <wire x1="88.18" y1="152.46" x2="100.88000000000001" y2="152.46" width="0.1524" layer="91" />
                <label x="100.88000000000001" y="152.46" size="1.0" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="A13_5V" class="0">
              <segment>
                <pinref part="JP14" gate="G$1" pin="P3" />
                <wire x1="203.18" y1="152.46" x2="215.88" y2="152.46" width="0.1524" layer="91" />
                <label x="215.88" y="152.46" size="1.0" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="A14_5V" class="0">
              <segment>
                <pinref part="JP15" gate="G$1" pin="P3" />
                <wire x1="318.18" y1="152.46" x2="330.88" y2="152.46" width="0.1524" layer="91" />
                <label x="330.88" y="152.46" size="1.0" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="A15_5V" class="0">
              <segment>
                <pinref part="JP16" gate="G$1" pin="P3" />
                <wire x1="88.18" y1="87.46" x2="100.88000000000001" y2="87.46" width="0.1524" layer="91" />
                <label x="100.88000000000001" y="87.46" size="1.0" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="A9_BUFFERED" class="0">
              <segment>
                <pinref part="JP10" gate="G$1" pin="P1" />
                <wire x1="39.92" y1="217.46" x2="27.220000000000002" y2="217.46" width="0.1524" layer="91" />
                <label x="27.220000000000002" y="217.46" size="1.0" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="A10_BUFFERED" class="0">
              <segment>
                <pinref part="JP11" gate="G$1" pin="P1" />
                <wire x1="154.92" y1="217.46" x2="142.22" y2="217.46" width="0.1524" layer="91" />
                <label x="142.22" y="217.46" size="1.0" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="A11_BUFFERED" class="0">
              <segment>
                <pinref part="JP12" gate="G$1" pin="P1" />
                <wire x1="269.92" y1="217.46" x2="257.22" y2="217.46" width="0.1524" layer="91" />
                <label x="257.22" y="217.46" size="1.0" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="A12_BUFFERED" class="0">
              <segment>
                <pinref part="JP13" gate="G$1" pin="P1" />
                <wire x1="39.92" y1="152.46" x2="27.220000000000002" y2="152.46" width="0.1524" layer="91" />
                <label x="27.220000000000002" y="152.46" size="1.0" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="A13_BUFFERED" class="0">
              <segment>
                <pinref part="JP14" gate="G$1" pin="P1" />
                <wire x1="154.92" y1="152.46" x2="142.22" y2="152.46" width="0.1524" layer="91" />
                <label x="142.22" y="152.46" size="1.0" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="A14_BUFFERED" class="0">
              <segment>
                <pinref part="JP15" gate="G$1" pin="P1" />
                <wire x1="269.92" y1="152.46" x2="257.22" y2="152.46" width="0.1524" layer="91" />
                <label x="257.22" y="152.46" size="1.0" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="A15_BUFFERED" class="0">
              <segment>
                <pinref part="JP16" gate="G$1" pin="P1" />
                <wire x1="39.92" y1="87.46" x2="27.220000000000002" y2="87.46" width="0.1524" layer="91" />
                <label x="27.220000000000002" y="87.46" size="1.0" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
            <net name="RD_BUFFERED" class="0">
              <segment>
                <pinref part="JP17" gate="G$1" pin="P1" />
                <wire x1="154.92" y1="87.46" x2="142.22" y2="87.46" width="0.1524" layer="91" />
                <label x="142.22" y="87.46" size="1.0" layer="95" rot="R0" xref="no" />
              </segment>
            </net>
          </nets>
        </sheet>
      </sheets>
      <errors />
    </schematic>
  </drawing>
</eagle>