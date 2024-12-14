target remote :1234
add-symbol-file target/riscv64gc-unknown-none-elf/debug/riscv-testing
b kmain