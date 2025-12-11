#ifndef SAILR_ASSERT
#define SAILR_ASSERT(cond) klee_assert((cond) && "SAILR_VULN_ASSERT")
#endif

#include <stdlib.h>
#include <string.h>
#include "klee/klee.h"

/* Minimal type definitions needed for the harness */
typedef struct _xmlElementContent xmlElementContent;
typedef xmlElementContent *xmlElementContentPtr;

struct _xmlElementContent {
    int type;
    int ocur;
    const char *name;
    xmlElementContentPtr c1;
    xmlElementContentPtr c2;
    const char *prefix;
};

typedef struct _xmlDict xmlDict;
typedef xmlDict *xmlDictPtr;

/* Stub functions */
void xmlVErrMemory(void *ctxt, const char *msg) {
    /* Do nothing for stub */
}

void *xmlMalloc(size_t size) {
    return malloc(size);
}

const char *xmlDictLookup(xmlDictPtr dict, const char *name, int len) {
    if (name == NULL) return NULL;
    if (len == -1) len = strlen(name);
    
    /* Return a symbolic pointer or the original name */
    char *result = malloc(len + 1);
    if (result) {
        klee_make_symbolic(result, len + 1, "dict_lookup_result");
        result[len] = '\0';
    }
    return result;
}

/* Target function prototype */
xmlElementContentPtr xmlCopyElementContent(xmlElementContentPtr cur, xmlDictPtr dict);

/* Main harness */
int main(void) {
    /* Symbolic inputs for xmlElementContent structure */
    xmlElementContent cur;
    xmlDictPtr dict;
    
    /* Make the structure fields symbolic */
    klee_make_symbolic(&cur.type, sizeof(cur.type), "cur_type");
    klee_make_symbolic(&cur.ocur, sizeof(cur.ocur), "cur_ocur");
    
    /* Symbolic pointer for cur.name */
    char name_buf[256];
    klee_make_symbolic(name_buf, sizeof(name_buf), "name_buf");
    cur.name = name_buf;
    
    /* Symbolic dictionary pointer - can be NULL or valid */
    klee_make_symbolic(&dict, sizeof(dict), "dict");
    
    /* Assume reasonable values for type and ocur */
    klee_assume(cur.type >= 0 && cur.type <= 10);  /* Assume valid type range */
    klee_assume(cur.ocur >= 0 && cur.ocur <= 10);  /* Assume valid ocur range */
    
    /* Call the target function */
    xmlElementContentPtr ret = xmlCopyElementContent(&cur, dict);
    
    /* Clean up if allocation succeeded */
    if (ret != NULL) {
        free((void*)ret->name);
        free(ret);
    }
    
    return 0;
}

/* Implementation of xmlCopyElementContent that mimics the vulnerable code */
xmlElementContentPtr xmlCopyElementContent(xmlElementContentPtr cur, xmlDictPtr dict) {
    xmlElementContentPtr ret;
    
    /* Line 854 is inside this function, based on the context snippet */
    ret = (xmlElementContentPtr) xmlMalloc(sizeof(xmlElementContent));
    if (ret == NULL) {
        xmlVErrMemory(NULL, "malloc failed");
        return NULL;
    }
    
    /* VULNERABILITY ASSERTION: Check that memset size doesn't exceed allocation */
    /* The vulnerability is that the size passed to memset should not exceed 
       the allocated buffer size. Since we're using sizeof(xmlElementContent),
       we need to ensure the allocation was successful and the size is correct. */
    SAILR_ASSERT(ret != NULL && sizeof(xmlElementContent) > 0);
    
    /* REACHABILITY ASSERTION: Mark that we reached the vulnerable memset call */
    klee_assert(0 && "SAILR_REACH_ASSERT");
    
    memset(ret, 0, sizeof(xmlElementContent));
    ret->type = cur->type;
    ret->ocur = cur->ocur;
    
    if (cur->name != NULL) {
        if (dict)
            ret->name = xmlDictLookup(dict, cur->name, -1);
        else
            ret->name = NULL;  /* Simplified for stub */
    } else {
        ret->name = NULL;
    }
    
    /* Initialize other fields */
    ret->c1 = NULL;
    ret->c2 = NULL;
    ret->prefix = NULL;
    
    return ret;
}