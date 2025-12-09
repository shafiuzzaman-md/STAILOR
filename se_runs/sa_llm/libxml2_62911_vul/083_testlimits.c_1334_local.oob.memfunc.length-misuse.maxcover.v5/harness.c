#include "klee/klee.h"
#include <libxml/parser.h>
#include <libxml/tree.h>
#include <string.h>
#include <stdlib.h>

extern int runtest(const char *filename, unsigned long limit);

int main(void) {
    char filename[256];
    unsigned long limit;

    klee_make_symbolic(filename, sizeof(filename), "filename");
    klee_make_symbolic(&limit, sizeof(limit), "limit");

    filename[sizeof(filename) - 1] = '\0';

    int res = runtest(filename, limit);

    if (res == 1) {
        klee_assert(0 && "SAILR_REACH_ASSERT");
    }

    return 0;
}