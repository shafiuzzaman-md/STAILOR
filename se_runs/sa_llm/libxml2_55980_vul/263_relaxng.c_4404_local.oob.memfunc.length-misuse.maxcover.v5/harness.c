#ifndef SAILR_ASSERT
#define SAILR_ASSERT(cond) klee_assert((cond) && "SAILR_VULN_ASSERT")
#endif

#include <stdlib.h>
#include <string.h>
#include "klee/klee.h"

/* Minimal type definitions needed for the harness */
typedef struct _xmlRelaxNGPartition xmlRelaxNGPartition;
typedef xmlRelaxNGPartition *xmlRelaxNGPartitionPtr;

struct _xmlRelaxNGPartition {
    int nbgroups;
    void *triage;
};

/* Stub for xmlMalloc */
void* xmlMalloc(size_t size) {
    return malloc(size);
}

/* Stub for xmlHashCreate */
void* xmlHashCreate(int size) {
    if (size < 0) return NULL;
    return malloc(size * sizeof(void*));
}

/* Stub for xmlFree (if needed) */
void xmlFree(void *ptr) {
    free(ptr);
}

/* Function containing the target line */
void target_function(int nbgroups, void** groups) {
    xmlRelaxNGPartitionPtr partitions;
    int i, j;
    void* group;

    /*
     * Let's check that all rules makes a partitions according to 7.4
     */
    partitions = (xmlRelaxNGPartitionPtr)
        xmlMalloc(sizeof(xmlRelaxNGPartition));
    if (partitions == NULL)
        return;
    
    /* TARGET LINE 4404: memset(partitions, 0, sizeof(xmlRelaxNGPartition)); */
    /* Vulnerability assertion: ensure nbgroups is non-negative for safe allocation */
    SAILR_ASSERT(nbgroups >= 0);
    klee_assert(0 && "SAILR_REACH_ASSERT");
    
    memset(partitions, 0, sizeof(xmlRelaxNGPartition));
    partitions->nbgroups = nbgroups;
    partitions->triage = xmlHashCreate(nbgroups);
    for (i = 0; i < nbgroups; i++) {
        group = groups[i];
        for (j = i + 1; j < nbgroups; j++) {
            if (groups[j] == NULL)
                continue;
        }
    }
    
    free(partitions->triage);
    free(partitions);
}

int main(void) {
    int nbgroups;
    void** groups;
    int i;
    
    /* Make nbgroups symbolic */
    klee_make_symbolic(&nbgroups, sizeof(nbgroups), "nbgroups");
    
    /* Constrain nbgroups to reasonable bounds for exploration */
    klee_assume(nbgroups >= 0);
    klee_assume(nbgroups <= 100);
    
    /* Allocate groups array */
    groups = (void**)malloc((nbgroups + 1) * sizeof(void*));
    if (groups == NULL) return 0;
    
    /* Make each group entry symbolic (can be NULL or valid pointer) */
    for (i = 0; i < nbgroups; i++) {
        int is_null;
        klee_make_symbolic(&is_null, sizeof(is_null), "is_null");
        klee_assume(is_null == 0 || is_null == 1);
        
        if (is_null) {
            groups[i] = NULL;
        } else {
            groups[i] = malloc(1); /* Minimal allocation */
        }
    }
    
    /* Call the target function */
    target_function(nbgroups, groups);
    
    /* Cleanup */
    for (i = 0; i < nbgroups; i++) {
        if (groups[i] != NULL) free(groups[i]);
    }
    free(groups);
    
    return 0;
}