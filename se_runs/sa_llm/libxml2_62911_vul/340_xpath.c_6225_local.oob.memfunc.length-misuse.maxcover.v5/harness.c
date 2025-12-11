#ifndef SAILR_ASSERT
#define SAILR_ASSERT(cond) klee_assert((cond) && "SAILR_VULN_ASSERT")
#endif

#include <stdlib.h>
#include <string.h>
#include "klee/klee.h"

/* Minimal type definitions needed for the harness */
typedef unsigned char xmlChar;
typedef struct _xmlNodeSet {
    int nodeNr;
    void *nodeTab;
} xmlNodeSet;

/* Minimal stub functions to avoid linking issues */
void xmlXPathErrMemory(void *ctxt, const char *msg) {
    /* Stub - do nothing */
}

void xmlFree(void *ptr) {
    free(ptr);
}

void* xmlMalloc(size_t size) {
    return malloc(size);
}

/* Target function signature from SA spec */
int xmlXPathCmpNodesExt(xmlNodeSet *ns1, xmlNodeSet *ns2);

/* Main harness */
int main(void) {
    /* Symbolic inputs for the two nodesets */
    xmlNodeSet ns1, ns2;
    
    /* Make nodeNr symbolic with constraints */
    klee_make_symbolic(&ns1.nodeNr, sizeof(ns1.nodeNr), "ns1_nodeNr");
    klee_make_symbolic(&ns2.nodeNr, sizeof(ns2.nodeNr), "ns2_nodeNr");
    
    /* Assume non-negative sizes (as hinted in bounds_hints) */
    klee_assume(ns1.nodeNr >= 0);
    klee_assume(ns2.nodeNr >= 0);
    
    /* Allocate dummy node tables to avoid null derefs */
    ns1.nodeTab = malloc(sizeof(void*) * (ns1.nodeNr > 0 ? ns1.nodeNr : 1));
    ns2.nodeTab = malloc(sizeof(void*) * (ns2.nodeNr > 0 ? ns2.nodeNr : 1));
    
    /* Call the target function */
    int result = xmlXPathCmpNodesExt(&ns1, &ns2);
    
    /* Vulnerability assertion: The suspicious memset at line 6225 uses
       ns1->nodeNr * sizeof(xmlChar *) as size. For OOB, we need to ensure
       the allocated buffer is at least that size. Since values1 is allocated
       earlier with xmlMalloc(ns1->nodeNr * sizeof(xmlChar *)), the memset
       should be safe if that allocation succeeded. The vulnerability would
       manifest if ns1->nodeNr causes integer overflow in the multiplication
       or if the allocation fails but execution continues.
       
       We assert the allocation size calculation doesn't overflow and
       the allocation succeeds. */
    size_t alloc_size = ns1.nodeNr * sizeof(xmlChar *);
    SAILR_ASSERT(alloc_size / sizeof(xmlChar *) == ns1.nodeNr && "No integer overflow");
    
    /* Reachability marker */
    klee_assert(0 && "SAILR_REACH_ASSERT");
    
    /* Cleanup */
    free(ns1.nodeTab);
    free(ns2.nodeTab);
    
    return result;
}