#ifndef SAILR_ASSERT
#define SAILR_ASSERT(cond) klee_assert((cond) && "SAILR_VULN_ASSERT")
#endif

#include <string.h>
#include <stdlib.h>
#include "klee/klee.h"

/* Forward declarations for functions we need from testlimits.c */
static void *hugeOpen(const char *URI);

/* Global variable referenced in the target function */
static struct {
    const char *name;
} *hugeTests = NULL;
static int currentTest;

/* Stub implementation of hugeOpen from testlimits.c */
static void *
hugeOpen(const char *URI) {
    if ((URI == NULL) || (strncmp(URI, "huge:", 5)))
        return(NULL);

    for (currentTest = 0; currentTest < sizeof(hugeTests)/sizeof(hugeTests[0]);
         currentTest++)
         if (!strcmp(hugeTests[currentTest].name, URI))
             goto found;

    return(NULL);

found:
    /* Vulnerability assertion: strncmp length (5) must not exceed URI length */
    SAILR_ASSERT(strlen(URI) >= 5);
    
    /* Reachability marker */
    klee_assert(0 && "SAILR_REACH_ASSERT");
    
    return (void *)0x1;
}

int main(void) {
    /* Allocate and initialize the global test array */
    hugeTests = malloc(2 * sizeof(*hugeTests));
    if (!hugeTests) return 1;
    
    /* Make the first test name symbolic to match the URI */
    char test_name[256];
    klee_make_symbolic(test_name, sizeof(test_name), "test_name");
    klee_assume(test_name[255] == '\0'); /* Ensure null termination */
    
    hugeTests[0].name = test_name;
    hugeTests[1].name = "dummy"; /* Second entry to avoid zero-size array */
    
    /* Make URI symbolic */
    char URI[256];
    klee_make_symbolic(URI, sizeof(URI), "URI");
    klee_assume(URI[255] == '\0'); /* Ensure null termination */
    
    /* Constrain URI to start with "huge:" to pass the initial check */
    klee_assume(URI[0] == 'h');
    klee_assume(URI[1] == 'u');
    klee_assume(URI[2] == 'g');
    klee_assume(URI[3] == 'e');
    klee_assume(URI[4] == ':');
    
    /* Constrain test_name to match URI so we reach the target path */
    for (int i = 0; i < 256; i++) {
        if (URI[i] == '\0') {
            klee_assume(test_name[i] == '\0');
            break;
        }
        klee_assume(test_name[i] == URI[i]);
    }
    
    /* Call the target function */
    void *result = hugeOpen(URI);
    
    /* Clean up */
    free(hugeTests);
    
    return 0;
}