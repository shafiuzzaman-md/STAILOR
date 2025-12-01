#include <klee/klee.h>
#include "runtest.c"

int main() {
    char filename[64];
    char mem[4096];
    int size;

    klee_make_symbolic(filename, sizeof(filename), "filename");
    klee_make_symbolic(mem, sizeof(mem), "mem");
    klee_make_symbolic(&size, sizeof(size), "size");

    klee_assume(size >= 0 && size <= 4096);

    compareFileMem(filename, mem, size);

    return 0;
}