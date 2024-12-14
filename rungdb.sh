qemu-system-riscv64 -machine virt -s -S -bios target/riscv64gc-unknown-none-elf/debug/riscv-testing &
riscv64-unknown-linux-gnu-gdb -x commands.gdb