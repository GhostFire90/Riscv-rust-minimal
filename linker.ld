OUTPUT_ARCH(riscv)

ENTRY(_start)

MEMORY{
  ram : ORIGIN = 0x80000000, LENGTH = 16M
}

PROVIDE(_stack = ORIGIN(ram)+LENGTH(ram));

PHDRS
{
    text    PT_LOAD;
    data    PT_LOAD;
}

SECTIONS{
  .text ALIGN(4) : {
    *(.text.init)
    *(.text .text.*)
  }>ram AT>ram :text

  .data ALIGN(4) :{
    PROVIDE(_bdata = .);
    *(.data .data.*)
    PROVIDE(_edata = .);
  }>ram AT>ram :data

  .bss ALIGN(4) :{
    PROVIDE(_bbss = .);
    *(.bss .bss.*)
    *(COMMON)
    PROVIDE(_ebss = .);
    PROVIDE(_estack = .);
  }>ram AT>ram :data


}