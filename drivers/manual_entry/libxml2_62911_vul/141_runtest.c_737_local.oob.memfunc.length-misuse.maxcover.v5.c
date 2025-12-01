#include <klee/klee.h>
#include "runtest.c"

int main() {
    char filename[256];
    char mem_buffer[4096];
    int size;

    klee_make_symbolic(filename, sizeof(filename), "filename");
    klee_make_symbolic(mem_buffer, sizeof(mem_buffer), "mem_buffer");
    klee_make_symbolic(&size, sizeof(size), "size");

    klee_assume(size >= 0);
    klee_assume(size <= 4096);

    compareFileMem(filename, mem_buffer, size);

    return 0;
}