#include <klee/klee.h>
#include "runtest.c"

int main() {
    char filename[500];
    klee_make_symbolic(filename, sizeof(filename), "filename");
    filename[499] = '\0';

    char prefix[500];
    const char* base = baseFilename(filename);
    int len = strlen(base);
    len -= 4;
    
    // KLEE assertion for potential buffer overflow
    klee_assume(len >= 0 && len < 500);
    memcpy(prefix, base, len);
    prefix[len] = 0;

    return c14nCommonTest(filename, 0, XML_C14N_1_0, "without-comments");
}