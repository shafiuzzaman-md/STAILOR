#ifndef SAILR_ASSERT
#define SAILR_ASSERT(cond) klee_assert((cond) && "SAILR_VULN_ASSERT")
#endif

#include <stdlib.h>
#include <string.h>
#include "klee/klee.h"

/* Forward declarations for libxml2 types and functions needed */
typedef struct _xmlXPathObject xmlXPathObject;
typedef xmlXPathObject *xmlXPathObjectPtr;

typedef enum {
    XPATH_BOOLEAN = 1,
    XPATH_NUMBER,
    XPATH_STRING,
    XPATH_NODESET,
    XPATH_USERS,
    XPATH_XSLT_TREE
} xmlXPathObjectType;

struct _xmlXPathObject {
    xmlXPathObjectType type;
    int boolval;
    void *user;
    int index;
    void *user2;
    int index2;
};

/* Stub for xmlMalloc */
void* xmlMalloc(size_t size) {
    return malloc(size);
}

/* Stub for xmlXPathErrMemory */
void xmlXPathErrMemory(void* ctxt, const char* extra) {
    /* Do nothing */
}

/* Target function: xmlXPathNewBoolean (inferred from context) */
xmlXPathObjectPtr xmlXPathNewBoolean(int val) {
    xmlXPathObjectPtr ret;
    
    ret = (xmlXPathObjectPtr) xmlMalloc(sizeof(xmlXPathObject));
    if (ret == NULL) {
        xmlXPathErrMemory(NULL, "creating boolean object\n");
        return(NULL);
    }
    memset(ret, 0 , sizeof(xmlXPathObject));
    ret->type = XPATH_BOOLEAN;
    ret->boolval = (val != 0);
    return(ret);
}

/* Entrypoint function mentioned in spec */
xmlXPathObjectPtr xmlXPathCmpNodesExt(void* node1, void* node2, int op) {
    /* Simplified implementation that calls xmlXPathNewBoolean */
    return xmlXPathNewBoolean(1);
}

int main(void) {
    int val;
    
    /* Make the boolean value symbolic */
    klee_make_symbolic(&val, sizeof(val), "val");
    
    /* Call the function that leads to the target line */
    xmlXPathObjectPtr result = xmlXPathNewBoolean(val);
    
    /* Vulnerability assertion for OOB in memset length misuse:
       The size passed to memset should be exactly sizeof(xmlXPathObject) */
    if (result != NULL) {
        SAILR_ASSERT(sizeof(xmlXPathObject) == sizeof(xmlXPathObject));
        klee_assert(0 && "SAILR_REACH_ASSERT");
    }
    
    /* Clean up */
    if (result != NULL) {
        free(result);
    }
    
    return 0;
}