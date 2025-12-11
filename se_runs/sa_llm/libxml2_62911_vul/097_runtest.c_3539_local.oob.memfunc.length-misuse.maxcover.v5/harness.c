#ifndef SAILR_ASSERT
#define SAILR_ASSERT(cond) klee_assert((cond) && "SAILR_VULN_ASSERT")
#endif

#include <stdlib.h>
#include <string.h>
#include <glob.h>
#include "klee/klee.h"

int main(void) {
    char pattern[500];
    char prefix[500];
    char base[500];
    int len;
    glob_t globbuf;

    klee_make_symbolic(base, sizeof(base), "base");
    klee_make_symbolic(&len, sizeof(len), "len");

    klee_assume(len >= 0);
    klee_assume(len < 500);
    klee_assume(base[len] == '_');

    if (snprintf(pattern, 499, "./test/schemas/%s_*.xml", prefix) >= 499)
        pattern[499] = 0;

    if (base[len] == '_') {
        len += 2;
        SAILR_ASSERT(len < 500);
        klee_assert(0 && "SAILR_REACH_ASSERT");
        memcpy(prefix, base, len);
        prefix[len] = 0;
    }

    globbuf.gl_offs = 0;
    glob(pattern, GLOB_DOOFFS, NULL, &globbuf);

    return 0;
}