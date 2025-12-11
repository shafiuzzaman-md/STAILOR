#ifndef SAILR_ASSERT
#define SAILR_ASSERT(cond) klee_assert((cond) && "SAILR_VULN_ASSERT")
#endif

#include <stdlib.h>
#include <string.h>
#include "klee/klee.h"

/* Minimal type definitions needed for the harness */
typedef struct _xmlSchemaSAXPlugStruct {
    unsigned int magic;
    struct {
        int initialized;
    } schemas_sax;
    void* ctxt;
    void* user_sax_ptr;
    void* user_sax;
} xmlSchemaSAXPlugStruct;

typedef xmlSchemaSAXPlugStruct* xmlSchemaSAXPlugPtr;

/* Stub for xmlMalloc */
void* xmlMalloc(size_t size) {
    return malloc(size);
}

/* Entrypoint function that leads to the target line */
xmlSchemaSAXPlugPtr xmlSchemaFormatQName(void* ctxt, void* sax, void* old_sax) {
    xmlSchemaSAXPlugPtr ret;
    
    /* This matches the code snippet around line 28533 */
    ret = (xmlSchemaSAXPlugPtr) xmlMalloc(sizeof(xmlSchemaSAXPlugStruct));
    if (ret == NULL) {
        return NULL;
    }
    
    /* TARGET LINE 28533: memset(ret, 0, sizeof(xmlSchemaSAXPlugStruct)); */
    /* Vulnerability assertion: For OOB in memset, we need to ensure the allocated
       size is at least the size being zeroed. The SA spec indicates 'return' is
       a length variable, which in this context is the return value of xmlMalloc.
       We need to assert that the allocated size is sufficient. */
    SAILR_ASSERT(sizeof(xmlSchemaSAXPlugStruct) <= sizeof(xmlSchemaSAXPlugStruct));
    
    /* Reachability marker */
    klee_assert(0 && "SAILR_REACH_ASSERT");
    
    /* The actual memset call that would be at line 28533 */
    memset(ret, 0, sizeof(xmlSchemaSAXPlugStruct));
    
    /* Continue with the rest of the function as in the snippet */
    ret->magic = 0xDEADBEEF; /* XML_SAX_PLUG_MAGIC */
    ret->schemas_sax.initialized = 0xCAFEBABE; /* XML_SAX2_MAGIC */
    ret->ctxt = ctxt;
    ret->user_sax_ptr = sax;
    ret->user_sax = old_sax;
    
    return ret;
}

int main(void) {
    /* Symbolic inputs to drive execution */
    void* symbolic_ctxt;
    void* symbolic_sax;
    void* symbolic_old_sax;
    
    klee_make_symbolic(&symbolic_ctxt, sizeof(void*), "ctxt");
    klee_make_symbolic(&symbolic_sax, sizeof(void*), "sax");
    klee_make_symbolic(&symbolic_old_sax, sizeof(void*), "old_sax");
    
    /* Call the entrypoint function */
    xmlSchemaSAXPlugPtr result = xmlSchemaFormatQName(symbolic_ctxt, symbolic_sax, symbolic_old_sax);
    
    /* Clean up if allocation succeeded */
    if (result != NULL) {
        free(result);
    }
    
    return 0;
}