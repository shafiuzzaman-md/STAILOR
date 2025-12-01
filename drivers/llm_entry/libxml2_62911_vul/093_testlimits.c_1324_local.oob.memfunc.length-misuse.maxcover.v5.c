#include <klee/klee.h>
#include "testlimits.c"

int main() {
    const char *filename;
    size_t limit;
    int options;
    int fail;

    klee_make_symbolic(&filename, sizeof(filename), "filename");
    klee_make_symbolic(&limit, sizeof(limit), "limit");
    klee_make_symbolic(&options, sizeof(options), "options");
    klee_make_symbolic(&fail, sizeof(fail), "fail");

    #ifdef LIBXML_READER_ENABLED
    readerTest(filename, limit, options, fail);
    #else
    saxTest(filename, limit, options, fail);
    #endif

    return 0;
}