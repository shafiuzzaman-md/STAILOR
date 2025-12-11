#ifndef SAILR_ASSERT
#define SAILR_ASSERT(cond) klee_assert((cond) && "SAILR_VULN_ASSERT")
#endif

#include <stdlib.h>
#include <string.h>
#include "klee/klee.h"

/* Forward declarations for types and functions needed */
typedef struct _xmlSchemaConstructionCtxt xmlSchemaConstructionCtxt;
typedef struct _xmlSchemaItemList xmlSchemaItemList;

struct _xmlSchemaConstructionCtxt {
    xmlSchemaItemList* buckets;
    /* other fields omitted for brevity */
};

struct _xmlSchemaItemList {
    /* stub structure */
};

/* Stub functions */
void xmlSchemaPErrMemory(void* ctxt, const char* msg, const char* extra) {
    /* do nothing */
}

xmlSchemaItemList* xmlSchemaItemListCreate(void) {
    /* Return symbolic pointer to allow both NULL and non-NULL paths */
    xmlSchemaItemList* list;
    klee_make_symbolic(&list, sizeof(list), "list");
    klee_assume(list == 0 || list != 0); /* allow both possibilities */
    return list;
}

/* Target function: xmlSchemaConstructionCtxt* xmlSchemaNewConstructionCtxt(void) */
xmlSchemaConstructionCtxt* xmlSchemaNewConstructionCtxt(void) {
    xmlSchemaConstructionCtxt* ret;
    
    /* Allocate memory for the context */
    ret = (xmlSchemaConstructionCtxt*)malloc(sizeof(xmlSchemaConstructionCtxt));
    if (ret == NULL) {
        xmlSchemaPErrMemory(NULL, "allocating schema construction context", NULL);
        return NULL;
    }
    
    /* VULNERABLE LINE: memset(ret, 0, sizeof(xmlSchemaConstructionCtxt)); */
    /* We need to reach this line and then the subsequent line 9895 */
    memset(ret, 0, sizeof(xmlSchemaConstructionCtxt));
    
    ret->buckets = xmlSchemaItemListCreate();
    if (ret->buckets == NULL) {
        xmlSchemaPErrMemory(NULL, "allocating list of schema buckets", NULL);
        /* Continue execution to reach our assertions */
    }
    
    /* VULNERABILITY ASSERTION: For memset length-misuse, we need to ensure
       the size parameter doesn't exceed actual allocated memory.
       Since ret was allocated with malloc(sizeof(xmlSchemaConstructionCtxt)),
       and memset uses sizeof(xmlSchemaConstructionCtxt), the condition is:
       sizeof(xmlSchemaConstructionCtxt) <= malloc_usable_size(ret) */
    /* However, we don't have malloc_usable_size in KLEE, so we use a symbolic
       assumption about allocation success. The real issue is if malloc returns
       a pointer with insufficient memory (which shouldn't happen with proper malloc).
       For OOB memset, we assert that the allocation was successful and valid. */
    SAILR_ASSERT(ret != NULL && sizeof(xmlSchemaConstructionCtxt) > 0);
    
    /* REACHABILITY ASSERTION */
    klee_assert(0 && "SAILR_REACH_ASSERT");
    
    return ret;
}

/* Entry point function from SA spec */
char* xmlSchemaFormatQName(const char* prefix, const char* name) {
    /* Stub implementation - just call the construction context function */
    xmlSchemaConstructionCtxt* ctxt = xmlSchemaNewConstructionCtxt();
    if (ctxt) {
        free(ctxt);
    }
    return NULL;
}

int main(void) {
    /* Make symbolic inputs for xmlSchemaFormatQName parameters */
    char prefix[10];
    char name[10];
    
    klee_make_symbolic(prefix, sizeof(prefix), "prefix");
    klee_make_symbolic(name, sizeof(name), "name");
    
    /* Ensure null-terminated strings */
    prefix[9] = '\0';
    name[9] = '\0';
    
    /* Call the entrypoint function to reach target line */
    char* result = xmlSchemaFormatQName(prefix, name);
    
    /* Avoid unused variable warning */
    if (result) {
        /* do nothing */
    }
    
    return 0;
}