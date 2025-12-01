#include <klee/klee.h>
#include "runtest.c"

int main() {
    char base[500];
    char prefix[500];
    int len;

    klee_make_symbolic(base, sizeof(base), "base");
    klee_make_symbolic(&len, sizeof(len), "len");

    base[499] = '\0';
    klee_assume(len >= 0 && len < 500);

    if (base[len] == '_') {
        len += 2;
        memcpy(prefix, base, len);
        klee_assert(len < 500);
        prefix[len] = 0;
    }

    return 0;
}