# GBC用 RP2350B ROMエミュレーションカートリッジ — Rev A.1

2026-10-13更新 / 32 KiB / MBCなし / セーブRAMなし / GBC実機・通常/倍速の評価用

**具体的な電気設計と回路図データを作成した。製造承認版ではない。** EasyEDA取り込み、部品フットプリント照合、PCB配線/ERC/DRC、SDKコンパイル、実機タイミング、ケース嵌合は未検証。Gerber・CPLは含まない。特にPIO+DMAがGBC倍速の最短読み出しに間に合うことは、この段階では保証できない。

## 1. 設計を固定する

- ROM空間：0000–7FFF。A0–A14が32768バイトを選び、A15=1では出力禁止。
- カートリッジ端子 `/CS` は外部RAM用。ROMの選択には使わない。
- RP2350B A4、150 MHz、PIO0 SM0、DMA 2チャネル。USB/LED/スイッチ/SD/外部SRAMは省略。
- 外付け2 MiB QSPI NORから起動し、32 KiB ROMを128 KiBの32bitテーブルに展開。読み出し経路にXIPフラッシュを使わない。
- 安定性優先の既定構成：入力レベル変換（バイパス選択可）、5Vデータ出力、ハードウェアOEゲート、起動時RESET保持を残す。絶対部品数最小ではない。
- 基板0.8 mm、初版4層（信号/GND/電源/信号）、表面のみ実装。部品数58（IC8、MOSFET2、水晶1、L1、R18、C28）。J1/J2は基板パッド、TPは8個の銅箔。

## 2. 回路図・接続資料

`design/gbc_rom.sch` は自作EAGLE 6+ XML回路図。EasyEDA Std/ProのEAGLEインポートで取り込む想定。**取り込み操作自体は未実施。** ライブラリは内蔵、全ピンはラベル付きネットで接続。JP1〜17は専用3padパッケージを内蔵。他の回路図シンボルは論理用で、製造用パッケージを持たない。EasyEDAのフットプリントマネージャでBOMに従って実部品を割り当てる。

- `schematic_1.svg`：カートリッジ端子
- `schematic_2.svg`：RP2350B全81パッドとQSPI NOR
- `schematic_3.svg`：入力バッファ・データバッファ・OE論理
- `schematic_4.svg`〜`schematic_8.svg`：電源・起動・水晶・抵抗・コンデンサ・SWD
- `schematic_9.svg`/`schematic_10.svg`：入力バイパス選択JP1〜17（専用3padフットプリントを回路図に内蔵）
- `bypass_jumpers.csv` / `assembly_variants.csv`：経路選択と実装・未実装の差分
- `pin_netlist.csv`：各部品の物理ピン番号・ピン名・接続先。回路図と同じデータから生成。

同名ネットはページ間で接続。`NC`は未接続。RP2350BのEPはこの資料ではpad81として扱い、採用EasyEDAライブラリのEP番号と必ず照合する。

### バス回路

```
U2,U3: SN74LVC244A / VCC=3V3 / 2つのOE=GND
  GB A0..A15 → LVC入力 → JP1..16 pad1
  GB A0..A15 → JP1..16 pad3（DIRECT）
  JP1..16 pad2 → RP GPIO0..15
U4: SN74LVC1G17 / VCC=3V3
  GB /RD → A(pin2) → Y(pin4) → JP17 pad1
  GB /RD → JP17 pad3（DIRECT）
  JP17 pad2 → GPIO24
U5: SN74AHCT245 / VCC=5V / DIR(pin1)=5V
  GPIO16..23 → A1..A8 → B1..B8 → 33Ω×8 → GB D0..D7
```

LVCは5.5V入力耐性とIoffを持つ型番に固定。AHCTはTTL入力なので3.3V信号で5V出力を駆動できる。74HC245への置換は禁止（5V動作時のVIH条件が違う）。U5の方向は必ずA→B。データをRPへ戻す経路はない。

### 出力許可

```
NOT_ROM_READ = A15_5V OR RD_5V       U6: pins1,2 → 3
READ_BLOCK   = NOT_ROM_READ OR INVALID  pins4,5 → 6
OE_N         = READ_BLOCK OR READY_N    pins9,10 → 8
```

U6はSN74AHCT32、5V動作。INVALIDはPIO GPIO25で、1=未準備、0=今回のデータ有効。READY_Nは5Vへ10kΩプルアップし、Q2(BSS138)だけがGNDに落とす。GPIO27 FW_READY=1のときQ2がオン。Q2ゲートは100kΩでGNDに固定するため、MCU未起動/リセット時は出力禁止になる。GPIO25には3V3へ10kΩ。未使用4番ゲートの両入力はGND、出力はNC。

| A15 | /RD | INVALID | READY_N | U5出力 |
|---:|---:|---:|---:|---|
| 0 | 0 | 0 | 0 | 今回のROMデータ |
| その他 | | | | High-Z |

/RD上昇またはA15上昇で外付け論理が即座に出力を止める。PIOの待ち/割込み遅延にバス開放を依存させない。FW_READYは全体の起動ゲート、INVALIDは毎アクセスの鮮度ゲートであり、両方必要。

### 起動・RESET

Q1 BSS138: G=GPIO26 RESET_HOLD、S=GND、D=GB `/RES`。ゲートを3V3へ10kΩプルアップ。起動中はQ1がRESETをLowに保持し、ファーム準備後GPIO26=0で開放。**GB側にHighを出力しない。** 既存GBのRESETともワイヤードORで共存する。

MCU RUNとGB /RESは直結しない。直結するとMCUがGBを止めている間に自分も起動できない。MCU RUNは3V3へ10kΩ、SWDパッドから手動でLowにできる。

RESETがLowになってからの実機起動再開、立ち上がり初期のQ1導通、電源瞬断時のREADY_NによるOE遮断を実測する。本設計はホットスワップを対象にしない。

### 電源・コアレギュレータ

- GB VDD → 5V。U5/U6は5Vから直接給電。
- U8 TLV75533PDBVR: 1 IN=5V、2 GND、3 EN=5V、4 NC、5 OUT=3V3。入力C1=4.7µF、出力C2=4.7µF。
- RP2350B IOVDD(5,15,24,29,41,50,60,76)、QSPI_IOVDD69、USB_OTP_VDD68、ADC_AVDD59 →3V3。各ピン100nF、C7〜C17。
- VREG_VIN64→3V3、C3+C4=4.7µF×2を直近。VREG_AVDD61は3V3からR1=33Ωを介して給電、C5=4.7µFを直近。
- VREG_LX63 → L1=3.3µH → 1V1。L1はRaspberry Pi参照設計のAOTA-B201610S3R3-101-T。**LXを3V3やGNDに直結しない。**
- VREG_FB65→1V1、DVDD10/32/51→1V1。C6=4.7µF、C18〜20=100nFを各DVDD直近。
- VREG_PGND62とEP→GND。スイッチング電流の帰路を短くし、LX直下の銅を参照設計に従って抜く。R1/C5をL1から離す。レギュレータ周辺を公式レイアウトから転用してB品ピン番号に合わせる。
- U2〜U7各1個100nF。4.7µFはDCバイアス後の実効容量を確認、少なくとも10V定格品を選ぶ。

LDO損失は(5−3.3)×I_3V3。例：I_3V3=80mAなら136mW（電流値は仮定、実測値ではない）。カートリッジ5Vは4.5〜5.5Vの設計範囲。GBC低電池時にも4.5V以上を維持するか確認。AHCT動作範囲を下回れば動作保証対象外。

### QSPI・水晶・書込み

U7 W25Q16JVSSIQ（SOIC8、208mil幅）: 1 /CS→U1-75、2 IO1→74、3 IO2→73、4 GND、5 IO0→72、6 CLK→71、7 IO3→70、8 VCC→3V3。/CS、IO2、IO3に各10kΩの3V3プルアップ。USBは使わず、U1-66/67はNC。USB_OTP_VDDは接続が必要。

Y1=12MHz、CL=8pF、3225 4pad。XIN30→Y1-1、XOUT31→R2=1kΩ→Y1-3。Y1-2/4はGND。両端各12pFが初期値（等価負荷6pF＋寄生2pF）。採用水晶のESR/CLと実装寄生に合わせて調整。BOMの水晶は仕様指定であり発注MPN未確定。

J2 SWDパッド: 1 GND、2 3V3センス、3 SWDIO34、4 SWCLK33、5 RUN35。カートリッジを本体から外してTP1へ5Vを給電し、Debug Probe等でSWD書込み。3V3センス端子から外部給電しない。RPのQSPI NOR書込み用フラッシュアルゴリズム対応を確認。USB書込み部品は省略している。

## 3. RP2350B・GBピン割当

| 用途 | GB端子 | RP GPIO | QFN80物理ピン |
|---|---|---|---|
| A0–A3 | 6–9 | 0–3 | 77,78,79,80 |
| A4–A7 | 10–13 | 4–7 | 1,2,3,4 |
| A8–A11 | 14–17 | 8–11 | 6,7,8,9 |
| A12–A15 | 18–21 | 12–15 | 11,12,13,14 |
| D0–D7出力 | 22–29 | 16–23 | 16,17,18,19,20,21,22,23 |
| /RD入力 | 4 | 24 | 25 |
| INVALID | U6-5 | 25 | 26 |
| RESET_HOLD | Q1-G→GB30 | 26 | 27 |
| FW_READY | Q2-G | 27 | 28 |

A入力はJPでBUFFEREDまたはINPUT_DIRECTを選択、D出力は必ず前述AHCTバッファを介する。GB端子1=5V、32=GND。2 PHI、3 /WR、5 /CS、31音声入力はNC。GB30 /RESだけQ1へ。GPIO28〜47はNC、SDKで内部プルを解除/入力無効にする実装を追加できるが、バス用GPIOの設定は変更しない。

## 4. BOMとJLCPCB

詳細は`design/BOM.csv`。LCSC部品番号は**未照合のためUNRESOLVED**。現在庫、A4ステッピング、パッケージ、拡張部品扱いはJLC発注時に確認する。推測のC番号は入れていない。

| Ref | 数 | 発注品/仕様 | パッケージ |
|---|---:|---|---|
| U1 | 1 | RP2350B A4 | QFN80 10×10mm、0.4mm pitch、EP |
| U2/U3 | 2 | SN74LVC244APWR | TSSOP20 |
| U4 | 1 | SN74LVC1G17DBVR | SOT23-5 |
| U5 | 1 | SN74AHCT245PWR | TSSOP20 |
| U6 | 1 | SN74AHCT32PWR | TSSOP14 |
| U7 | 1 | W25Q16JVSSIQ | SOIC8 208mil |
| U8 | 1 | TLV75533PDBVR | SOT23-5 |
| Q1/Q2 | 2 | BSS138 | SOT23、G1/S2/D3の品種を確認 |
| L1 | 1 | AOTA-B201610S3R3-101-T | 2016、3.3µH |
| Y1 | 1 | 12MHz、CL8pF、ESR仕様照合 | 3225 4pin |
| R1/R11–18 | 9 | 33Ω | 0402 |
| R2 | 1 | 1kΩ | 0402 |
| R3–8/R10 | 7 | 10kΩ | 0402 |
| R9 | 1 | 100kΩ | 0402 |
| C1–6 | 6 | 4.7µF、10V以上、実効容量確認 | 0603 |
| C7–26 | 20 | 100nF、10V以上、X7R | 0402 |
| C27/C28 | 2 | 12pF、C0G | 0402 |

JLC設定案：FR-4、0.8mm、4層、1oz、表面実装。外形/実装点数によって面付け・レール必要。実装後のレール切断は端子面を傷めない方向で設計。配線完成後にGerberとBOM+CPLを出力する。CPLは未配置状態から生成しない。

2層への削減は可能だがQFNのGND/DVDD、内蔵降圧回路、端子バスの帰路を成立させてから判断。初版では4層を指定する。

## 5. 外形と端子

**1.27mmピッチではない。** 中央の端子2〜31は1.50mmピッチ。Gekkioの実測・試験済みGB-CARTライブラリの端子座標を回転して用いた。両端の電源端子は幅/中心位置が違う。

原点は接点面を正面に見た左下、X右/Y上、挿入端がY=0。pin1を左とする。実機/既存カートリッジのpin1側と照合して裏表を確定する。無配線の機械試作で逆挿入を防ぐ。

| 項目 | 寸法/指定 |
|---|---|
| 基板外形案 | 53.4×31.2mm、厚0.8mm |
| pin1中心 | (3.30,3.00)mm、幅1.30×長6.00mm |
| pin2中心 | (4.95,3.25)mm、幅1.00×長5.50mm |
| pin2〜31 | X=4.95+1.50×(pin−2)、Y=3.25mm |
| pin32中心 | (50.10,3.00)mm、幅1.30×長6.00mm |
| 接点層 | 接点面片側のみ、裏面は対向パッドを作らない |
| 部品禁止領域 | Y<8.0mm、ケース内部突起位置も追加 |
| 表面処理 | 繰返し挿抜は硬質金を優先、ENIGは評価試作用 |
| マスク | 端子全体を開口。端子にシルク/ビア/ハンダ禁止 |

`edge_fingers.csv` に32個の座標、`outline_provisional.dxf` にmm単位の外形、`outline.svg` に見取り図を含む。**外形は自作ケース用の矩形案で、純正GBCケース互換の認定外形ではない。** ネジ穴・切欠き・ボス逃げはケース現物または信頼できるケースCADなしに確定できないため入れていない。無配線0.8mm板で嵌合を先に検証する。

JLCの0.8mm板金手指仕様は角度/残厚条件がある。独自に「30°で切ればよい」と固定せず、接点実効長が残ることを確認して工場と指定を合わせる。標準JLCメニューで硬質金が選べない場合は見積り対応または製造先変更が必要。ENIGを硬質金と呼ばない。

参考配置：U1は中央(27,20)、U2/U3は左側(9,13)/(9,22)、U5は端子D側(43,12)、U6(43,21)、U4(18,11)、U7はU1近傍、U8は5V端子側。これは配置指針でCPL座標ではない。RP電源回路優先で最終配置を調整する。バスは短く、GND帰路を分断しない。D端子の33ΩはU5出力直近に置く。

## 6. PIO/DMA構成

PIO単体には任意SRAMアドレスを読み出す命令がない。PIOはアドレス捕捉・データ出力を担当し、DMAがSRAMから値を返す。

1. ROMを`uint32_t rom_words[32768]`へ展開（下位8bitがROM値）。128KiB境界に配置。
2. Yに`table_base >> 17`を保持。IN方向はleft。
3. /RD立下りを待ち、A15=0を確認。ISR=Y→`in pins,15`→`in null,2`で`table_base | (A<<2)`を生成。
4. RX FIFO→DMA_PTR→DMA_DATAの`AL3_READ_ADDR_TRIG`へ32bitポインタを書く。
5. DMA_DATAがSRAMの1wordをTX FIFOへ転送。終了時にDMA_PTRをchain起動。各チャネルcount=1が再トリガでリロードされる。
6. PIO `pull block`→`out pins,8`。出力データを置いた次のクロックでINVALIDを0にする。
7. /RD上昇までデータ保持。外付けOEは/RD上昇で先に開放、PIOもINVALID=1に戻る。

PIO0 SM0、IN GPIO0..14、JMP GPIO15、OUT GPIO16..23、WAIT absolute GPIO24、side-set GPIO25。PIOのGPIO baseは0。2段入力同期を維持。安易なINPUT_SYNC_BYPASSによる短縮はメタステーブルと混合アドレスの検証なしに採用しない。

CPUはコピーと初期化だけ。バス経路でIRQ、USB、ログ、フラッシュerase/program、他DMAを実行しない。テーブル配置の128KiBアライメントをlink mapで確認。SRAM全520KiBの中にアライメントpaddingも含めて収まるか確認する。

### ファーム資料

`firmware/rom_bus.pio`、`main.c`、`CMakeLists.txt`、`make_rom_header.py`を同梱。**参照実装でありSDKコンパイル/PIOアセンブル/実機テスト未実施。** 自分の32KiB ROMを用意し、firmwareディレクトリで以下を実行する。

```
python3 make_rom_header.py own_game.gbc
export PICO_SDK_PATH=/path/to/pico-sdk
cmake -S . -B build
cmake --build build
```

カスタムboard header `boards/gbc_rom.h`はRP2350B（PICO_RP2350A=0）、2MiB NOR、W25Q080系stage2、QSPI分周4を指定。実際のW25Q16JVとのフラッシュ互換性を確認する。CコードはGPIO28〜47をバスに使わない。ROM内容は同梱しない。

ROMヘッダ：0147=00 ROM ONLY、0148=00 32KiB、0149=00 RAMなし。0143は用途に合わせ80（DMG互換CGB対応）またはC0（CGB専用）。Nintendoロゴ、ヘッダチェックサム、エントリポイントを実機で検証。生成スクリプトはサイズ/ROM属性/ヘッダチェックサムだけ検証する。

### タイミングの未確定部分

150MHzの1周期=6.67ns。/RDの入力同期に約2〜3周期、WAIT通過からデータ有効までPIO約9周期＋DMA待ち。外付けLVC、AHCT、バス容量の遅延も加算する。これは概算の構造説明で、DMA待ちの上限やGBC受信点を確定する値ではない。PHIの周期だけから有効読出し時間を決めない。

重要な制約：この参照SMは1回の/RD Low中に1個のアドレスを捕捉し、同じアクセス中にアドレスが変わらないことを仮定する。DMA応答が/RD Low期間を越えた場合、今回データはOEで遮断されても次サイクルを取り逃がす可能性がある。タイミング合格が機能成立の必須条件で、Low中にアドレスが変わる波形が見つかったら連続アドレス監視方式へ変更する。

倍速で不足する場合は、150MHz以上へのオーバークロックを前提にせず、/RD以前のアドレス変化を使う先行取得、SRAMバンク分離/バス優先度、PIO命令短縮、入力同期の設計見直しを行う。それでも間に合わなければ、この構成では倍速非対応とし、外付けパラレルROM/SRAMまたはCPLDを追加する設計が必要。

## 7. 電圧・タイミング・機械の合格項目

| 試験 | 測定・合格条件 |
|---|---|
| 電源OFF静的検査 | 5V/GND、3V3/GNDの短絡なし。U1全電源・EPと各IC方向照合 |
| 限流電源初回 | 本体から外して5V給電。3V3=3.135〜3.465Vを目標、DVDDは公式150MHz設定値内。異常発熱/発振なし |
| 内蔵降圧 | LX波形、DVDDリップル、負荷変動応答。メーカー指定範囲とレイアウト条件内 |
| 入力 | GB出力最大電圧とリングを含めLVC入力5.5V以下、RP入力は3V3ドメイン許容範囲内 |
| データ出力 | 5V駆動、受信側VIH/VILに余裕。U5最大負荷/伝搬遅延条件で評価。3V3直結で代替しない |
| コールドブート | GB RESETが保持され、ROM展開/DMA/PIO完了後のみ開放。100回連続起動 |
| 未準備/リセット | READY_N=1またはINVALID=1でU5 High-Z。MCU RUN Low/ウォッチドッグも確認 |
| OE立上がり開放 | /RD↑またはA15↑→D High-Zまでを測定。次バスマスタ駆動前に十分な余裕があること |
| 読出し応答 | /RD↓からD全bit確定まで、GBがサンプルする時点に対してsetup余裕を確保。目標余裕20ns以上、かつ実測有効窓の20%以上。これは設計目標でGB公式仕様値ではない |
| アドレス捕捉 | /RD↓前後のA安定時間、A15と/RDの同期差、0x3FFF→4000と0x7FFF境界、全bit切替を測定 |
| 禁止領域 | VRAM8000–9FFF、RAM A000–BFFF、WRAM等C000–FFFF、/WR時にU5が駆動しない |
| 連続アクセス | 最短/RD High間隔、ROM命令fetch、ランダム読出し、連続32768byte、DMAチェーン再起動を確認 |
| DMA/同期 | OAM DMAとCGB VRAM DMA/HDMA中のROM読出しも確認。通常/倍速双方でサイクル取り逃がしなし |
| 負荷・低電池 | /RD窓と電源を最小/最大負荷、低電池、温度で測定。150MHzのみで合格すること |
| 応答遅延故障 | 意図的にDMAを止めるとデータ出力なし。遅延再開時に誤った次アドレスへ古いデータを返さないか確認 |
| ケース・接点 | 無配線0.8mm試験板でpin1向き、端子接触長、部品高さ、ボス/ネジ、抜差し抵抗を確認 |

200MHz以上/1GS/s程度のオシロを目安に、短いGNDスプリングで/RD、A15、INVALID、OE_N、Dを同時観測。ロジアナだけでナノ秒の立上がり・リンギング・High-Zは判断しない。通常約4.19MHz/倍速約8.39MHzのCPUクロックと、端子PHI約1.05/2.10MHzは別物。実測した最短データ有効窓を基準にする。

測定値欄は未記入でよいが、量産承認時には電圧最小/最大、t_access最大、t_disable最大、setup最小、電源電流最大、通常/倍速・本体リビジョンを記録する。

## 8. さらに部品を減らす条件付き版

最新RP2350資料ではGPIO0〜27などFTパッドが通電条件下で5V入力対応となっている。ただしIOVDDが給電されていることが条件で、ADC/USB/QSPI等へ一般化できない。よってU2/U3/U4を省く版は、5Vバスが出る前のIOVDD立上がり/切断順序と過渡電圧を保証した場合だけ採用する。Rev A.1では直結経路の選択パッドを設けた。ただし通電順序保証は未検証なので既定はBUFFEREDであり、DIRECTは条件を確認した評価時だけ選ぶ。データ出力の5V AHCTと外付けOE論理は残す。

2MiB NORの代わりにRP2354Bへ変更すれば外付けNORを削減できるが、RP2350B指定から外れるため今回のBOMには採用しない。

## 9. 参照元（取得2026-10-12）

- Raspberry Pi RP2350 datasheet：物理ピン表、FT通電条件、PIO/DMA、内蔵降圧参照回路、E9/A4。
  https://pip-assets.raspberrypi.com/categories/1214-rp2350/documents/RP-008373-DS-2-rp2350-datasheet.pdf
- RP2350 A4・5V耐性公式説明：https://www.raspberrypi.com/news/rp2350-a4-rp2354-and-a-new-hacking-challenge/
- メーカー設計ファイル：https://www.raspberrypi.com/documentation/microcontrollers/microcontroller-chips.html
- gbdev Pan Docs端子/ヘッダ：https://github.com/gbdev/pandocs/blob/master/src/External_Connectors.md
  https://github.com/gbdev/pandocs/blob/master/src/The_Cartridge_Header.md
- Gekkio実測端子フットプリント：https://github.com/Gekkio/gekkio-eagle-libs/blob/master/Gekkio-gameboy.lbr
- TIデータシート：
  https://www.ti.com/lit/ds/symlink/sn74lvc244a.pdf
  https://www.ti.com/lit/ds/symlink/sn74lvc1g17.pdf
  https://www.ti.com/lit/ds/symlink/sn74ahct245.pdf
  https://www.ti.com/lit/ds/symlink/sn74ahct32.pdf
  https://www.ti.com/lit/ds/symlink/tlv755p.pdf
- EasyEDA公式EAGLE import：https://docs.easyeda.com/en/Import/Import-Eagle/
  https://prodocs.easyeda.com/en/import-export/import-eagle/
- JLC0.8mm端子面取り仕様：https://m.jlc.com/portal/q1i35254.html

`validation.txt` は実施したデータ整合性チェックのみを記録している。実機を測定したかのようなタイミング/電流値は含めていない。


## 10. Rev A.1 — 入力レベルシフタのバイパス機構

A0〜A15と/RDの計17本に3padハンダジャンパを追加。切替は必ず本体電源OFF・外部給電OFFで行い、旧ブリッジを除去してから新しい経路を接続する。BUFFEREDとDIRECTを同時に接続しない。特にバッファを実装したまま1-2と2-3を両方接続すると、5VバスがLVCの3.3V出力に短絡する。

| モード | JP1〜17 | U2/U3/U4 | C21/C22/C23 | U5 AHCT245 |
|---|---|---|---|---|
| BUFFERED（既定） | 1-2だけブリッジ | 実装 | 実装 | 実装 |
| INPUT_DIRECT（入力バイパス） | 2-3だけブリッジ | 実装してもよい／省略可 | バッファ省略時は省略可 | 実装必須 |

- JP1〜16はA0〜A15、JP17は/RD。pad1=BUFFERED出力、pad2=MCU、pad3=GB生信号。RP側ネット名を`A*_RP`/`RD_RP`とし、DIRECT時に5Vになり得ることを反映した。
- ジャンパ寸法：中心間1.00mm、各pad0.60×1.20mm、X=-1/0/+1mm。パッド間隙0.40mm。銅箔は初期開放、ハンダで選択する。工場への組立指示は既定1-2、3padにステンシル開口なし。シルクは`B M D`とし、pad1側マークを置く。
- 入力全17本を同じモードに揃える。ハンダ盛りや残渣で全3pad接続になっていないことを導通検査。変更後に0x0000/0x7FFFとランダムアドレスの読出しを再検証。
- DIRECTでもU6のOE論理とQ1/Q2はそのまま残る。PIOピン割当・ファームを切り替える必要はない。バッファ伝搬遅延が減るが、最大応答時間と同期のアドレス安定時間は再測定する。

### DIRECTを選べる電圧条件

GPIO0〜15/24はFTデジタル入力であり、IOVDDを3.3Vドメインとして給電した条件で5V入力耐性を利用する。RP2350B A4を使用し、内部pullを無効、GPIO入力として運用。**IOVDD=0時に5Vを印加するのは不可。** ハンダジャンパ、直列抵抗、GB /RES保持だけではこの条件を保証できない。

本体ON/OFF、電池抜去、低電池、外部SWD給電時の順序について、最初にBUFFEREDモードで3V3とGB A/RDの立上がり・立下がりを同時観測する。5V信号が出る時点でIOVDDが許容給電範囲にあること、およびIOVDDを失う前に5V信号がなくなることを確認できた条件だけDIRECTに切り替える。通常の本体給電でこの順序を保証できない場合はBUFFEREDを使う。メーカーは過電圧入力時にIOVDDを給電したまま保つことを明示している。

カートリッジを本体から外した評価では、RP側IOVDDの安定後に外部バス発生器を有効にし、外部バス発生器を止めてからRP電源を切る。この順序を確実に制御できるためDIRECT経路の評価ができる。

### 出力側をバイパスしない理由

U5は5Vレベルへの変換に加え、ハードウェアでのデータバス開放を担当する。GPIOをGB Dバスへ直結すると、今回のPIOは出力有効を固定しているためGBの書込み/別アドレス読み出しと競合する。3.3V Highの受信保証も別途必要になる。よってRev A.1のバイパスは**入力側限定**とし、D0〜D7にはバイパスパッドを作らない。入力DIRECTモードの実装部品数は52（U2/U3/U4とC21/C22/C23を省略した場合）、BUFFEREDは58。17個のJPは銅箔パッドなので実装部品数には含めない。

### 追加検証

1. 各JPについて1-2または2-3の片方だけ導通、非選択端子への短絡なし。
2. INPUT_DIRECT+DNPでU1入力とGB端子が導通、LVC出力側は分離。BUFFEREDではRPと生5Vネット間に銅箔直結なし。
3. バイパス選択によってIOVDDの電源条件が保証されたと解釈しない。電源順序は未実測。
4. 通常/倍速、アドレス全bit切替、読出し間隔、リング、High/Lowしきい値を両モードで再測定。
