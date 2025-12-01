#include <klee/klee.h>
#include "testdict.c"

int main() {
    klee_make_symbolic(&NB_STRINGS_MAX, sizeof(NB_STRINGS_MAX), "NB_STRINGS_MAX");
    klee_make_symbolic(&NB_STRINGS_MIN, sizeof(NB_STRINGS_MIN), "NB_STRINGS_MIN");
    klee_make_symbolic(&NB_STRINGS_NS, sizeof(NB_STRINGS_NS), "NB_STRINGS_NS");
    
    klee_assume(NB_STRINGS_MAX > 0);
    klee_assume(NB_STRINGS_MIN > 0);
    klee_assume(NB_STRINGS_NS > 0);
    klee_assume(NB_STRINGS_MAX >= NB_STRINGS_MIN);
    klee_assume(NB_STRINGS_MAX >= NB_STRINGS_NS);
    
    int result = testall_dict();
    return result;
}