#ifndef SAILR_ASSERT
#define SAILR_ASSERT(cond) klee_assert((cond) && "SAILR_VULN_ASSERT")
#endif

#include <klee/klee.h>
#include <string.h>
#include <stdlib.h>

/* Stub for xmlInitParser to avoid linking issues */
void xmlInitParser(void) {
    /* Do nothing */
}

/* Mock chartab and inttab/longtab arrays as they appear in the target code */
int main(void) {
    /* The target line is: strncpy((char *) chartab, "  chartab\n", 20); */
    /* chartab appears to be an array that is memset to 0 with sizeof(chartab) */
    /* We need to model chartab as an array that could be smaller than 20 bytes */
    
    /* Create symbolic size for chartab to test OOB */
    unsigned int chartab_size;
    klee_make_symbolic(&chartab_size, sizeof(chartab_size), "chartab_size");
    
    /* Assume chartab_size is between 1 and 30 for reasonable exploration */
    klee_assume(chartab_size >= 1);
    klee_assume(chartab_size <= 30);
    
    /* Allocate chartab with the symbolic size */
    char *chartab = (char*)malloc(chartab_size);
    if (!chartab) return 1;
    
    /* Also allocate inttab and longtab as they appear in the snippet */
    /* Their sizes don't matter for the vulnerability but we need them to avoid null derefs */
    int *inttab = (int*)malloc(100 * sizeof(int));
    long *longtab = (long*)malloc(100 * sizeof(long));
    if (!inttab || !longtab) {
        free(chartab);
        if (inttab) free(inttab);
        if (longtab) free(longtab);
        return 1;
    }
    
    /* Simulate the code path from the snippet */
#ifdef _WIN32
    printf("Skipping on Windows for now\n");
    free(chartab);
    free(inttab);
    free(longtab);
    return 0;
#endif

    /* This is the vulnerable code path */
    memset(chartab, 0, chartab_size);  /* Using symbolic size */
    
    /* VULNERABILITY ASSERTION: The strncpy length (20) should not exceed chartab size */
    /* This is the condition that must hold to avoid buffer overflow */
    SAILR_ASSERT(20 <= chartab_size);
    
    /* REACHABILITY ASSERTION: Mark that we reached the vulnerable line */
    klee_assert(0 && "SAILR_REACH_ASSERT");
    
    /* The actual strncpy call (commented out since we can't reach past the klee_assert) */
    /* strncpy((char *) chartab, "  chartab\n", 20); */
    
    /* Cleanup */
    memset(inttab, 0, 100 * sizeof(int));
    memset(longtab, 0, 100 * sizeof(long));
    
    xmlInitParser();
    
    free(chartab);
    free(inttab);
    free(longtab);
    
    return 0;
}