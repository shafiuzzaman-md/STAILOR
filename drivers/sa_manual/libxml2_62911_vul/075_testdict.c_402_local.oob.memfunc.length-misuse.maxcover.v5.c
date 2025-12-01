#include <klee/klee.h>
#include "testdict.c"

int main() {
    klee_make_symbolic(&NB_STRINGS_MAX, sizeof(NB_STRINGS_MAX), "NB_STRINGS_MAX");
    klee_assume(NB_STRINGS_MAX > 0);
    klee_assume(NB_STRINGS_MAX < 10000);

    strings1 = xmlMalloc(NB_STRINGS_MAX * sizeof(strings1[0]));
    klee_assert(strings1 != NULL);
    memset(strings1, 0, NB_STRINGS_MAX * sizeof(strings1[0]));
    
    testall_dict();
    
    return 0;
}