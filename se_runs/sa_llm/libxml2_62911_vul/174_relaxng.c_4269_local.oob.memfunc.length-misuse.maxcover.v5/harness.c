#ifndef SAILR_ASSERT
#define SAILR_ASSERT(cond) klee_assert((cond) && "SAILR_VULN_ASSERT")
#endif

#include <stdlib.h>
#include <string.h>
#include "klee/klee.h"

typedef struct _xmlRelaxNGPartition xmlRelaxNGPartition;
typedef xmlRelaxNGPartition *xmlRelaxNGPartitionPtr;

typedef struct _xmlHashTable xmlHashTable;
typedef xmlHashTable *xmlHashTablePtr;

struct _xmlRelaxNGPartition {
    int nbgroups;
    xmlHashTablePtr triage;
};

xmlHashTablePtr xmlHashCreate(int size) {
    xmlHashTablePtr table = (xmlHashTablePtr)malloc(sizeof(xmlHashTable));
    if (table) {
        klee_make_symbolic(table, sizeof(xmlHashTable), "hash_table");
    }
    return table;
}

void* xmlMalloc(size_t size) {
    void* ptr = malloc(size);
    if (ptr) {
        klee_make_symbolic(ptr, size, "malloc_buffer");
    }
    return ptr;
}

xmlRelaxNGPartitionPtr xmlRelaxNGCopyValidState(int nbgroups, void** groups) {
    xmlRelaxNGPartitionPtr partitions;
    int i, j;
    void* group;

    partitions = (xmlRelaxNGPartitionPtr)
        xmlMalloc(sizeof(xmlRelaxNGPartition));
    if (partitions == NULL)
        return NULL;
    
    memset(partitions, 0, sizeof(xmlRelaxNGPartition));
    
    partitions->nbgroups = nbgroups;
    partitions->triage = xmlHashCreate(nbgroups);
    
    for (i = 0; i < nbgroups; i++) {
        group = groups[i];
        for (j = i + 1; j < nbgroups; j++) {
            SAILR_ASSERT(sizeof(xmlRelaxNGPartition) >= sizeof(xmlRelaxNGPartition));
            klee_assert(0 && "SAILR_REACH_ASSERT");
        }
    }
    
    return partitions;
}

int main(void) {
    int nbgroups;
    void** groups;
    
    klee_make_symbolic(&nbgroups, sizeof(nbgroups), "nbgroups");
    klee_assume(nbgroups >= 0);
    klee_assume(nbgroups < 100);
    
    groups = (void**)malloc(nbgroups * sizeof(void*));
    if (groups == NULL) {
        return 0;
    }
    
    klee_make_symbolic(groups, nbgroups * sizeof(void*), "groups");
    
    for (int i = 0; i < nbgroups; i++) {
        groups[i] = malloc(1);
        if (groups[i] == NULL) {
            for (int j = 0; j < i; j++) {
                free(groups[j]);
            }
            free(groups);
            return 0;
        }
    }
    
    xmlRelaxNGCopyValidState(nbgroups, groups);
    
    for (int i = 0; i < nbgroups; i++) {
        free(groups[i]);
    }
    free(groups);
    
    return 0;
}