#include <klee/klee.h>
#include "runtest.c"

int main() {
    char filename[256];
    const char *mem;
    int size;
    
    klee_make_symbolic(filename, sizeof(filename), "filename");
    klee_make_symbolic(&mem, sizeof(mem), "mem");
    klee_make_symbolic(&size, sizeof(size), "size");
    
    loadMem(filename, &mem, &size);
    
    return 0;
}