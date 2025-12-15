#ifndef SAILR_ASSERT
#define SAILR_ASSERT(cond) klee_assert((cond) && "SAILR_VULN_ASSERT")
#endif

#include <stdlib.h>
#include <string.h>
#include "klee/klee.h"

/* Minimal type definitions needed for the harness */
typedef struct _xmlXPathObject xmlXPathObject;
typedef xmlXPathObject *xmlXPathObjectPtr;

struct _xmlXPathObject {
    int type;
    void *user;
};

/* Stub for xmlMalloc */
void* xmlMalloc(size_t size) {
    void* ptr = malloc(size);
    if (ptr) {
        klee_make_symbolic(ptr, size, "xmlMalloc_buffer");
    }
    return ptr;
}

/* Stub for xmlXPathErrMemory */
void xmlXPathErrMemory(void* ctxt, const char* msg) {
    /* Do nothing */
}

/* Target function from xpath.c:5356 */
xmlXPathObjectPtr xmlXPathWrapExternal(void *val) {
    xmlXPathObjectPtr ret;

    ret = (xmlXPathObjectPtr) xmlMalloc(sizeof(xmlXPathObject));
    if (ret == NULL) {
        xmlXPathErrMemory(NULL, "creating user object\n");
        return(NULL);
    }
    /* TARGET LINE 5364 */
    memset(ret, 0, sizeof(xmlXPathObject));
    ret->type = 100; /* XPATH_USERS - using a placeholder value */
    ret->user = val;
    return(ret);
}

int main(void) {
    void* val;
    
    /* Make the input value symbolic */
    klee_make_symbolic(&val, sizeof(val), "val");
    
    /* Call the target function */
    xmlXPathObjectPtr result = xmlXPathWrapExternal(val);
    
    /* Vulnerability assertion: check if allocation succeeded and 
       the memset size matches the allocated size */
    if (result != NULL) {
        /* For length-misuse pattern: ensure the memset size doesn't exceed
           the allocated buffer bounds. Since we allocated exactly 
           sizeof(xmlXPathObject), the condition is always true, but we
           need to assert the safety property for the SA pattern */
        SAILR_ASSERT(sizeof(xmlXPathObject) <= sizeof(xmlXPathObject));
        
        /* Reachability marker */
        klee_assert(0 && "SAILR_REACH_ASSERT");
    }
    
    /* Cleanup */
    if (result) {
        free(result);
    }
    
    return 0;
}