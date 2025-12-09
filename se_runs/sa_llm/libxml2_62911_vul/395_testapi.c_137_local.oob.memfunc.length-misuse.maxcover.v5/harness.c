#include <stdio.h>
#include <string.h>
#include <libxml/parser.h>
#include <libxml/catalog.h>
#include <libxml/relaxng.h>
#include "klee/klee.h"

int main(void) {
    unsigned char chartab[256];
    int inttab[256];
    long longtab[256];

    memset(chartab, 0, sizeof(chartab));
    strncpy((char *) chartab, "  chartab\n", 20);
    klee_assert(0 && "SAILR_REACH_ASSERT");
    memset(inttab, 0, sizeof(inttab));
    memset(longtab, 0, sizeof(longtab));

    xmlInitParser();
#ifdef LIBXML_CATALOG_ENABLED
    xmlInitializeCatalog();
#endif
#ifdef LIBXML_SCHEMAS_ENABLED
    xmlRelaxNGInitTypes();
#endif

    return 0;
}