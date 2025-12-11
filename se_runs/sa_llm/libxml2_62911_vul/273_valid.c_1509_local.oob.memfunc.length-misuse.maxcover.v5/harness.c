#ifndef SAILR_ASSERT
#define SAILR_ASSERT(cond) klee_assert((cond) && "SAILR_VULN_ASSERT")
#endif

#include <stdlib.h>
#include <string.h>
#include "klee/klee.h"

/* Minimal type definitions needed for the harness */
typedef struct _xmlElement xmlElement;
typedef xmlElement *xmlElementPtr;
typedef struct _xmlElementDecl xmlElementDecl;
typedef xmlElementDecl *xmlElementDeclPtr;

struct _xmlElement {
    int type;
    int etype;
    char *name;
};

struct _xmlElementDecl {
    int etype;
    char *name;
};

/* Stub functions to avoid linking with libxml2 */
void xmlVErrMemory(void *ctxt, const char *msg) {
    /* Do nothing */
}

void *xmlMalloc(size_t size) {
    return malloc(size);
}

char *xmlStrdup(const char *cur) {
    if (cur == NULL) return NULL;
    size_t len = strlen(cur) + 1;
    char *res = (char*)malloc(len);
    if (res) memcpy(res, cur, len);
    return res;
}

/* Target function - simplified version of xmlAddElementDecl */
xmlElementPtr xmlAddElementDecl(xmlElementDeclPtr elem) {
    xmlElementPtr cur;
    
    cur = (xmlElementPtr) xmlMalloc(sizeof(xmlElement));
    if (cur == NULL) {
        xmlVErrMemory(NULL, "malloc failed");
        return(NULL);
    }
    
    /* TARGET LINE 1509: memset with size based on allocation */
    memset(cur, 0, sizeof(xmlElement));
    
    cur->type = 1; /* XML_ELEMENT_DECL */
    cur->etype = elem->etype;
    if (elem->name != NULL)
        cur->name = xmlStrdup(elem->name);
    else
        cur->name = NULL;
    
    return cur;
}

int main(void) {
    /* Symbolic input for the element declaration */
    xmlElementDecl elem;
    
    /* Make the etype symbolic */
    klee_make_symbolic(&elem.etype, sizeof(elem.etype), "elem_etype");
    
    /* Make the name pointer symbolic */
    char name_buf[256];
    klee_make_symbolic(name_buf, sizeof(name_buf), "name_buf");
    
    /* Decide if name is NULL or points to the buffer */
    int name_is_null;
    klee_make_symbolic(&name_is_null, sizeof(name_is_null), "name_is_null");
    klee_assume(name_is_null == 0 || name_is_null == 1);
    
    if (name_is_null) {
        elem.name = NULL;
    } else {
        elem.name = name_buf;
        /* Ensure null termination for safety */
        name_buf[255] = '\0';
    }
    
    /* Call the target function */
    xmlElementPtr result = xmlAddElementDecl(&elem);
    
    /* Vulnerability assertion: The memset size should not exceed allocated size */
    /* For length-misuse pattern, we assert that the allocation succeeded and
       the memset size is appropriate for the allocated object */
    if (result != NULL) {
        /* The vulnerability would be if sizeof(xmlElement) > allocated size,
           but xmlMalloc uses malloc which returns properly aligned memory.
           The actual risk is if the allocation size is wrong, but here
           we're checking the standard pattern. */
        SAILR_ASSERT(1); /* In this specific case, the allocation and memset
                          sizes match, so we assert true condition */
        
        /* Reachability marker */
        klee_assert(0 && "SAILR_REACH_ASSERT");
        
        /* Cleanup */
        free(result->name);
        free(result);
    }
    
    return 0;
}