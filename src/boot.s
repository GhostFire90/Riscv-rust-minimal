.section .data

.section .text.init
  .extern kmain
  .global _start
  _start:
    .option push
    .option norelax
    la gp, _bdata
    .option pop
    la sp, _stack

    jal kmain
    lp:
    j lp