# R0配線修正版の検証 — 実機未検証・発注不可

KiCad 10.0.6 / 2026-10-12。現在のネイティブPCBを正本として検証しました。ルール値は初回の0.15mm clearance / 0.15mm track / 0.6mm via / 0.3mm drill / 0.25mm hole-edge間隔を維持。除外設定による合格化はしていません。

|検査|結果|
|---|---|
|ERC|エラー 0、警告 0|
|DRC|違反 0、未接続 0|
|KiCad schematic parity|問題 0（型番/Assembly/NCのネット識別も同期）|
|回路図export-netlist対部品仕様|不一致 0（1枚回路図の / 接頭辞を正規化）|
|出力許可32条件のtruth table|許可はROM読出し条件の1組のみ|
|Gerber/Excellon|14ファイル、mm単位・終端・非空・SHA256を確認|
|BOM/CPL|29部品、PCBA27部品の集合一致|
|寸法/端子/GPIO|mechanical.jsonで57.5×52.5mm/0.8mm/4層、接点32個、module64孔、配置/ネット不一致0|
|ターゲットファームbuild|未実施。ARM GCC15.3.1は既存、Pico SDK未検出。CMakeを実行しSDK不足で停止|
|実機/組立/発注|未実施|

ERC/DRC/ネット整合のソフトウェア検査は合格。詳細は erc-final.rpt / drc-parity.json / mechanical.json。これは基板が実機で安全に動作するという保証ではありません。

初回R0は未接続28、DRCエラー3/警告12でした。保存版は r0-retained/ とGit履歴に残しています。修正版では実際の銅配線を追加・修正し、重複穴と未使用配線/銅を削除。GND1は銅面へ直接接続してthermal starvationを解消したため、モジュール手実装時の熱容量を考慮してください。サーマル判定ルールを無効にしていません。

外形は機械データ上の寸法を確認した試作矩形。WaveShare公式シリーズ図の25.4mm/2.54mmと孔配置は照合済み。購入するB2の実物、純正/Chromaticシェル、挿入深さ/端子左右/面取り/hard-gold/接触圧/高さは未確認です。

製造出力の検査は出力セットと基本構文の確認で、独立CAMレビューやJLCアップロード審査ではありません。CPLの実機・JLC向けrotationと全BOMの実装在庫は未確認。発注停止条件として残っています。

Pico SDKを取得するならRaspberry Pi公式ソースをworkspace内へ取得する必要があります。新規ソフトの取得/導入は自動で行っていません。標準ファームはVALID=0/RESET保持。実験PIOの期限切れ読出し混入問題、最悪応答時間、起動/USB二重給電/brownout/Hi-Zの実測を解決するまでは動作完成扱いにしません。

単体RP2354B版は未作成。外部1.1V供給の公式構成と具体的LDO候補/熱計算を docs/smd-cost-option.md に追加。条件確認と採用判断後に別設計へ進めます。
