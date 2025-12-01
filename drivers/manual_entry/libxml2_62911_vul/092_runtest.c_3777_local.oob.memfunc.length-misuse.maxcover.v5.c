#include <klee/klee.h>
#include "runtest.c"

int main() {
    char filename[500];
    char resul[500];
    char errr[500];
    int options;

    klee_make_symbolic(filename, sizeof(filename), "filename");
    klee_make_symbolic(resul, sizeof(resul), "resul");
    klee_make_symbolic(errr, sizeof(errr), "errr");
    klee_make_symbolic(&options, sizeof(options), "options");

    filename[499] = '\0';
    resul[499] = '\0';
    errr[499] = '\0';

    rngStreamTest(filename, resul, errr, options);
    return 0;
}