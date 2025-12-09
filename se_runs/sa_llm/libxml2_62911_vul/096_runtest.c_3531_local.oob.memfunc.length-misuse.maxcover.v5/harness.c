#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <libxml/xmlmemory.h>
#include <libxml/parser.h>
#include <libxml/tree.h>
#include <libxml/xmlschemas.h>
#include <klee/klee.h>

int main(void) {
    char base[256];
    char prefix[256];
    char pattern[500];
    int len;

    klee_make_symbolic(base, sizeof(base), "base");
    klee_make_symbolic(&len, sizeof(len), "len");

    base[sizeof(base) - 1] = '\0';

    if (len < 4) {
        return 0;
    }
    if (strlen(base) < (size_t)len) {
        return 0;
    }
    if (len - 4 < 0) {
        return 0;
    }
    len -= 4;

    if (len - 2 >= 0 && base[len - 2] == '_') {
        len -= 2;
    }
    if (len - 2 >= 0 && base[len - 2] == '_') {
        len -= 2;
    }

    if (len < 0) {
        return 0;
    }
    if (len >= (int)sizeof(prefix)) {
        return 0;
    }

    klee_assert(0 && "SAILR_REACH_ASSERT");
    memcpy(prefix, base, len);
    prefix[len] = 0;

    if (snprintf(pattern, 499, "./test/schemas/%s_*.xml", prefix) >= 499)
        pattern[499] = 0;

    return 0;
}