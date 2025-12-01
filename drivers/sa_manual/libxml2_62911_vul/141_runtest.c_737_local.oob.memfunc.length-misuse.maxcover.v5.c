#include <klee/klee.h>
#include "runtest.c"

int main() {
    const char *mem;
    int size;
    char filename_buffer[256];
    
    klee_make_symbolic(filename_buffer, sizeof(filename_buffer), "filename_buffer");
    klee_make_symbolic(&mem, sizeof(mem), "mem");
    klee_make_symbolic(&size, sizeof(size), "size");
    
    // Ensure filename is null-terminated
    filename_buffer[255] = '\0';
    
    // Call the target function
    compareFileMem(filename_buffer, mem, size);
    
    return 0;
}