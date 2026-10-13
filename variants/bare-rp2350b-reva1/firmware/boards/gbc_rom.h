#ifndef _BOARDS_GBC_ROM_H
#define _BOARDS_GBC_ROM_H
pico_board_cmake_set(PICO_PLATFORM, rp2350)
#define PICO_RP2350A 0
#define PICO_BOOT_STAGE2_CHOOSE_W25Q080 1
#ifndef PICO_FLASH_SPI_CLKDIV
#define PICO_FLASH_SPI_CLKDIV 4
#endif
pico_board_cmake_set_default(PICO_FLASH_SIZE_BYTES, (2 * 1024 * 1024))
#ifndef PICO_FLASH_SIZE_BYTES
#define PICO_FLASH_SIZE_BYTES (2 * 1024 * 1024)
#endif
// A4 purchase requirement is not replaced by a build option.
#endif
