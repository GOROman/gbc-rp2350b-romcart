# 次の工程（全体は未完了）

完了：モジュール版の配線、ERC0、DRC0、未接続0、KiCad schematic parity0、寸法/GPIOの機械データ検査、製造出力の再生成、READMEの画像埋込み。

1. Pico SDKが未検出。既存ARM GCC15.3.1を使い、Raspberry Pi公式pico-sdkのRP2350対応タグをworkspace内へ取得する許可が必要。グローバルインストール/認証/永続権限は不要。取得後に標準安全停止ファームをbuildする。
2. 実験PIOの期限切れ読出しが次サイクルへ混入する問題を解消し、worst-case応答/Hi-Z/RESET/電源/USBを実測する。静的KiCad合格で代替しない。
3. 実物Core2350B2の孔/端子を照合し、シェル/挿入深さ/基板厚/面取り/接点仕上げ/CPL rotation/全BOM在庫を確認する。発注は未承認。
4. 単体SMD版の候補はRP2354B。内部buckの指定コイル調達待ちか、公式Figure24の外部1.1V供給を採用するか判断。外部LDO TLV75801PDRVR候補と熱計算は smd-cost-option.md。JLC在庫/本体電力予算/最大DVDD電流が未確認で、代替電源はまだ採用しない。

X投稿・発注・購入は行っていません。公開画像は実際のKiCad出力で、実装済み写真ではありません。
