#include <stdint.h>
#include <assert.h>
#include "pico/stdlib.h"
#include "hardware/pio.h"
#include "hardware/dma.h"
#include "hardware/clocks.h"
#include "hardware/sync.h"
#include "rom_bus.pio.h"
#include "rom_image.h"

// 128 KiB alignment makes PIO's concatenation a valid SRAM pointer.
static uint32_t rom_words[32768] __attribute__((aligned(131072)));
int main(void) {
    gpio_init(27); gpio_put(27, 0); gpio_set_dir(27, GPIO_OUT); // HW ready off
    gpio_init(26); gpio_put(26, 1); gpio_set_dir(26, GPIO_OUT); // hold GB reset
    gpio_init(25); gpio_put(25, 1); gpio_set_dir(25, GPIO_OUT); // OE disabled
    set_sys_clock_khz(150000, true); // rated clock, no overclock
    for (uint32_t i = 0; i < 32768; ++i) rom_words[i] = rom_image[i];
    assert((((uintptr_t)rom_words) & 0x1ffffu) == 0);
    PIO pio = pio0; uint sm = 0;
    uint offset = pio_add_program(pio, &rom_bus_program);
    for (uint i=0; i<26; ++i) { pio_gpio_init(pio, i); gpio_disable_pulls(i); }
    pio_sm_config c = rom_bus_program_get_default_config(offset);
    sm_config_set_in_pins(&c, 0);
    sm_config_set_jmp_pin(&c, 15);
    sm_config_set_out_pins(&c, 16, 8);
    sm_config_set_sideset_pins(&c, 25);
    sm_config_set_in_shift(&c, false, false, 32);
    sm_config_set_out_shift(&c, true, false, 32);
    sm_config_set_clkdiv(&c, 1.0f);
    pio_sm_init(pio, sm, offset, &c);
    pio_sm_set_consecutive_pindirs(pio, sm, 0, 16, false);
    pio_sm_set_consecutive_pindirs(pio, sm, 24, 1, false);
    pio_sm_set_consecutive_pindirs(pio, sm, 16, 8, true);
    pio_sm_set_pins_with_mask(pio, sm, 1u<<25, 1u<<25);
    pio_sm_set_consecutive_pindirs(pio, sm, 25, 1, true);
    // Default synchronisers retained: do not trade metastability for latency.
    pio_sm_put_blocking(pio, sm, ((uintptr_t)rom_words) >> 17);
    pio_sm_exec(pio, sm, pio_encode_pull(false, true));
    pio_sm_exec(pio, sm, pio_encode_mov(pio_y, pio_osr));
    int ptr = dma_claim_unused_channel(true), data = dma_claim_unused_channel(true);
    dma_channel_config pc = dma_channel_get_default_config(ptr);
    channel_config_set_transfer_data_size(&pc, DMA_SIZE_32);
    channel_config_set_read_increment(&pc, false);
    channel_config_set_write_increment(&pc, false);
    channel_config_set_dreq(&pc, pio_get_dreq(pio, sm, false));
    channel_config_set_high_priority(&pc, true);
    // Every address write triggers data DMA; count=1 is reloaded per trigger.
    dma_channel_configure(ptr, &pc, &dma_hw->ch[data].al3_read_addr_trig,
                          &pio->rxf[sm], 1, false);
    dma_channel_config dc = dma_channel_get_default_config(data);
    channel_config_set_transfer_data_size(&dc, DMA_SIZE_32);
    channel_config_set_read_increment(&dc, false);
    channel_config_set_write_increment(&dc, false);
    channel_config_set_dreq(&dc, pio_get_dreq(pio, sm, true));
    channel_config_set_chain_to(&dc, ptr);
    channel_config_set_high_priority(&dc, true);
    dma_channel_configure(data, &dc, &pio->txf[sm], rom_words, 1, false);
    dma_start_channel_mask(1u << ptr);
    pio_sm_set_enabled(pio, sm, true);
    // Wait for rails/firmware; SM is now waiting for /RD high.
    sleep_ms(10);
    gpio_put(27, 1); // allow qualified reads
    gpio_put(26, 0); // release GB reset: NMOS off, never drive /RES high
    save_and_disable_interrupts();
    while (true) __wfi(); // no logging, flash writes, USB or other DMA on bus path
}
