#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <libxml/xmlmemory.h>
#include <libxml/parser.h>
#include <libxml/catalog.h>
#include "klee/klee.h"

int main(void) {
    char line_read[501];
    char *ret;
    int len;

    klee_make_symbolic(line_read, sizeof(line_read), "line_read");

    if (!fgets(line_read, 500, stdin)) {
        return 0;
    }
    line_read[500] = 0;
    len = strlen(line_read);
    ret = (char *) malloc(len + 1);
    if (ret != NULL) {
        memcpy(ret, line_read, len + 1);
    }

    klee_assert(0 && "SAILR_REACH_ASSERT");
    return 0;
}