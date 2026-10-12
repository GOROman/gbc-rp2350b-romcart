# ファームウェアの土台

標準ビルドは **RESET_HOLD=1 / VALID=0**。本体を起動せず、データバスを駆動しません。ROM・SDK・ARM コンパイラは同梱しません。ユーザー所有の32KiB ROMを SRAM にコピーし、バス応答中は外部 PSRAM / XIP フラッシュを使わない構成です。

```sh
PICO_SDK_PATH=/path/to/existing/pico-sdk cmake -S firmware -B build
cmake --build build
```

SDK と arm-none-eabi-gcc は現環境で未確認のためターゲットビルド未実施。自動インストールは行っていません。

`rom_bus.pio` は PIO0 / GPIO base 0、A0..A14=GP0..14、D0..D7=GP16..23、/RD=GP24、VALID=GP28。PIO の32本範囲内です。A15 / WR / RESET は外部ゲートで判定します。

実験コードは1読出しにつき RX FIFO→CPU SRAM lookup→TX FIFO。応答が遅れると次の読出しに前サイクルのデータを出す危険があり、実用品ではありません。`ROMCART_EXPERIMENTAL_ENABLE` と `ROMCART_USER_ROM` の両方を明示した場合だけ有効です。未検証の DMA ring / PIO LUT が完成したとは表現しません。

次の実装では32KiB SRAMのアラインメントを利用したDMAアドレス構築、期限切れサイクルの破棄、FIFOのリセット時フラッシュ、IRQ/XIPの遮断、watchdog reset時のVALID落下を検証してください。GPIOを入力に変える場合は、外部バッファ駆動か8.2kΩ以下のpullでA2 steppingのE9対策を維持します。
