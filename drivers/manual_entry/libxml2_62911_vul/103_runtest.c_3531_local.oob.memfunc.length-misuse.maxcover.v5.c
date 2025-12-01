#include <klee/klee.h>
#include "runtest.c"

int main() {
    char filename[256];
    char resul[256];
    char errr[256];
    int options;
    
    klee_make_symbolic(filename, sizeof(filename), "filename");
    klee_make_symbolic(resul, sizeof(resul), "resul");
    klee_make_symbolic(errr, sizeof(errr), "errr");
    klee_make_symbolic(&options, sizeof(options), "options");
    
    filename[255] = '\0';
    resul[255] = '\0';
    errr[255] = '\0';
    
    schemasTest(filename, resul, errr, options);
    
    return 0;
}