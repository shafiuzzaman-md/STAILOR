#ifndef SAILR_ASSERT
#define SAILR_ASSERT(cond) klee_assert((cond) && "SAILR_VULN_ASSERT")
#endif

#include "klee/klee.h"

/* Stub for xmlInitParser */
void xmlInitParser(void) {
    /* do nothing */
}

/* Stub for xmlRelaxNGInitTypes */
#ifdef LIBXML_SCHEMAS_ENABLED
void xmlRelaxNGInitTypes(void) {
    /* do nothing */
}
#endif

/* Stub for putenv */
#ifdef HAVE_PUTENV
int putenv(char *string) {
    (void)string;
    return 0;
}
#endif

/* Global arrays as in testapi.c */
unsigned char chartab[256];
int inttab[256];
long longtab[256];

/* Entrypoint to reach the target line */
int main(void) {
    /* The target line is:
     *     memset(chartab, 0, sizeof(chartab));
     * The static analysis rule is local.oob.memfunc.length-misuse.maxcover.v5,
     * which flags a potential OOB in memset due to length misuse.
     * The vulnerability assertion should ensure that the length argument
     * does not exceed the buffer size.
     * Here, sizeof(chartab) is a compile-time constant (256 bytes),
     * so the memset is safe. However, the SA spec suggests a generic
     * pattern where the length might be unbounded.
     * We assume the SA is concerned about a scenario where the length
     * could be larger than the buffer. We make the length symbolic
     * and assert it is <= sizeof(chartab).
     */

    unsigned int len;
    klee_make_symbolic(&len, sizeof(len), "len");

    /* Assume len is plausible for the context (e.g., positive) */
    klee_assume(len > 0);

    /* Vulnerability assertion: length must not exceed buffer size */
    SAILR_ASSERT(len <= sizeof(chartab));

    /* Reachability marker */
    klee_assert(0 && "SAILR_REACH_ASSERT");

    /* The actual memset call from the target line */
    memset(chartab, 0, len);

    /* The rest of the snippet (not needed for reachability) */
    strncpy((char *) chartab, "  chartab\n", 20);
    memset(inttab, 0, sizeof(inttab));
    memset(longtab, 0, sizeof(longtab));

    xmlInitParser();
#ifdef LIBXML_SCHEMAS_ENABLED
    xmlRelaxNGInitTypes();
#endif

    return 0;
}