all:
    nasm -f elf64 src/nktg.asm -o nktg.o
    nasm -f elf64 example/run_nktg.asm -o run_nktg.o
    ld nktg.o run_nktg.o -o run_nktg

test:
    nasm -f elf64 src/nktg.asm -o nktg.o
    nasm -f elf64 tests/test_nktg.asm -o test_nktg.o
    ld nktg.o test_nktg.o -o test_nktg
    ./test_nktg
