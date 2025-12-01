#include <klee/klee.h>
#include "testdict.c"

int main() {
    klee_make_symbolic(&NB_STRINGS_MAX, sizeof(NB_STRINGS_MAX), "NB_STRINGS_MAX");
    klee_assume(NB_STRINGS_MAX > 0);
    klee_assume(NB_STRINGS_MAX < 1000);

    return testall_dict();
}