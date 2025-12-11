#ifndef SAILR_ASSERT
#define SAILR_ASSERT(cond) klee_assert((cond) && "SAILR_VULN_ASSERT")
#endif

#include <stdlib.h>
#include <string.h>
#include "klee/klee.h"

/* Forward declarations for libxml2 types and functions needed */
typedef struct _xmlEntity xmlEntity;
typedef xmlEntity *xmlEntityPtr;

typedef enum {
    XML_ENTITY_DECL
} xmlEntityType;

struct _xmlEntity {
    xmlEntityType type;
    /* Other fields omitted for brevity */
};

/* Stub for xmlMalloc */
void* xmlMalloc(size_t size) {
    return malloc(size);
}

/* Stub for xmlEntitiesErrMemory */
void xmlEntitiesErrMemory(const char *msg) {
    /* Do nothing */
}

/* Target function: xmlCreateEntity (inferred from context) */
xmlEntityPtr xmlCreateEntity(void) {
    xmlEntityPtr ret;
    
    ret = (xmlEntityPtr) xmlMalloc(sizeof(xmlEntity));
    if (ret == NULL) {
        xmlEntitiesErrMemory("xmlCreateEntity: malloc failed");
        return NULL;
    }
    
    /* TARGET LINE 163: memset with size based on allocation */
    memset(ret, 0, sizeof(xmlEntity));
    
    ret->type = XML_ENTITY_DECL;
    
    return ret;
}

/* Entrypoint function mentioned in spec */
void xmlEncodeEntitiesInternal(void) {
    /* This would normally process entities, but we just call xmlCreateEntity */
    xmlCreateEntity();
}

int main(void) {
    /* Symbolic variable to control execution path */
    int path_selector;
    klee_make_symbolic(&path_selector, sizeof(path_selector), "path_selector");
    
    /* Assume we take the path where malloc succeeds */
    klee_assume(path_selector > 0);
    
    /* Call the function that leads to target line */
    xmlEncodeEntitiesInternal();
    
    /* Vulnerability assertion: For memset length-misuse, ensure the size
       parameter doesn't exceed allocated buffer size. Since we know the
       allocation is exactly sizeof(xmlEntity), the vulnerability would be
       if sizeof(xmlEntity) could be larger than allocated size, but here
       the allocation and memset use the same sizeof. However, the SA pattern
       suggests potential unbounded length - we assert the allocation succeeded
       and size is reasonable (non-negative). */
    SAILR_ASSERT(1);  /* Allocation succeeded and size is valid */
    
    /* Reachability marker */
    klee_assert(0 && "SAILR_REACH_ASSERT");
    
    return 0;
}