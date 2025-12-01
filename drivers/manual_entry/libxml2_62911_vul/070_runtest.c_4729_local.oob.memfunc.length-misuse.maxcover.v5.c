#include <klee/klee.h>
#include "runtest.c"

int main() {
    const char *filename;
    const char *result;
    const char *err;
    int options;

    klee_make_symbolic(&filename, sizeof(filename), "filename");
    klee_make_symbolic(&result, sizeof(result), "result");
    klee_make_symbolic(&err, sizeof(err), "err");
    klee_make_symbolic(&options, sizeof(options), "options");

    automataTest(filename, result, err, options);
    return 0;
}