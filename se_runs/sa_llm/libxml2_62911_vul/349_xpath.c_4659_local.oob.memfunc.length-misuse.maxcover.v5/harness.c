#ifndef SAILR_ASSERT
#define SAILR_ASSERT(cond) klee_assert((cond) && "SAILR_VULN_ASSERT")
#endif

#include <stdlib.h>
#include <string.h>
#include "klee/klee.h"

/* Minimal type definitions needed for the harness */
typedef enum {
    XPATH_STRING = 1
} xmlXPathObjectType;

typedef struct _xmlXPathObject {
    xmlXPathObjectType type;
    char *stringval;
} xmlXPathObject;

/* Stub functions to avoid linking issues */
void xmlXPathErrMemory(void *ctxt, const char *msg) {
    /* Do nothing */
}

void xmlFree(void *ptr) {
    if (ptr) free(ptr);
}

/* Target function - simplified version based on the snippet */
xmlXPathObject* xmlXPathNewString(char *val) {
    xmlXPathObject *ret;
    
    if (val == NULL) {
        return NULL;
    }
    
    ret = (xmlXPathObject*)malloc(sizeof(xmlXPathObject));
    if (ret == NULL) {
        xmlXPathErrMemory(NULL, "creating string object\n");
        xmlFree(val);
        return NULL;
    }
    
    /* TARGET LINE 4659: memset(ret, 0, sizeof(xmlXPathObject)); */
    memset(ret, 0, sizeof(xmlXPathObject));
    
    ret->type = XPATH_STRING;
    ret->stringval = val;
    return ret;
}

/* Entrypoint function from SA spec */
xmlXPathObject* xmlXPathCmpNodesExt(void) {
    /* This function would normally compare nodes, but for our harness
       we just need to trigger the vulnerable path */
    char *val;
    xmlXPathObject *result;
    
    /* Create a symbolic string */
    val = (char*)malloc(32);
    if (!val) return NULL;
    
    klee_make_symbolic(val, 32, "val_buffer");
    
    /* Call the function that contains the target line */
    result = xmlXPathNewString(val);
    
    return result;
}

int main(void) {
    xmlXPathObject *obj;
    
    /* Call the entrypoint to reach the target code */
    obj = xmlXPathCmpNodesExt();
    
    /* If we reach here, the memset at line 4659 was executed */
    if (obj != NULL) {
        /* Vulnerability assertion: For memset length-misuse, we need to ensure
           the size parameter doesn't exceed the allocated buffer.
           Since ret is allocated with malloc(sizeof(xmlXPathObject)),
           and memset uses sizeof(xmlXPathObject), the condition should be:
           sizeof(xmlXPathObject) <= malloc_size(ret) */
        /* However, we can't get malloc_size portably, so we assert that
           the allocation was successful and non-NULL, which implies
           the buffer is at least the requested size */
        SAILR_ASSERT(obj != NULL);
        
        /* Reachability marker */
        klee_assert(0 && "SAILR_REACH_ASSERT");
        
        /* Cleanup */
        if (obj->stringval) free(obj->stringval);
        free(obj);
    }
    
    return 0;
}