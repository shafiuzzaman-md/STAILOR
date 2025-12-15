#ifndef SAILR_ASSERT
#define SAILR_ASSERT(cond) klee_assert((cond) && "SAILR_VULN_ASSERT")
#endif

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "klee/klee.h"

/* Minimal stub for xmlTextReaderRead to allow reaching target line */
int xmlTextReaderRead(void *reader) {
    int ret;
    klee_make_symbolic(&ret, sizeof(ret), "read_ret");
    klee_assume(ret == 1 || ret == 0 || ret == -1);
    return ret;
}

/* Minimal stub for xmlReaderForFile to create a non-NULL reader */
void* xmlReaderForFile(const char *filename, const char *encoding, int options) {
    static int dummy_reader;
    return &dummy_reader;
}

/* Minimal stub for xmlFreeTextReader */
void xmlFreeTextReader(void *reader) {
    /* Do nothing */
}

int main(void) {
    char filename[256];
    unsigned int crazy_indx;
    unsigned long limit;
    int fail;
    int ret;
    int res = 0;
    void *reader;
    
    /* Make filename symbolic with constraints */
    klee_make_symbolic(filename, sizeof(filename), "filename");
    /* Ensure null termination */
    filename[sizeof(filename)-1] = '\0';
    
    /* Make other variables symbolic */
    klee_make_symbolic(&crazy_indx, sizeof(crazy_indx), "crazy_indx");
    klee_make_symbolic(&limit, sizeof(limit), "limit");
    klee_make_symbolic(&fail, sizeof(fail), "fail");
    klee_make_symbolic(&ret, sizeof(ret), "ret");
    
    /* Constrain fail to be 0 to take the else branch */
    klee_assume(fail == 0);
    
    /* Constrain ret to be != 0 to enter the if block */
    klee_assume(ret != 0);
    
    /* Create a reader */
    reader = xmlReaderForFile(filename, NULL, 0);
    
    /* Simulate the loop from the original code */
    ret = xmlTextReaderRead(reader);
    while (ret == 1) {
        ret = xmlTextReaderRead(reader);
    }
    
    /* Now we're at the target location */
    if (ret != 0) {
        if (fail)
            res = 0;
        else {
            /* Vulnerability assertion: ensure strncmp doesn't read beyond filename bounds */
            /* The strncmp compares filename with "crazy:" using length 6 */
            /* We need to ensure filename has at least 6 bytes accessible */
            SAILR_ASSERT(strlen(filename) >= 6);
            
            /* Reachability marker */
            klee_assert(0 && "SAILR_REACH_ASSERT");
            
            /* The actual strncmp call (simulated) */
            if (strncmp(filename, "crazy:", 6) == 0)
                fprintf(stderr, "Failed to parse '%s' %u\n", filename, crazy_indx);
            else
                fprintf(stderr, "Failed to parse '%s' %lu\n", filename, (unsigned long) limit);
            res = 1;
        }
    }
    
    xmlFreeTextReader(reader);
    return 0;
}