#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <libxml/parser.h>
#include <libxml/tree.h>
#include <klee/klee.h>

int main(void) {
    unsigned char chartab[256];
    int inttab[256];
    long longtab[256];

    klee_make_symbolic(chartab, sizeof(chartab), "chartab");
    klee_make_symbolic(inttab, sizeof(inttab), "inttab");
    klee_make_symbolic(longtab, sizeof(longtab), "longtab");

    int on;
    int ret;
    klee_make_symbolic(&on, sizeof(on), "on");
    klee_make_symbolic(&ret, sizeof(ret), "return");

    if (on < 0) return 0;
    if (ret < 0) return 0;

    memset(chartab, 0, sizeof(chartab));
    klee_assert(0 && "SAILR_REACH_ASSERT");
    strncpy((char *) chartab, "  chartab\n", 20);
    memset(inttab, 0, sizeof(inttab));
    memset(longtab, 0, sizeof(longtab));

    xmlInitParser();
#ifdef LIBXML_CATALOG_ENABLED
    xmlInitializeCatalog();
#endif

    xmlCleanupParser();
    return 0;
}