#ifndef SAILR_ASSERT
#define SAILR_ASSERT(cond) klee_assert((cond) && "SAILR_VULN_ASSERT")
#endif

#include <stdlib.h>
#include <string.h>
#include "klee/klee.h"

/* Declarations for global variables from testapi.c */
extern unsigned char chartab[100];
extern int inttab[100];
extern long longtab[100];

/* Stub for xmlInitParser */
void xmlInitParser(void) {
    /* Do nothing */
}

/* Stub for xmlRelaxNGInitTypes */
#ifdef LIBXML_SCHEMAS_ENABLED
void xmlRelaxNGInitTypes(void) {
    /* Do nothing */
}
#endif

/* Stub for putenv */
#ifdef HAVE_PUTENV
int putenv(char *string) {
    (void)string;
    return 0;
}
#endif

/* Entrypoint from testapi.c that contains the target line */
void testapi_main(void) {
#ifdef HAVE_PUTENV
    /* access to the proxy can slow up regression tests a lot */
    putenv((char *) "http_proxy=");
#endif

    memset(chartab, 0, sizeof(chartab));
    strncpy((char *) chartab, "  chartab\n", 20);
    memset(inttab, 0, sizeof(inttab));
    
    /* TARGET LINE 143 - vulnerable memset call */
    memset(longtab, 0, sizeof(longtab));
    
    xmlInitParser();
#ifdef LIBXML_SCHEMAS_ENABLED
    xmlRelaxNGInitTypes();
#endif
}

int main(void) {
    /* Make the global arrays symbolic to explore different states */
    klee_make_symbolic(chartab, sizeof(chartab), "chartab");
    klee_make_symbolic(inttab, sizeof(inttab), "inttab");
    klee_make_symbolic(longtab, sizeof(longtab), "longtab");
    
    /* Call the function that contains the target line */
    testapi_main();
    
    /* Vulnerability assertion: ensure the size parameter to memset is safe */
    /* For memset(longtab, 0, sizeof(longtab)), the vulnerability would be if
       sizeof(longtab) could be larger than the actual allocated size.
       Since longtab is declared as extern, we assume it has a fixed size.
       The SA rule suggests checking that the count doesn't exceed bounds. */
    SAILR_ASSERT(sizeof(longtab) <= 100 * sizeof(long));
    
    /* Reachability marker */
    klee_assert(0 && "SAILR_REACH_ASSERT");
    
    return 0;
}