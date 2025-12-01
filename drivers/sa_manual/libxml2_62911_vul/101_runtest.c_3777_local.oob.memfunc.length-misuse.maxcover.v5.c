#include <klee/klee.h>
#include "runtest.c"

int main() {
    char base[500];
    char prefix[500];
    int len;

    klee_make_symbolic(base, sizeof(base), "base");
    klee_make_symbolic(&len, sizeof(len), "len");

    if (len > 0 && len <= 499) {
        klee_assert(len <= 499);
        memcpy(prefix, base, len);
        prefix[len] = 0;
    }

    return 0;
}