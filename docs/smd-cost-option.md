# SMD量産案と部品調達

推奨候補は **RP2354B（QFN-80、内蔵フラッシュ）**。2MiBの内蔵フラッシュは初期32KiB ROMと制御コードに十分。ただし実行中はROMデータをSRAMに置き、外部バスの応答をフラッシュ読み出しに依存させない。RP2350Bは16MiBなど外部フラッシュ容量が必要な用途の候補。

今回完成を進めているキャリアでは Core2350B2 の既存電源・水晶・Flashを使い、モジュールを手実装する。単体SMD版の回路図/基板/ガーバーは未作成。キャリアのガーバーを単体版と呼ばない。

## 親タスクによる JLC 実装ライブラリ読取り（2026-10-12 11:35 UTC）

|候補|JLC品番|在庫 / 注文可能|1個 / 10個単価USD|区分|
|---|---|---:|---:|---|
|RP2354B|C39843328|3,588 / 3,333|1.5180 / 1.4463|Extended / Economic & Standard SMT|
|RP2350B|C42415655|2,602 / 2,397|1.2818 / 1.1923|Extended / Economic & Standard SMT|
|ABM8-272-T3|C20625731|7,866 / 6,976|10個 0.5098|水晶|
|AOTA-B201610S3R3-101-T|C42411119|0 / 0|欠品|公式指定コア用コイル|

[RP2354B JLC](https://jlcpcb.com/partdetail/RaspberryPi-RP2354B/C39843328) / [RP2350B JLC](https://jlcpcb.com/partdetail/RaspberryPi-RP2350B/C42415655) / [指定コイル](https://jlcpcb.com/partdetail/AbraconLlc-AOTA_B201610S3R3_101T/C42411119)。価格は部品単価だけで、Extended部品セットアップ・基板・実装・送料を含まない。LCSC小売在庫をJLC実装在庫と扱わない。親タスクがライブ画面で確認した値であり、本フォルダ作成時に再取得した値ではない。

単体版は3V3 LDO、コア電源フィルタ、指定水晶と容量、RP2354BのdecouplingとSWD/USBを含める。入力バッファ3個、データ変換1個、読出しゲート2個、RESET保持、逆給電防止は安全要件として継承する。指定コイルが欠品のため、代替コイルの極性・L・DCR・Isat・過渡条件・参照layoutを検証するか、Raspberry Pi公式ガイドに沿った外部DVDD供給案を別途設計する。未検証代替品でBOM調達可能とはしない。

キャリア BOM の LCSC欄は VERIFY。各MPNのJLC実装在庫・代替・rotationは未確認。Core2350B2-KitはPCBAのSMT部品として登録せず手実装。採用する実物とシェル適合を確認してからSMD版を進める。
