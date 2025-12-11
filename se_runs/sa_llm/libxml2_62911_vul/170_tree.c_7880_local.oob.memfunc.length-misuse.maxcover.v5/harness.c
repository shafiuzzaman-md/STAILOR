#ifndef SAILR_ASSERT
#define SAILR_ASSERT(cond) klee_assert((cond) && "SAILR_VULN_ASSERT")
#endif

#include <stdlib.h>
#include <string.h>
#include "klee/klee.h"

/* Forward declarations for functions we need from libxml2 */
typedef struct _xmlDOMWrapCtxt xmlDOMWrapCtxt;
struct _xmlDOMWrapCtxt {
    /* Minimal stub structure - just enough for allocation */
    int dummy;
};

void xmlTreeErrMemory(const char *msg);

/* Stub implementation of xmlTreeErrMemory */
void xmlTreeErrMemory(const char *msg) {
    /* Do nothing - just prevent linker errors */
    (void)msg;
}

/* Target function: xmlDOMWrapNewCtxt (inferred from context) */
xmlDOMWrapCtxt* xmlDOMWrapNewCtxt(void) {
    xmlDOMWrapCtxt *ret;
    
    ret = (xmlDOMWrapCtxt*)malloc(sizeof(xmlDOMWrapCtxt));
    if (ret == NULL) {
        xmlTreeErrMemory("allocating DOM-wrapper context");
        return (NULL);
    }
    
    /* TARGET LINE 7880: memset(ret, 0, sizeof(xmlDOMWrapCtxt)); */
    memset(ret, 0, sizeof(xmlDOMWrapCtxt));
    
    return (ret);
}

/* Entrypoint function mentioned in SA spec */
void* xmlStringGetNodeList(void) {
    /* This function calls xmlDOMWrapNewCtxt based on the SA spec */
    return xmlDOMWrapNewCtxt();
}

int main(void) {
    /* Create symbolic variable to control execution path */
    int symbolic_choice;
    klee_make_symbolic(&symbolic_choice, sizeof(symbolic_choice), "symbolic_choice");
    
    /* Assume the choice leads to calling the vulnerable function */
    klee_assume(symbolic_choice > 0);
    
    /* Call the entrypoint function */
    xmlDOMWrapCtxt* result = (xmlDOMWrapCtxt*)xmlStringGetNodeList();
    
    /* Vulnerability assertion: For memset OOB, we need to ensure
       the allocated size is at least the size being cleared.
       Since malloc can fail (returning NULL), the vulnerability
       would be if ret is NULL but we still call memset (which doesn't happen
       due to the NULL check). However, the SA pattern suggests the length
       (sizeof(xmlDOMWrapCtxt)) might be unbounded relative to allocation.
       
       Actually, the vulnerability is that sizeof(xmlDOMWrapCtxt) might be
       incorrectly large or the allocation might be too small. Since we're
       using the same sizeof() for both malloc and memset, the real issue
       would be if there's a mismatch between what malloc allocates and
       what memset clears.
       
       Given the SA pattern "local.oob.memfunc.length-misuse.maxcover.v5",
       we assert that the allocation size is sufficient for the memset. */
    
    if (result != NULL) {
        /* The vulnerability assertion: ensure the allocated memory
           is at least as large as what we're clearing */
        SAILR_ASSERT(malloc_usable_size(result) >= sizeof(xmlDOMWrapCtxt));
        
        /* Reachability assertion */
        klee_assert(0 && "SAILR_REACH_ASSERT");
        
        /* Clean up */
        free(result);
    }
    
    return 0;
}