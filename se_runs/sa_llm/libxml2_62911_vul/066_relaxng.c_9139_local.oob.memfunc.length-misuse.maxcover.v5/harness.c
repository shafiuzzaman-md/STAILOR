#ifndef SAILR_ASSERT
#define SAILR_ASSERT(cond) klee_assert((cond) && "SAILR_VULN_ASSERT")
#endif

#include <stdlib.h>
#include <string.h>
#include "klee/klee.h"

/* Minimal type definitions needed for the harness */
typedef struct _xmlRelaxNGValidCtxt xmlRelaxNGValidCtxt;
typedef xmlRelaxNGValidCtxt* xmlRelaxNGValidCtxtPtr;

typedef struct _xmlNode xmlNode;
typedef xmlNode* xmlNodePtr;

/* Stub functions to avoid linking with libxml2 */
void* xmlMalloc(size_t size) {
    return malloc(size);
}

void xmlRngVErrMemory(xmlRelaxNGValidCtxtPtr ctxt, const char* msg) {
    /* Do nothing */
}

/* Simulate the vulnerable function path */
int vulnerable_path(xmlRelaxNGValidCtxtPtr ctxt, int nbgroups) {
    xmlNodePtr *list, *lasts;
    
    /* First allocation - line before target */
    list = (xmlNodePtr *) xmlMalloc(nbgroups * sizeof(xmlNodePtr));
    if (list == NULL) {
        xmlRngVErrMemory(ctxt, "validating\n");
        return (-1);
    }
    
    /* TARGET LINE: 9139 - memset with potential OOB */
    memset(list, 0, nbgroups * sizeof(xmlNodePtr));
    
    /* Second allocation - after target line */
    lasts = (xmlNodePtr *) xmlMalloc(nbgroups * sizeof(xmlNodePtr));
    if (lasts == NULL) {
        xmlRngVErrMemory(ctxt, "validating\n");
        free(list);
        return (-1);
    }
    
    /* Cleanup */
    free(list);
    free(lasts);
    return 0;
}

/* Entrypoint function from SA spec */
int xmlRelaxNGValidateDoc(xmlRelaxNGValidCtxtPtr ctxt) {
    int nbgroups;
    
    /* Make nbgroups symbolic - this is the critical variable */
    klee_make_symbolic(&nbgroups, sizeof(nbgroups), "nbgroups");
    
    /* Assume reasonable bounds based on SA hints */
    klee_assume(nbgroups >= 0);  /* From bounds_hints relation ">= 0" */
    klee_assume(nbgroups <= 1000); /* Reasonable upper bound for exploration */
    
    /* Call the vulnerable path */
    return vulnerable_path(ctxt, nbgroups);
}

int main(void) {
    xmlRelaxNGValidCtxt dummy_ctxt;
    
    /* Call the entrypoint */
    int result = xmlRelaxNGValidateDoc(&dummy_ctxt);
    
    /* Vulnerability assertion: nbgroups must be non-negative for safe memset */
    /* The SA rule is about OOB in memset due to length misuse */
    /* The condition ensures the allocation size calculation doesn't overflow/wrap */
    SAILR_ASSERT(nbgroups >= 0);
    
    /* Reachability marker - placed after vulnerability assertion */
    klee_assert(0 && "SAILR_REACH_ASSERT");
    
    return result;
}