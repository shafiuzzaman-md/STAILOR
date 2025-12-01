#include <klee/klee.h>
#include "runtest.c"

int main() {
    const char* filename;
    const char* result;
    const char* err;
    int options;

    // Make symbolic inputs for automataTest parameters
    klee_make_symbolic(&filename, sizeof(filename), "filename");
    klee_make_symbolic(&result, sizeof(result), "result");
    klee_make_symbolic(&err, sizeof(err), "err");
    klee_make_symbolic(&options, sizeof(options), "options");

    // Assume strings are null-terminated and bounded
    klee_assume(filename != NULL);
    klee_assume(result != NULL);
    klee_assume(err != NULL);

    // Call the automataTest function which contains the suspicious line
    automataTest(filename, result, err, options);

    return 0;
}