#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <libxml/xmlmemory.h>
#include <libxml/parser.h>
#include <libxml/catalog.h>
#include "klee/klee.h"

extern char *xmlCatalogAddLocal(const char *URL, const char *catalog);

int main(void) {
    char line_read[501];
    klee_make_symbolic(line_read, sizeof(line_read), "line_read");
    line_read[500] = 0;
    int len = strlen(line_read);
    char *ret = (char *) malloc(len + 1);
    if (ret != NULL) {
        klee_assert(0 && "SAILR_REACH_ASSERT");
        memcpy(ret, line_read, len + 1);
    }
    free(ret);
    return 0;
}