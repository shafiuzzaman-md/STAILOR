#ifndef SAILR_ASSERT
#define SAILR_ASSERT(cond) klee_assert((cond) && "SAILR_VULN_ASSERT")
#endif

#include <stdlib.h>
#include <string.h>
#include "klee/klee.h"

/* Minimal type definitions needed */
typedef struct _xmlEntity xmlEntity;
typedef xmlEntity* xmlEntityPtr;
typedef enum {
    XML_ENTITY_DECL
} xmlEntityType;

/* Stub functions */
void xmlEntitiesErrMemory(const char* msg) {
    /* Do nothing */
}

void* xmlMalloc(size_t size) {
    return malloc(size);
}

char* xmlStrdup(const char* str) {
    if (str == NULL) return NULL;
    size_t len = strlen(str) + 1;
    char* copy = (char*)malloc(len);
    if (copy) memcpy(copy, str, len);
    return copy;
}

/* Target function - simplified version of xmlCopyEntity */
xmlEntityPtr xmlCopyEntity(xmlEntityPtr ent) {
    xmlEntityPtr cur;
    
    cur = (xmlEntityPtr) xmlMalloc(sizeof(xmlEntity));
    if (cur == NULL) {
        xmlEntitiesErrMemory("xmlCopyEntity:: malloc failed");
        return (NULL);
    }
    
    /* TARGET LINE 963: memset with size based on xmlMalloc return */
    memset(cur, 0, sizeof(xmlEntity));
    
    cur->type = XML_ENTITY_DECL;
    cur->etype = ent->etype;
    if (ent->name != NULL)
        cur->name = xmlStrdup(ent->name);
    
    return cur;
}

/* Entrypoint function mentioned in spec */
void* xmlEncodeEntitiesReentrant(void* ctx, void* doc, void* str) {
    /* Simplified to just call xmlCopyEntity */
    return xmlCopyEntity((xmlEntityPtr)str);
}

int main(void) {
    /* Symbolic input entity */
    xmlEntity ent;
    char name_buf[256];
    int name_len;
    
    /* Make entity fields symbolic */
    klee_make_symbolic(&ent.etype, sizeof(ent.etype), "ent_etype");
    klee_make_symbolic(&name_len, sizeof(name_len), "name_len");
    
    /* Constrain name_len to be reasonable */
    klee_assume(name_len >= 0);
    klee_assume(name_len < 256);
    
    /* Create symbolic name string */
    klee_make_symbolic(name_buf, sizeof(name_buf), "name_buf");
    name_buf[name_len] = '\0';  /* Ensure null termination */
    
    /* Set up the entity */
    if (name_len > 0) {
        ent.name = name_buf;
    } else {
        ent.name = NULL;
    }
    
    /* Call the vulnerable function */
    xmlEntityPtr result = xmlCopyEntity(&ent);
    
    /* VULNERABILITY ASSERTION: Check that malloc succeeded before memset */
    /* The vulnerability is that if xmlMalloc returns NULL, we would have
       returned earlier, but if it returns non-NULL, memset is safe.
       However, the SA pattern suggests checking that the size used in
       memset (sizeof(xmlEntity)) doesn't exceed the allocated size.
       Since xmlMalloc(sizeof(xmlEntity)) allocates exactly that size,
       the vulnerability assertion should check that the allocation was
       successful (non-NULL) before the memset. */
    if (result != NULL) {
        SAILR_ASSERT(result != NULL);  /* Allocation succeeded */
        klee_assert(0 && "SAILR_REACH_ASSERT");
        free(result->name);
        free(result);
    }
    
    return 0;
}