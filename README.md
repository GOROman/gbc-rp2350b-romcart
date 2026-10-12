# RP2350B ROM カートリッジ — R0設計試作

**設計レビュー用です。実機動作未確認、製造リリース未承認。発注しないでください。**

WaveShare Core2350B2-Kit（RP2350B、16MiB Flash、8MiB PSRAM）のキャリアを KiCad 10 で設計するローカル試作です。公開元のモジュール使用構想を参考にし、5V入力直結・5Vプルアップだけの案をそのまま採用せず、電圧変換と出力遮断を追加しました。

32KiB / MBCなし / SRAMなしは **初期検証範囲** であり、公開元で確定した仕様とは表現しません。Game Boy Color と ModRetro Chromatic の動作・ケース適合は未確認です。

- 回路図・配線を含む基板：`hardware/romcart.kicad_sch`, `.kicad_pcb`, `.kicad_pro`
- 型番付きBOM・検討用Gerber/Excellon・CPL：`manufacturing/`
- GPIO割当・64端子モジュール配置・一次資料：`docs/`
- PIOと安全停止を標準にしたファーム土台：`firmware/`
- ERC/DRCと製造出力検証結果：`validation/RESULTS.md`
- 公開用の実データ画像：`previews/`（スクリーン上の個人情報を含まないKiCad出力画像）

## 構成

M1は**手実装**。U1–U3は3.3V動作・5V入力許容のSN74LVC245A。U4はSN74LVC8T245による3.3V→本体5Vデータ出力。U5/U6が `/RD, A15, /WR, /RESET, VALID` を外部判定してHi-Zへ遮断します。Q1が起動時RESETを保持。D1はUSB側から本体への逆給電を遮断。各ICには100nF、各データ線には33Ωを配置しました。

3.3Vロジックを本体5V入力へ直接出す構成ではありません。RP2350の5V許容はFT GPIOかつ通電中に限るので、入力をバッファ経由にしています。

**標準ファームはVALID=0 / RESET保持**。実験PIOは応答が遅れると次サイクルへ古いデータが混入する問題を解決していません。動作するROMエミュレータが完成したとは表示しません。

## 製造と量産候補

キャリアは57.5×51mm、0.8mm、4層の試作外形。白 solder mask と接点のgold仕上げを想定。端子・シェル・面取り・モジュール高さは実物確認が必要です。Gerberを生成できることと製造/動作検証合格は別です。最新の未接続/DRC件数は検証結果をご覧ください。

低部品点数のSMD量産にはフラッシュ内蔵 **RP2354B** が有力です。親タスクでJLC実装在庫を確認しましたが、公式指定コア用インダクタが欠品。単体版の回路/基板/ガーバーはまだ作成していません。[比較と調達条件](docs/smd-cost-option.md)を参照してください。

## 再生成

`design.py` は配置を生成し **既存PCB配線を消す** ので、編集したPCBに対して無闇に再実行しないでください。`schematic.py` は部品仕様から回路図/シンボルを作成。`route.py` は実験的な配線補助であり、出力は必ずKiCad DRCで確認します。フットプリントはプロジェクトに同梱しています。

```sh
# macOSの既存KiCad付属Pythonを使用。新規依存の自動インストールなし。
KICAD_CONFIG_HOME="$PWD/.kicad-config" "/Applications/KiCad/KiCad.app/Contents/Frameworks/Python.framework/Versions/3.9/bin/python3" scripts/design.py
python3 scripts/schematic.py
```

ROM・認証情報・個人画面・購入情報は同梱していません。KiCad公式フットプリントのライセンスは `third_party/`。この試作がNintendo/Waveshare/ModRetroの認定品であるとの主張はありません。
