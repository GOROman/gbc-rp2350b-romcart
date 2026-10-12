#include "pico/stdlib.h"
#include "hardware/pio.h"
#include "hardware/sync.h"
#include "rom_bus.pio.h"
#include "boards/romcart.h"
#include <string.h>
// The generated user-owned ROM is deliberately absent from the public tree.
// Default firmware holds console reset and leaves data electrically isolated.
#ifdef ROMCART_USER_ROM
#include "user_rom.h" // supplies const uint8_t user_rom[32768]
_Static_assert(sizeof(user_rom)==32768, "exact 32KiB required");
#endif
static uint8_t rom_sram[32768] __attribute__((aligned(32768)));
static void safe_start(void) {
 gpio_init(ROMCART_VALID_GPIO);
 gpio_put(ROMCART_VALID_GPIO,0);
 gpio_set_dir(ROMCART_VALID_GPIO,GPIO_OUT);
 gpio_set_input_enabled(ROMCART_VALID_GPIO,false); // E9 mitigation on output
 gpio_init(ROMCART_RESET_HOLD_GPIO);
 gpio_put(ROMCART_RESET_HOLD_GPIO,1);
 gpio_set_dir(ROMCART_RESET_HOLD_GPIO,GPIO_OUT);
 gpio_set_input_enabled(ROMCART_RESET_HOLD_GPIO,false);
 for(unsigned i=16;i<24;i++) {gpio_init(i);gpio_put(i,0);gpio_set_dir(i,GPIO_OUT);gpio_set_input_enabled(i,false);}
 for(unsigned i=0;i<16;i++){gpio_init(i);gpio_set_dir(i,GPIO_IN);gpio_disable_pulls(i);}
 for(unsigned i=24;i<28;i++){gpio_init(i);gpio_set_dir(i,GPIO_IN);gpio_disable_pulls(i);}
}
int main(void) {
 safe_start();
#if defined(ROMCART_EXPERIMENTAL_ENABLE) && defined(ROMCART_USER_ROM)
 // Bench testing only. A late CPU response can alias into the next bus cycle.
 // Do not use this flag until a cycle-tagged DMA/PIO path has passed timing QA.
 memcpy(rom_sram,user_rom,sizeof(rom_sram));
 PIO p=pio0;unsigned sm=0;unsigned off=pio_add_program(p,&rom_bus_program);
 pio_sm_config c=rom_bus_program_get_default_config(off);
 sm_config_set_in_pins(&c,0);sm_config_set_out_pins(&c,16,8);
 sm_config_set_sideset_pins(&c,28);sm_config_set_in_shift(&c,false,false,32);
 sm_config_set_out_shift(&c,true,false,32);sm_config_set_clkdiv(&c,1.0f);
 for(unsigned i=0;i<29;i++)if(i<25||i==28)pio_gpio_init(p,i);
 pio_sm_set_consecutive_pindirs(p,sm,0,16,false);
 pio_sm_set_consecutive_pindirs(p,sm,16,8,true);
 pio_sm_set_consecutive_pindirs(p,sm,24,1,false);
 pio_sm_set_consecutive_pindirs(p,sm,28,1,true);
 pio_sm_init(p,sm,off,&c);pio_sm_clear_fifos(p,sm);pio_sm_set_enabled(p,sm,true);
 gpio_put(ROMCART_RESET_HOLD_GPIO,0);
 uint32_t irq=save_and_disable_interrupts();(void)irq;
 while(1) {uint32_t addr=pio_sm_get_blocking(p,sm)&0x7fff;pio_sm_put_blocking(p,sm,rom_sram[addr]);}
#else
 while(1) tight_loop_contents();
#endif
}
