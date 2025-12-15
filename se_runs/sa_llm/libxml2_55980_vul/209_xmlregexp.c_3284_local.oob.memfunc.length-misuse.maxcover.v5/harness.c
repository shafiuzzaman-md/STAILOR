#ifndef SAILR_ASSERT
#define SAILR_ASSERT(cond) klee_assert((cond) && "SAILR_VULN_ASSERT")
#endif

#include <stdlib.h>
#include <string.h>
#include "klee/klee.h"

/* Minimal stubs for libxml2 types and functions needed to reach target */
typedef struct _xmlRegExecCtxt xmlRegExecCtxt;
typedef xmlRegExecCtxt *xmlRegExecCtxtPtr;

typedef struct _xmlRegexp xmlRegexp;
typedef xmlRegexp *xmlRegexpPtr;

struct _xmlRegexp {
    int nbCounters;
};

struct _xmlRegExecCtxt {
    int *counts;
    int status;
    void *state;
    char *inputString;
    int index;
    void *inputStack;
    int inputStackMax;
};

void *xmlMalloc(size_t size) {
    return malloc(size);
}

void xmlRegexpErrMemory(void *ctxt, const char *msg) {
    /* stub */
}

/* Target function signature from xmlregexp.c */
int xmlRegExecPushString2(xmlRegExecCtxtPtr exec, const char *value, const char *value2, void *data);

int main(void) {
    /* Symbolic inputs to control execution path */
    int nbCounters;
    int exec_status;
    int exec_index;
    char inputString[2];
    void *exec_state;

    /* Make inputs symbolic */
    klee_make_symbolic(&nbCounters, sizeof(nbCounters), "nbCounters");
    klee_make_symbolic(&exec_status, sizeof(exec_status), "exec_status");
    klee_make_symbolic(&exec_index, sizeof(exec_index), "exec_index");
    klee_make_symbolic(inputString, sizeof(inputString), "inputString");
    klee_make_symbolic(&exec_state, sizeof(exec_state), "exec_state");

    /* Assume constraints to reach the target line */
    klee_assume(nbCounters > 0);  /* Must enter the if branch at line 3278 */
    klee_assume(exec_status == 0);  /* Required for while loop condition */
    klee_assume(exec_state != NULL);  /* Required for while loop condition */
    klee_assume(exec_index == 0);  /* Simple index value */
    klee_assume(inputString[0] != 0);  /* Ensure while loop enters */

    /* Allocate and initialize regexp structure */
    xmlRegexp comp;
    comp.nbCounters = nbCounters;

    /* Allocate and initialize execution context */
    xmlRegExecCtxt exec;
    exec.status = exec_status;
    exec.state = exec_state;
    exec.inputString = inputString;
    exec.index = exec_index;
    exec.inputStack = NULL;
    exec.inputStackMax = 0;

    /* Simulate the target code path */
    if (comp.nbCounters > 0) {
        exec.counts = (int *)xmlMalloc(comp.nbCounters * sizeof(int));
        if (exec.counts == NULL) {
            xmlRegexpErrMemory(NULL, "running regexp");
            return -1;
        }
        
        /* VULNERABILITY ASSERTION: Check that the multiplication doesn't overflow */
        /* The vulnerable memset uses comp.nbCounters * sizeof(int) as size */
        SAILR_ASSERT(comp.nbCounters > 0 && comp.nbCounters <= (SIZE_MAX / sizeof(int)));
        
        /* REACHABILITY ASSERTION */
        klee_assert(0 && "SAILR_REACH_ASSERT");
        
        /* This simulates the target memset call at line 3284 */
        memset(exec.counts, 0, comp.nbCounters * sizeof(int));
    } else {
        exec.counts = NULL;
    }

    /* Clean up */
    if (exec.counts) {
        free(exec.counts);
    }

    return 0;
}