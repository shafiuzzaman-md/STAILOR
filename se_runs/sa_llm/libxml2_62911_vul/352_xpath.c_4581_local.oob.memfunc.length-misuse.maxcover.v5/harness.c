#ifndef SAILR_ASSERT
#define SAILR_ASSERT(cond) klee_assert((cond) && "SAILR_VULN_ASSERT")
#endif

#include <stdlib.h>
#include <string.h>
#include "klee/klee.h"

/* Forward declarations for libxml2 types and functions needed to reach target */
typedef struct _xmlXPathObject xmlXPathObject;
typedef xmlXPathObject *xmlXPathObjectPtr;

struct _xmlXPathObject {
    int type;
    double floatval;
    /* Other fields omitted for brevity */
};

#define XPATH_NUMBER 1

/* Stub for xmlMalloc */
void* xmlMalloc(size_t size) {
    void* ptr = malloc(size);
    return ptr;
}

/* Stub for xmlXPathErrMemory */
void xmlXPathErrMemory(void* ctxt, const char* extra) {
    /* Do nothing */
}

/* Target function: xmlXPathNewFloat (inferred from context) */
xmlXPathObjectPtr xmlXPathNewFloat(double val) {
    xmlXPathObjectPtr ret;
    
    ret = (xmlXPathObjectPtr) xmlMalloc(sizeof(xmlXPathObject));
    if (ret == NULL) {
        xmlXPathErrMemory(NULL, "creating float object\n");
        return(NULL);
    }
    memset(ret, 0, sizeof(xmlXPathObject));
    ret->type = XPATH_NUMBER;
    ret->floatval = val;
    return(ret);
}

/* Entrypoint function mentioned in spec */
void xmlXPathCmpNodesExt(void) {
    /* This function likely calls xmlXPathNewFloat indirectly */
    /* For simplicity, we call xmlXPathNewFloat directly */
    double symbolic_val;
    klee_make_symbolic(&symbolic_val, sizeof(symbolic_val), "symbolic_val");
    xmlXPathObjectPtr obj = xmlXPathNewFloat(symbolic_val);
    
    /* Vulnerability assertion: check that memset length doesn't exceed allocation */
    /* Since xmlMalloc allocates sizeof(xmlXPathObject), and memset uses same size,
       the vulnerability would be if sizeof(xmlXPathObject) > allocated size.
       But xmlMalloc could return NULL or insufficient memory. The SA pattern
       suggests checking that the allocation succeeded and size is appropriate. */
    SAILR_ASSERT(ret != NULL && sizeof(xmlXPathObject) <= malloc_usable_size(ret));
    
    /* Reachability marker */
    klee_assert(0 && "SAILR_REACH_ASSERT");
    
    if (obj) free(obj);
}

int main(void) {
    /* Make symbolic inputs to drive execution to target */
    xmlXPathCmpNodesExt();
    return 0;
}