#include "klee/klee.h"

extern void xmlInitParser(void);
#ifdef LIBXML_CATALOG_ENABLED
extern void xmlInitializeCatalog(void);
#endif

int main(void) {
    unsigned char chartab[256];
    int inttab[256];
    long longtab[256];

    klee_make_symbolic(chartab, sizeof(chartab), "chartab");
    klee_make_symbolic(inttab, sizeof(inttab), "inttab");
    klee_make_symbolic(longtab, sizeof(longtab), "longtab");

    memset(chartab, 0, sizeof(chartab));
    strncpy((char *) chartab, "  chartab\n", 20);
    memset(inttab, 0, sizeof(inttab));
    klee_assert(0 && "SAILR_REACH_ASSERT");
    memset(longtab, 0, sizeof(longtab));

    xmlInitParser();
#ifdef LIBXML_CATALOG_ENABLED
    xmlInitializeCatalog();
#endif

    return 0;
}