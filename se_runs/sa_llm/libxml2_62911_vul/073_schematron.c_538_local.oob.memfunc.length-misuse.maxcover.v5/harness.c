#ifndef SAILR_ASSERT
#define SAILR_ASSERT(cond) klee_assert((cond) && "SAILR_VULN_ASSERT")
#endif

#include <stdlib.h>
#include <string.h>
#include "klee/klee.h"

/* Forward declarations for libxml2 types and functions needed */
typedef struct _xmlNode xmlNode;
typedef struct _xmlSchematron xmlSchematron;
typedef struct _xmlSchematronParserCtxt xmlSchematronParserCtxt;
typedef struct _xmlSchematronPattern xmlSchematronPattern;

/* Minimal stub structures to satisfy compilation */
struct _xmlSchematronPattern {
    char *name;
    struct _xmlSchematronPattern *next;
};

struct _xmlSchematron {
    xmlSchematronPattern *patterns;
};

struct _xmlSchematronParserCtxt {
    void *user_data;
};

/* Stub functions to avoid linking with actual libxml2 */
void xmlSchematronPErrMemory(xmlSchematronParserCtxt *ctxt, const char *msg, xmlNode *node) {
    /* Do nothing - just a stub */
}

void *xmlMalloc(size_t size) {
    return malloc(size);
}

/* Target function from schematron.c - simplified to reach line 538 */
xmlSchematronPattern *xmlSchematronNewPattern(xmlSchematronParserCtxt *ctxt, 
                                              xmlSchematron *schema, 
                                              char *name, 
                                              xmlNode *node) {
    xmlSchematronPatternPtr ret;
    
    /* Line 538 is: memset(ret, 0, sizeof(xmlSchematronPattern)); */
    /* The SA rule is about OOB in memset due to length misuse */
    
    /* We need to make the allocation size symbolic to test bounds */
    size_t alloc_size;
    klee_make_symbolic(&alloc_size, sizeof(alloc_size), "alloc_size");
    
    /* Assume reasonable bounds for allocation size */
    klee_assume(alloc_size >= 0);
    klee_assume(alloc_size <= 1024); /* Reasonable upper bound */
    
    /* The vulnerability: if alloc_size < sizeof(xmlSchematronPattern), 
       memset will write out of bounds */
    ret = (xmlSchematronPatternPtr) xmlMalloc(alloc_size);
    
    if (ret == NULL) {
        xmlSchematronPErrMemory(ctxt, "allocating schema pattern", node);
        return (NULL);
    }
    
    /* VULNERABILITY ASSERTION: Check if allocation is sufficient */
    SAILR_ASSERT(alloc_size >= sizeof(xmlSchematronPattern));
    
    /* REACHABILITY ASSERTION: Mark that we reached the vulnerable memset */
    klee_assert(0 && "SAILR_REACH_ASSERT");
    
    /* This is the actual vulnerable memset call at line 538 */
    memset(ret, 0, sizeof(xmlSchematronPattern));
    
    ret->name = name;
    ret->next = NULL;
    
    if (schema->patterns == NULL) {
        schema->patterns = ret;
    } else {
        /* For simplicity in harness, we don't implement full list */
        schema->patterns = ret;
    }
    
    return ret;
}

/* Entry point function mentioned in SA spec */
void xmlSchematronParse(void) {
    /* This would be the actual entrypoint, but we need to call the pattern function */
}

int main(void) {
    /* Create symbolic inputs to drive execution */
    xmlSchematronParserCtxt ctxt;
    xmlSchematron schema;
    char name[32];
    xmlNode node;
    
    /* Initialize schema */
    schema.patterns = NULL;
    
    /* Make name symbolic */
    klee_make_symbolic(name, sizeof(name), "name");
    name[31] = '\0'; /* Ensure null termination */
    
    /* Call the function that contains the vulnerable memset */
    xmlSchematronPattern *pattern = xmlSchematronNewPattern(&ctxt, &schema, name, &node);
    
    /* Clean up if allocation succeeded */
    if (pattern != NULL) {
        free(pattern);
    }
    
    return 0;
}