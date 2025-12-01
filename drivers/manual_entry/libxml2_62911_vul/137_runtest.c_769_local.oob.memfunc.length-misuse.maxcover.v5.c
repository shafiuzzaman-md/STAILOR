#include <klee/klee.h>
#include "runtest.c"

int main() {
    const char* filename;
    const char** mem;
    int* size;
    
    char filename_buf[256];
    char mem_ptr;
    int size_val;
    
    klee_make_symbolic(filename_buf, sizeof(filename_buf), "filename_buf");
    klee_make_symbolic(&mem_ptr, sizeof(mem_ptr), "mem_ptr");
    klee_make_symbolic(&size_val, sizeof(size_val), "size_val");
    
    filename = filename_buf;
    mem = (const char**)&mem_ptr;
    size = &size_val;
    
    int result = loadMem(filename, mem, size);
    
    return 0;
}