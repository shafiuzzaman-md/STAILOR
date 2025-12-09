#include <stdio.h>
#include <string.h>
#include <libxml/xmlreader.h>
#include <klee/klee.h>

int main(void) {
    char base[512];
    char prefix[512];
    int len;

    klee_make_symbolic(base, sizeof(base), "base");
    base[sizeof(base) - 1] = '\0';

    len = strlen(base);
    if ((len > 499) || (len < 5)) {
        return -1;
    }
    len -= 4;

    klee_assert(0 && "SAILR_REACH_ASSERT");
    memcpy(prefix, base, len);
    prefix[len] = 0;

    return 0;
}