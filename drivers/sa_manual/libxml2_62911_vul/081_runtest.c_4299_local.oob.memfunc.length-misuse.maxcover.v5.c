#include <klee/klee.h>
#include "runtest.c"

int main() {
    char filename[500];
    klee_make_symbolic(filename, sizeof(filename), "filename");
    filename[499] = '\0';
    
    char base_buf[500];
    const char* base = baseFilename(filename);
    int len = strlen(base);
    
    if (len >= 4) {
        len -= 4;
        char prefix[500];
        
        // KLEE assertion for potential out-of-bounds access
        klee_assume(len >= 0 && len < 500);
        memcpy(prefix, base, len);
        prefix[len] = 0;
    }
    
    return 0;
}