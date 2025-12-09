#include "klee/klee.h"
#include <libxml/parser.h>
#include <string.h>

extern int crazyMatch(const char *URI);

int main(void) {
    char URI[256];
    klee_make_symbolic(URI, sizeof(URI), "URI");
    klee_assume(URI[255] == '\0');

    int result = crazyMatch(URI);
    if (result == 1) {
        klee_assert(0 && "SAILR_REACH_ASSERT");
    }

    return 0;
}