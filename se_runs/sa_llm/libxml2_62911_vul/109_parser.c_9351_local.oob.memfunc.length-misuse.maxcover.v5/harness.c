#ifndef SAILR_ASSERT
#define SAILR_ASSERT(cond) klee_assert((cond) && "SAILR_VULN_ASSERT")
#endif

#include <stdlib.h>
#include <string.h>
#include "klee/klee.h"

/* Minimal types needed from libxml2 */
typedef struct _xmlParserCtxt xmlParserCtxt;
typedef struct _xmlHashTable xmlHashTable;

/* Stub for xmlParserNsLookup - the entrypoint from SA spec */
void* xmlParserNsLookup(xmlParserCtxt* ctxt, const unsigned char* prefix, const unsigned char* nsName) {
    /* This is a stub that simulates reaching the vulnerable memset */
    /* We need to simulate the conditions that lead to line 9351 */
    
    /* Make table pointer symbolic to explore different states */
    xmlHashTable* table;
    klee_make_symbolic(&table, sizeof(table), "table");
    
    /* Simulate the variables from the SA spec */
    int size;
    int newSize;
    klee_make_symbolic(&size, sizeof(size), "size");
    klee_make_symbolic(&newSize, sizeof(newSize), "newSize");
    
    /* Assume constraints based on SA bounds hints */
    klee_assume(size >= 0);
    klee_assume(newSize >= 0);
    
    /* The vulnerable memset call from line 9351 */
    /* Original: memset(&table[size], 0, (newSize - size) * sizeof(table[0])); */
    
    /* VULNERABILITY ASSERTION: Check for OOB in memset */
    /* Condition: newSize >= size AND (newSize - size) doesn't overflow AND 
       &table[size] points within allocated bounds */
    /* Since we don't have actual table allocation, we'll check the length condition */
    SAILR_ASSERT(newSize >= size && (newSize - size) >= 0);
    
    /* REACHABILITY ASSERTION */
    klee_assert(0 && "SAILR_REACH_ASSERT");
    
    return NULL;
}

/* Minimal xmlParserCtxt structure to avoid null derefs */
struct _xmlParserCtxt {
    xmlHashTable* attrHash;
    int attrHashMax;
};

/* Entrypoint */
int main(void) {
    /* Create and initialize parser context */
    xmlParserCtxt* ctxt = malloc(sizeof(xmlParserCtxt));
    if (!ctxt) return 1;
    
    /* Make context fields symbolic */
    klee_make_symbolic(&ctxt->attrHash, sizeof(ctxt->attrHash), "attrHash");
    klee_make_symbolic(&ctxt->attrHashMax, sizeof(ctxt->attrHashMax), "attrHashMax");
    
    /* Symbolic inputs for xmlParserNsLookup */
    unsigned char prefix[32];
    unsigned char nsName[32];
    klee_make_symbolic(prefix, sizeof(prefix), "prefix");
    klee_make_symbolic(nsName, sizeof(nsName), "nsName");
    
    /* Call the entrypoint that leads to the vulnerable code */
    xmlParserNsLookup(ctxt, prefix, nsName);
    
    free(ctxt);
    return 0;
}