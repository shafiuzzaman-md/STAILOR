#ifndef SAILR_ASSERT
#define SAILR_ASSERT(cond) klee_assert((cond) && "SAILR_VULN_ASSERT")
#endif

#include "klee/klee.h"

static int crazyMatch(const char *URI) {
    if ((URI != NULL) && (!strncmp(URI, "crazy:", 6)))
        return(1);
    return(0);
}

int main(void) {
    char URI[10];
    klee_make_symbolic(URI, sizeof(URI), "URI");
    klee_assume(URI[9] == '\0');

    int result = crazyMatch(URI);

    if (URI != NULL && result == 1) {
        SAILR_ASSERT(strlen(URI) >= 6);
        klee_assert(0 && "SAILR_REACH_ASSERT");
    }

    return 0;
}