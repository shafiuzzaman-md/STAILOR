#ifndef SAILR_ASSERT
#define SAILR_ASSERT(cond) klee_assert((cond) && "SAILR_VULN_ASSERT")
#endif

#include <stdlib.h>
#include <string.h>
#include "klee/klee.h"

/* Forward declarations for libxml2 types and functions we need */
typedef struct _xmlDtd xmlDtd;
typedef xmlDtd *xmlDtdPtr;

typedef enum {
    XML_DTD_NODE = 10
} xmlElementType;

struct _xmlDtd {
    void *private;
    xmlElementType type;
    const char *name;
    struct _xmlDtd *children;
    struct _xmlDtd *last;
    struct _xmlDtd *parent;
    struct _xmlDtd *next;
    struct _xmlDtd *prev;
    struct _xmlDoc *doc;
    void *notations;
    void *elements;
    void *attributes;
    void *entities;
    const char *ExternalID;
    const char *SystemID;
    void *pentities;
};

/* Stub implementations of libxml2 functions */
void xmlTreeErrMemory(const char *extra) {
    (void)extra;
}

void *xmlMalloc(size_t size) {
    return malloc(size);
}

char *xmlStrdup(const char *cur) {
    if (cur == NULL) return NULL;
    size_t len = strlen(cur) + 1;
    char *copy = (char *)malloc(len);
    if (copy != NULL) {
        memcpy(copy, cur, len);
    }
    return copy;
}

/* The target function from tree.c line 897 */
xmlDtdPtr xmlNewDtd(const char *name, const char *ExternalID, const char *SystemID) {
    xmlDtdPtr cur;
    
    cur = (xmlDtdPtr) xmlMalloc(sizeof(xmlDtd));
    if (cur == NULL) {
        xmlTreeErrMemory("building DTD");
        return(NULL);
    }
    
    /* TARGET LINE 897: memset(cur, 0, sizeof(xmlDtd)); */
    memset(cur, 0, sizeof(xmlDtd));
    
    cur->type = XML_DTD_NODE;
    
    if (name != NULL)
        cur->name = xmlStrdup(name);
    if (ExternalID != NULL)
        cur->ExternalID = xmlStrdup(ExternalID);
    if (SystemID != NULL)
        cur->SystemID = xmlStrdup(SystemID);
    
    return cur;
}

int main(void) {
    /* Make inputs symbolic to explore different paths */
    char name[256];
    char external_id[256];
    char system_id[256];
    
    klee_make_symbolic(name, sizeof(name), "name");
    klee_make_symbolic(external_id, sizeof(external_id), "external_id");
    klee_make_symbolic(system_id, sizeof(system_id), "system_id");
    
    /* Ensure null-terminated strings */
    name[255] = '\0';
    external_id[255] = '\0';
    system_id[255] = '\0';
    
    /* Call the target function */
    xmlDtdPtr dtd = xmlNewDtd(
        klee_is_symbolic(name[0]) ? name : NULL,
        klee_is_symbolic(external_id[0]) ? external_id : NULL,
        klee_is_symbolic(system_id[0]) ? system_id : NULL
    );
    
    /* Vulnerability assertion: For memset length-misuse, we need to ensure
     * that the size argument doesn't exceed the allocated buffer.
     * Since xmlMalloc(sizeof(xmlDtd)) is called with the exact size needed
     * for memset, the vulnerability would be if sizeof(xmlDtd) could be
     * miscalculated or if the pointer arithmetic is wrong.
     * The SA pattern suggests checking that the size doesn't exceed buffer bounds.
     * Since we're using sizeof(xmlDtd) consistently, the condition should be:
     * sizeof(xmlDtd) <= allocated_size (which is also sizeof(xmlDtd)).
     * But we need to check that cur points to valid memory of at least sizeof(xmlDtd) bytes.
     */
    if (dtd != NULL) {
        /* The vulnerability assertion: ensure the memset size doesn't exceed
         * the allocated memory region. Since xmlMalloc returns exactly sizeof(xmlDtd),
         * we assert that sizeof(xmlDtd) is within bounds.
         * For symbolic execution, we need to check that the pointer is valid
         * for the entire region being zeroed.
         */
        SAILR_ASSERT(sizeof(xmlDtd) <= __builtin_object_size(dtd, 0));
        
        /* Reachability assertion */
        klee_assert(0 && "SAILR_REACH_ASSERT");
        
        /* Clean up */
        free((void*)dtd->name);
        free((void*)dtd->ExternalID);
        free((void*)dtd->SystemID);
        free(dtd);
    }
    
    return 0;
}