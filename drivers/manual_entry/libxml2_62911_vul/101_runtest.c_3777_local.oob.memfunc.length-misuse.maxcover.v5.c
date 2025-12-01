#include <klee/klee.h>
#include "runtest.c"

int main() {
    char filename[500];
    char result[500];
    char err[500];
    int options;

    klee_make_symbolic(filename, sizeof(filename), "filename");
    klee_make_symbolic(result, sizeof(result), "result");
    klee_make_symbolic(err, sizeof(err), "err");
    klee_make_symbolic(&options, sizeof(options), "options");

    filename[499] = '\0';
    result[499] = '\0';
    err[499] = '\0';

    rngStreamTest(filename, result, err, options);
    return 0;
}