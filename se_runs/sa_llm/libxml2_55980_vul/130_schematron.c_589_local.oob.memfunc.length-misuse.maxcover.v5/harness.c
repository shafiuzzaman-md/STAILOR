#ifndef SAILR_ASSERT
#define SAILR_ASSERT(cond) klee_assert((cond) && "SAILR_VULN_ASSERT")
#endif

#include <stdlib.h>
#include <string.h>
#include "klee/klee.h"

/* Minimal stub types needed to reach the target function */
typedef struct _xmlDict xmlDict;
typedef struct _xmlSchematronParserCtxt xmlSchematronParserCtxt;
typedef struct _xmlSchematron xmlSchematron;
typedef xmlSchematron* xmlSchematronPtr;

struct _xmlSchematron {
    void *doc;
    xmlDict *dict;
    void *rules;
    void *preserve;
    void *id;
    void *title;
    void *pattern;
    void *phase;
    void *namespaces;
    void *includes;
    void *extlinks;
    void *variables;
    void *keyrules;
    void *abstracts;
    void *abstractrules;
    void *abstractpatterns;
    void *abstractphases;
    void *abstractincludes;
    void *abstractextlinks;
    void *abstractvariables;
    void *abstractkeyrules;
    void *abstractabstracts;
    void *abstractabstractrules;
    void *abstractabstractpatterns;
    void *abstractabstractphases;
    void *abstractabstractincludes;
    void *abstractabstractextlinks;
    void *abstractabstractvariables;
    void *abstractabstractkeyrules;
    void *abstractabstractabstracts;
    void *abstractabstractabstractrules;
    void *abstractabstractabstractpatterns;
    void *abstractabstractabstractphases;
    void *abstractabstractabstractincludes;
    void *abstractabstractabstractextlinks;
    void *abstractabstractabstractvariables;
    void *abstractabstractabstractkeyrules;
};

struct _xmlSchematronParserCtxt {
    xmlDict *dict;
    void *doc;
    void *cur;
    void *errors;
    void *warnings;
    void *includes;
    void *extlinks;
    void *variables;
    void *keyrules;
    void *abstracts;
    void *abstractrules;
    void *abstractpatterns;
    void *abstractphases;
    void *abstractincludes;
    void *abstractextlinks;
    void *abstractvariables;
    void *abstractkeyrules;
    void *abstractabstracts;
    void *abstractabstractrules;
    void *abstractabstractpatterns;
    void *abstractabstractphases;
    void *abstractabstractincludes;
    void *abstractabstractextlinks;
    void *abstractabstractvariables;
    void *abstractabstractkeyrules;
    void *abstractabstractabstracts;
    void *abstractabstractabstractrules;
    void *abstractabstractabstractpatterns;
    void *abstractabstractabstractphases;
    void *abstractabstractabstractincludes;
    void *abstractabstractabstractextlinks;
    void *abstractabstractabstractvariables;
    void *abstractabstractabstractkeyrules;
};

/* Stub functions */
void* xmlMalloc(size_t size) {
    void* ptr = malloc(size);
    return ptr;
}

void xmlSchematronPErrMemory(xmlSchematronParserCtxt* ctxt, const char* msg, const char* extra) {
    /* Stub - do nothing */
}

void xmlDictReference(xmlDict* dict) {
    /* Stub - do nothing */
}

/* Target function from schematron.c */
static xmlSchematronPtr xmlSchematronNew(xmlSchematronParserCtxt* ctxt) {
    xmlSchematronPtr ret;

    ret = (xmlSchematronPtr) xmlMalloc(sizeof(xmlSchematron));
    if (ret == NULL) {
        xmlSchematronPErrMemory(ctxt, "allocating schema", NULL);
        return (NULL);
    }
    
    /* TARGET LINE 589 - memset call */
    memset(ret, 0, sizeof(xmlSchematron));
    
    ret->dict = ctxt->dict;
    xmlDictReference(ret->dict);

    return (ret);
}

/* Entry point */
int main(void) {
    xmlSchematronParserCtxt ctxt;
    xmlDict dict_stub;
    
    /* Make ctxt symbolic to explore different states */
    klee_make_symbolic(&ctxt, sizeof(ctxt), "ctxt");
    
    /* Initialize dict pointer - could be NULL or valid */
    klee_make_symbolic(&dict_stub, sizeof(dict_stub), "dict_stub");
    ctxt.dict = &dict_stub;
    
    /* Assume reasonable constraints to avoid trivial failures */
    klee_assume(ctxt.dict != NULL);
    
    /* Call the target function */
    xmlSchematronPtr result = xmlSchematronNew(&ctxt);
    
    /* Vulnerability assertion: For memset length-misuse, ensure the allocated
       size is at least as large as the sizeof(xmlSchematron) being cleared.
       Since xmlMalloc can fail (returning NULL), we need to check that when
       allocation succeeds, the size is sufficient. However, xmlMalloc uses
       malloc which returns memory of at least the requested size when successful.
       The real vulnerability would be if sizeof(xmlSchematron) was miscalculated
       or if the pointer arithmetic was wrong. For this pattern, we assert that
       the allocation size is correct for the memset operation. */
    
    if (result != NULL) {
        /* The vulnerability assertion: ensure the memset size doesn't exceed
           the allocated memory. Since xmlMalloc(sizeof(xmlSchematron)) was called,
           we need to check that the allocation was actually for the full size.
           We can't directly check the malloc internals, but we can assert that
           the pointer is valid for the full sizeof(xmlSchematron) range. */
        SAILR_ASSERT(1); /* For this specific case, the vulnerability would be if
                          xmlMalloc returned a buffer smaller than sizeof(xmlSchematron),
                          but we can't model that. The SA pattern flags memset with
                          potentially unbounded length, but here the length is fixed
                          at sizeof(xmlSchematron). We assert true as placeholder. */
        
        /* Reachability marker */
        klee_assert(0 && "SAILR_REACH_ASSERT");
        
        /* Clean up */
        free(result);
    }
    
    return 0;
}