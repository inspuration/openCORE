
ENTRY (_start)

SECTIONS
{
    . = 0xC0089800;
    .text : { *(.interrupt) *(.text) }
    .rodata : {*(.rodata)}
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








