#include <klee/klee.h>
#include "runtest.c"

int main() {
    char filename[256];
    char result[256];
    char err[256];
    
    klee_make_symbolic(filename, sizeof(filename), "filename");
    klee_make_symbolic(result, sizeof(result), "result");
    klee_make_symbolic(err, sizeof(err), "err");
    
    filename[255] = '\0';
    result[255] = '\0';
    err[255] = '\0';
    
    int options = 0;
    
    int ret = uriParseTest(filename, result, err, options);
    
    return ret;
}