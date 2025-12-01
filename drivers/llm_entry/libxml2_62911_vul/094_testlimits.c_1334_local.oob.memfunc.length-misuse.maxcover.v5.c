#include <klee/klee.h>
#include "testlimits.c"

int main() {
    char filename[256];
    size_t limit;
    int options;
    int fail;

    klee_make_symbolic(filename, sizeof(filename), "filename");
    klee_make_symbolic(&limit, sizeof(limit), "limit");
    klee_make_symbolic(&options, sizeof(options), "options");
    klee_make_symbolic(&fail, sizeof(fail), "fail");

    readerTest(filename, limit, options, fail);
    return 0;
}