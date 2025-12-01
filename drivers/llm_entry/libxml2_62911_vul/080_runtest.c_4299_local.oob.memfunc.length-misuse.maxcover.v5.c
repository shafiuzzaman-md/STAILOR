#include <klee/klee.h>
#include "runtest.c"

int main() {
    char filename[256];
    klee_make_symbolic(filename, sizeof(filename), "filename");
    filename[255] = '\0';
    
    int with_comments = klee_int("with_comments");
    int mode = klee_int("mode");
    char subdir[256];
    klee_make_symbolic(subdir, sizeof(subdir), "subdir");
    subdir[255] = '\0';
    
    c14nCommonTest(filename, with_comments, mode, subdir);
    return 0;
}