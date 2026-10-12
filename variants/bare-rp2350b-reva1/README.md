# RP2350B単体 ROMカートリッジ Rev A.1

32KiB・MBCなしの設計検討版。A0–A15と/RDの17本に、入力バッファ経由／直結を選ぶ3padジャンパを設けています。

**設計レビュー用・実機未検証。EasyEDAへの取り込み、フットプリント照合、PCB配線、SDKコンパイル、GBC倍速タイミング、ケース嵌合は未完了です。製造用Gerber/CPLは含みません。**

このフォルダはRP2350B単体＋外付けQSPI NORの別構成です。リポジトリ直下のWaveShare Core2350B2キャリアとはピン割当・電源・ファームが異なります。互いのファームを流用しないでください。

## 内容

- [設計仕様・接続・検証項目](README_設計仕様.md)
- [EAGLE XML回路図](design/gbc_rom.sch) — EasyEDA import想定。JPのみパッケージ内蔵、他部品はフットプリント割当が必要
- [BOM](design/BOM.csv) / [全ピン接続表](design/pin_netlist.csv)
- [バイパスジャンパ](design/bypass_jumpers.csv) / [実装バリエーション](design/assembly_variants.csv)
- [暫定外形](design/outline_provisional.dxf) / [端子座標](design/edge_fingers.csv)
- [PIO/DMA参照コード](firmware/) — 応答が読出し期間を越える場合のサイクル取り逃がしは未解決
- [検証記録](validation.txt)

## バイパス

| JP1–17 | 経路 |
|---|---|
| 1–2だけ接続 | BUFFERED（既定） |
| 2–3だけ接続 | INPUT_DIRECT（評価用） |

全3pad同時接続は禁止。切替は電源OFFで行います。入力直結専用ならU2/U3/U4とC21/C22/C23を省略できます。データ出力側のAHCT245とOE回路は必要です。

**5V入力中はIOVDDの給電が必要です。ジャンパ自体は電源順序を保証しません。** 電源投入・切断時を含めた条件の実測まではBUFFEREDを使用します。

## 検証

```sh
python3 variants/bare-rp2350b-reva1/verify_bypass.py
```

この検査はジャンパ定義と回路図/CSVの接続整合性だけを確認します。電気的動作、ハンダの実状態、EasyEDA import、ERC/DRCを確認するものではありません。

ROMデータや認証情報は含みません。出典は設計仕様末尾に記載しています。
