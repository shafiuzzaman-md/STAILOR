#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <glob.h>
#include <libxml/xmlmemory.h>
#include <libxml/parser.h>
#include <libxml/globals.h>
#include "klee/klee.h"

int main(void) {
    char base[256];
    char prefix[256];
    char pattern[500];
    int len;
    glob_t globbuf;

    klee_make_symbolic(base, sizeof(base), "base");
    klee_make_symbolic(&len, sizeof(len), "len");

    base[sizeof(base)-1] = '\0';

    klee_assume(len >= 0);
    klee_assume(len < sizeof(base));

    memcpy(prefix, base, len);
    prefix[len] = 0;

    if (snprintf(pattern, 499, "./test/schemas/%s_*.xml", prefix) >= 499)
        pattern[499] = 0;

    if (base[len] == '_') {
        len += 2;
        klee_assert(0 && "SAILR_REACH_ASSERT");
        memcpy(prefix, base, len);
        prefix[len] = 0;
    }

    globbuf.gl_offs = 0;
    glob(pattern, GLOB_DOOFFS, NULL, &globbuf);

    if (globbuf.gl_pathc > 0) {
        globfree(&globbuf);
    }

    return 0;
}