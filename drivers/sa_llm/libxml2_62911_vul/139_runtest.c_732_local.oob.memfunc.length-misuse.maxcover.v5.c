#include <klee/klee.h>
#include "runtest.c"

int main() {
    const char *filename;
    const char *mem;
    int size;
    char filename_buf[256];
    char mem_buf[4096];

    klee_make_symbolic(filename_buf, sizeof(filename_buf), "filename_buf");
    klee_make_symbolic(mem_buf, sizeof(mem_buf), "mem_buf");
    klee_make_symbolic(&size, sizeof(size), "size");

    filename = filename_buf;
    mem = mem_buf;

    filename_buf[255] = '\0';

    klee_assume(size >= 0);
    klee_assume(size <= 4096);

    int result = compareFileMem(filename, mem, size);

    klee_assert(1);

    return 0;
}