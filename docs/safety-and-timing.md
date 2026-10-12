# 電気・タイミング設計根拠とリリース条件

## 一次資料

- [Raspberry Pi RP2350 データシート 2026-10-01版](https://pip.raspberrypi.com/documents/RP-008373-DS-rp2350-datasheet.pdf) §14.9 / Appendix D。公式取得した原資料を確認。FT GPIO は0–39、ADC GPIO40–47は5V耐性対象外。FT は IOVDD=3.3Vの通電中5.5V許容、無通電は最大3.63V。最大定格と推奨動作条件を混同しない。
- [RP2350 A4 / RP2354 の公式発表](https://www.raspberrypi.com/news/rp2350-a4-rp2354-and-a-new-hacking-challenge/)。5V入力中は IOVDD を維持。RP2354 は外部フラッシュを省けるが、コア電源・クロック・バス保護を省けない。
- [WaveShare Core2350B 公式回路図](https://files.waveshare.com/wiki/Core2350B0/Core2350B.pdf)。ME6217C33M5G、VBUS→3V3、12MHz水晶、16MiB W25Q128、PSRAM_CS=GP47。GP47 は本設計で使用しない。
- [WaveShare 公式 Wiki](https://www.waveshare.com/wiki/Core2350B0) と [寸法図](https://www.waveshare.com/w/upload/d/de/800px-Core2350B0-details-size.jpg)。25.4×25.4mm、孔中心最大22.86mm、2.54mm pitch。64端子フットプリントは写真ラベルと回路図を照合して生成した。B0掲載資料はシリーズ共通の資料であり、**購入するB2の実物で孔・pin・高さの最終確認が必要**。
- [SN74LVC245A](https://www.ti.com/lit/ds/symlink/sn74lvc245a.pdf)：3.3V動作、5.5V入力、Ioff。U1–3はA→B固定、/OE=0、入力側Aは本体、BはMCU。5Vバス入力を無通電のMCUに直結しない。
- [SN74LVC8T245](https://www.ti.com/lit/ds/symlink/sn74lvc8t245.pdf)：VCCA=3.3V、VCCB=本体5V、DIR=1、/OEでHi-Z。両電源のisolation / Ioff / sequencing仕様を確認。U4のA側はMCU、B側は本体。
- [SN74LVC1G10](https://www.ti.com/lit/ds/symlink/sn74lvc1g10.pdf) と [SN74LVC1G332](https://www.ti.com/lit/ds/symlink/sn74lvc1g332.pdf)：3入力NANDとORで読出し遮断。
- [Nintendo Game Boy Programming Manual v1.1](https://archive.org/download/GameBoyProgManVer1.1/GameBoyProgManVer1.1.pdf)：p.15、CPU machine-cycle は通常0.954µs / CGB倍速0.477µs。高速度ROMの必要性、32KiB ROM-onlyの登録仕様を確認。**この資料から cartridge /RD 最小幅やsetup/hold保証値は確定できていない**。
- [Nintendo Game Boy Color Service Manual（原資料の公開ミラー）](https://fr.ifixit.com/Document/XfUohIuYorCPxUTY/gameboy_color_service_manual.pdf)：本体DC/DC出力5V、最低動作4.6V、8.4MHz master clock。Chromaticの電源・入力閾値の保証とは別。

## 出力競合・起動・電源

`/OE = /RD OR A15 OR NAND(VALID, /WR, /RESET)`。条件がすべて読出し時だけ U4 が有効。/CS は外部RAM選択なので、ROM選択条件には使わずNC。VINもNC。

VALID はMCUのGP28に外部4.7kΩ pulldownを付け、**サイクルごと**に0→正しいデータ準備後1→0。単なる「ブート完了」信号ではない。/RDとA15とWRとRESETは外部ゲートが非同期で遮断する。U4 /OEには10kΩ pullup。

Q1は本体/RESETのopen-drain保持。GP29を10kΩで3V3へpullupし、MCU開始前はRESET保持、標準ファームでも保持。これは本体内部resetに対する完全なpower-on timing保証ではない。3V3立上がり前の短い窓と、モジュールboot/reset中の状態を実測して確認する。

D1(SS14)は本体5V→モジュールVBUSへの片方向供給。モジュールのUSB VBUSが本体へ戻る経路を防ぐ。U4のVCCBはダイオード前の本体5V。USB給電時に本体が無通電ならU4の電源isolationが必要。アダプタはモジュール取り外し状態での書込みを推奨し、接続状態の二重給電は検証対象。ホットスワップ保証なし。

電圧降下・ME6217のdropout・モジュール最大消費電流・本体5V電源余裕・SS14逆漏れは実測未確認。3V3出力を本体5V入力にそのまま接続する構成ではない。

A2 stepping のE9は入力が中間電圧の時、典型約120µA sourceし2.2V付近に保持される問題。入力は低インピーダンスのLVCバッファで駆動。VALID pulldownは4.7kΩ。出力GPIOのinput-enableは無効化。A4だけを入手したとの保証はしない。

## 集合抵抗 + 5V pullup 案との比較

5V pullup4.7kΩでlow時は約1.06mA/bit、8bitすべてlowなら8.5mA。10kΩなら0.5mA/bit、合計4mA。仮にバス容量50pFなら10–90%立上りは `2.2RC` より517ns(4.7k) / 1.1µs(10k)。容量は仮定であり実測値ではない。CGB倍速のmachine-cycle0.477µsに対し、これを十分な速度とは断定できない。5VへのpullupはRP2350無通電時の制限にも抵触し得るため採用しない。

## タイミング検証

現在の PIO / CPU FIFO ループは実験の土台。最悪遅延の上限を保証していない。150MHzクロック自体で「高速ROM」を保証しない。入力同期、PIO命令、CPU SRAM lookup、FIFO、外部LVC伝搬、U4出力enable、33Ωと実負荷の遅延を積算し、実機で /RD→有効データと読出し終了→Hi-Zを測る。

条件：正常/倍速、連続読出し、A15境界、書込み、RESET、USB接続/切断、brownout、MCU watchdog、電源立上/立下、全8bitスイッチ、ChromaticとCGB。遅い応答が次のサイクルへ混入する実験ファームの問題を解消しない限り動作対応とは表現しない。
