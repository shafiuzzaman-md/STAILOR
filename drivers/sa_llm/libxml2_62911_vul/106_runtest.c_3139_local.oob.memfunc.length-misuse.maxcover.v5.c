#include <klee/klee.h>
#include "runtest.c"

int main() {
    char filename[64];
    char result[64];
    char err[64];
    char base[64];

    klee_make_symbolic(filename, sizeof(filename), "filename");
    klee_make_symbolic(result, sizeof(result), "result");
    klee_make_symbolic(err, sizeof(err), "err");
    klee_make_symbolic(base, sizeof(base), "base");

    filename[sizeof(filename)-1] = '\0';
    result[sizeof(result)-1] = '\0';
    err[sizeof(err)-1] = '\0';
    base[sizeof(base)-1] = '\0';

    uriCommonTest(filename, result, err, base);
    return 0;
}