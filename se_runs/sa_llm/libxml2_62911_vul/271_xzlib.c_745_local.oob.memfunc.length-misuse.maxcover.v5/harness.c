#include "klee/klee.h"
#include <libxml/xmlreader.h>
#include <libxml/xmlmemory.h>
#include <string.h>
#include <stdlib.h>

extern int __libxml2_xzread(void *state, char *buf, int len);

int main(void) {
    void *state;
    char buf[1024];
    int len;

    klee_make_symbolic(&state, sizeof(state), "state");
    klee_make_symbolic(buf, sizeof(buf), "buf");
    klee_make_symbolic(&len, sizeof(len), "len");

    klee_assume(len >= 0);
    klee_assume(len < 1024);

    int result = __libxml2_xzread(state, buf, len);

    klee_assert(0 && "SAILR_REACH_ASSERT");
    return 0;
}