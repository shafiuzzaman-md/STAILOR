#include <klee/klee.h>
#include "testrecurse.c"

int main() {
    char filename[256];
    char result[256];
    char err[256];
    int options;

    klee_make_symbolic(filename, sizeof(filename), "filename");
    klee_make_symbolic(result, sizeof(result), "result");
    klee_make_symbolic(err, sizeof(err), "err");
    klee_make_symbolic(&options, sizeof(options), "options");

    filename[255] = '\0';
    result[255] = '\0';
    err[255] = '\0';

    initializeLibxml2();
    recursiveDetectTest(filename, result, err, options);

    return 0;
}