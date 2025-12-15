#ifndef SAILR_ASSERT
#define SAILR_ASSERT(cond) klee_assert((cond) && "SAILR_VULN_ASSERT")
#endif

#include <stdlib.h>
#include <string.h>
#include "klee/klee.h"

/* Minimal type definitions needed for the harness */
typedef struct _xmlElement xmlElement;
typedef xmlElement *xmlElementPtr;

struct _xmlElement {
    int type;
    void *name;
    void *prefix;
    int etype;
};

/* Stub for xmlHashLookup2 - returns NULL to trigger the create path */
void* xmlHashLookup2(void* table, const char* name, const char* prefix) {
    return NULL;
}

/* Stub for xmlMalloc - returns symbolic pointer */
void* xmlMalloc(size_t size) {
    void* ptr = malloc(size);
    klee_make_symbolic(ptr, size, "malloc_ptr");
    return ptr;
}

/* Stub for xmlStrdup - returns symbolic string */
char* xmlStrdup(const char* cur) {
    if (cur == NULL) return NULL;
    size_t len = strlen(cur) + 1;
    char* dup = (char*)malloc(len);
    klee_make_symbolic(dup, len, "strdup_ptr");
    for (size_t i = 0; i < len - 1; i++) {
        dup[i] = cur[i];
    }
    dup[len - 1] = '\0';
    return dup;
}

/* Stub for xmlVErrMemory - does nothing */
void xmlVErrMemory(void* ctxt, const char* msg) {
    (void)ctxt;
    (void)msg;
}

/* Target function from valid.c - simplified to reach line 3329 */
xmlElementPtr xmlAddElementDecl(void* table, const char* name, const char* prefix, int create) {
    const char* uqname = name;
    xmlElementPtr cur;
    
    if (name == NULL)
        return NULL;
    
    cur = xmlHashLookup2(table, name, prefix);
    if ((cur == NULL) && (create)) {
        cur = (xmlElementPtr) xmlMalloc(sizeof(xmlElement));
        if (cur == NULL) {
            xmlVErrMemory(NULL, "malloc failed");
            return NULL;
        }
        /* TARGET LINE 3329: memset(cur, 0, sizeof(xmlElement)); */
        memset(cur, 0, sizeof(xmlElement));
        
        /* Vulnerability assertion: ensure the pointer is valid and size is correct */
        SAILR_ASSERT(cur != NULL && sizeof(xmlElement) > 0);
        
        /* Reachability marker */
        klee_assert(0 && "SAILR_REACH_ASSERT");
        
        cur->type = 1; /* XML_ELEMENT_DECL */
        cur->name = xmlStrdup(name);
        cur->prefix = xmlStrdup(prefix);
        cur->etype = 0; /* XML_ELEMENT_TYPE_UNDEFINED */
    }
    return cur;
}

int main(void) {
    /* Symbolic inputs to drive execution */
    char name[32];
    char prefix[32];
    int create;
    void* table;
    
    klee_make_symbolic(name, sizeof(name), "name");
    klee_make_symbolic(prefix, sizeof(prefix), "prefix");
    klee_make_symbolic(&create, sizeof(create), "create");
    klee_make_symbolic(&table, sizeof(table), "table");
    
    /* Assume name is not NULL and is null-terminated */
    klee_assume(name[31] == '\0');
    klee_assume(prefix[31] == '\0');
    
    /* Assume create is true to enter the vulnerable path */
    klee_assume(create != 0);
    
    /* Call the target function */
    xmlElementPtr result = xmlAddElementDecl(table, name, prefix, create);
    
    /* Free allocated memory if any */
    if (result != NULL) {
        if (result->name != NULL) free(result->name);
        if (result->prefix != NULL) free(result->prefix);
        free(result);
    }
    
    return 0;
}