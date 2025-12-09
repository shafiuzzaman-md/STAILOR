#include "klee/klee.h"
#include <libxml/xmlreader.h>
#include <string.h>

extern void *hugeOpen(const char *URI);
extern int currentTest;
extern struct {
    const char *name;
} hugeTests[];

int main(void) {
    char URI[256];
    klee_make_symbolic(URI, sizeof(URI), "URI");
    klee_assume(URI[255] == '\0');

    void *result = hugeOpen(URI);
    if (result != NULL) {
        klee_assert(0 && "SAILR_REACH_ASSERT");
    }

    return 0;
}