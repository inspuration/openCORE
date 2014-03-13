
ENTRY (_begin)

SECTIONS

{
    . = 0xE8000000;
    .text : { *(.reset) *(.text) }
    .rodata : {*(.rodata)}

    . = 0xE7000000;

    .data : { *(.data) }

  _gp = ALIGN(16) + 0x7ff0;
  PROVIDE(gp = _gp);

    .sdata : { *(.sdata)}
  __bss_start = .;
    .bss : { *(.bss) }
    .sbss : { *(.sbss) }

  _end = .;

  PROVIDE (end = .);
}


