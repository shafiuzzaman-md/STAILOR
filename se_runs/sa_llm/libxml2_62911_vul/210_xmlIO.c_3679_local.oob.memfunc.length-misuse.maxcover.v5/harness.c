#include "klee/klee.h"
#include <libxml/xmlIO.h>
#include <string.h>

int main(void) {
    char filename[2048];
    klee_make_symbolic(filename, sizeof(filename), "filename");
    filename[sizeof(filename)-1] = '\0';

    void* ret = xmlFileOpen(filename);
    (void)ret;

    klee_assert(0 && "SAILR_REACH_ASSERT");
    return 0;
}