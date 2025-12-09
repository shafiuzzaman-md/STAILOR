#include "klee/klee.h"
#include <libxml/xmlerror.h>
#include <string.h>

int main(void) {
    char content[1024];
    char start[1024];
    int n;
    int len;

    klee_make_symbolic(start, sizeof(start), "start");
    klee_make_symbolic(&n, sizeof(n), "n");
    klee_make_symbolic(&len, sizeof(len), "len");

    if (n > 0 && n <= sizeof(content) - 1 && len >= 0) {
        memcpy(content, start, n);
        klee_assert(0 && "SAILR_REACH_ASSERT");
        content[n] = 0;
    }

    return 0;
}