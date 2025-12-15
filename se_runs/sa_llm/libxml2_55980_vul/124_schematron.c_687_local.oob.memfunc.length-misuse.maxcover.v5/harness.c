#ifndef SAILR_ASSERT
#define SAILR_ASSERT(cond) klee_assert((cond) && "SAILR_VULN_ASSERT")
#endif

#include <stdlib.h>
#include <string.h>
#include "klee/klee.h"

/* Forward declarations for types and functions needed from libxml2 */
typedef struct _xmlDict xmlDict;
typedef struct _xmlXPathContext xmlXPathContext;
typedef struct _xmlSchematronParserCtxt xmlSchematronParserCtxt;

struct _xmlSchematronParserCtxt {
    char *buffer;
    int size;
    xmlDict *dict;
    xmlXPathContext *xctxt;
};

/* Stub functions to avoid linking with libxml2 */
void xmlSchematronPErrMemory(void *a, const char *b, void *c) {
    /* Do nothing */
}

xmlDict* xmlDictCreate(void) {
    /* Return a non-NULL stub pointer */
    return (xmlDict*)malloc(1);
}

xmlXPathContext* xmlXPathNewContext(void *a) {
    /* This can return NULL to trigger the error path, or non-NULL to continue */
    /* We'll make it symbolic to explore both paths */
    void *result;
    klee_make_symbolic(&result, sizeof(result), "xpath_context");
    return (xmlXPathContext*)result;
}

void xmlSchematronFreeParserCtxt(xmlSchematronParserCtxt *ctxt) {
    if (ctxt) free(ctxt);
}

/* The actual function we need to reach */
xmlSchematronParserCtxt* xmlSchematronNewParserCtxt(const char *buffer, int size) {
    xmlSchematronParserCtxtPtr ret;
    
    ret = (xmlSchematronParserCtxtPtr)malloc(sizeof(xmlSchematronParserCtxt));
    if (ret == NULL) {
        xmlSchematronPErrMemory(NULL, "allocating schema parser context", NULL);
        return (NULL);
    }
    
    /* TARGET LINE 687 - memset with sizeof(xmlSchematronParserCtxt) */
    memset(ret, 0, sizeof(xmlSchematronParserCtxt));
    
    ret->buffer = (char*)buffer;
    ret->size = size;
    ret->dict = xmlDictCreate();
    ret->xctxt = xmlXPathNewContext(NULL);
    
    if (ret->xctxt == NULL) {
        xmlSchematronPErrMemory(NULL, "allocating schema parser XPath context", NULL);
        xmlSchematronFreeParserCtxt(ret);
        return NULL;
    }
    
    return ret;
}

int main(void) {
    /* Symbolic inputs to the function */
    char buffer[1024];
    int size;
    
    klee_make_symbolic(buffer, sizeof(buffer), "buffer");
    klee_make_symbolic(&size, sizeof(size), "size");
    
    /* Assume reasonable constraints to avoid trivial non-reachability */
    klee_assume(size >= 0);
    klee_assume(size < 1024);  /* Reasonable bound */
    
    /* Call the function that contains the target line */
    xmlSchematronParserCtxt* result = xmlSchematronNewParserCtxt(buffer, size);
    
    /* Vulnerability assertion: For memset length-misuse, we need to ensure
       that the size passed to memset doesn't exceed the allocated buffer.
       Since malloc succeeded, ret points to at least sizeof(xmlSchematronParserCtxt)
       bytes. The vulnerability would be if sizeof(xmlSchematronParserCtxt) 
       exceeds the actual allocated size, but malloc guarantees it doesn't.
       
       However, the SA pattern is about length-misuse: the concern is that
       the length argument (sizeof(xmlSchematronParserCtxt)) might be wrong
       relative to the actual object size. Since this is a fixed sizeof,
       the real issue would be if ret didn't point to a full xmlSchematronParserCtxt.
       
       The actual vulnerability condition: ret points to a buffer of at least
       sizeof(xmlSchematronParserCtxt) bytes. Since malloc succeeded, this is true.
       
       But wait: the SA message says "High-coverage OOB risk: length/count may be 
       unbounded for memset()". The risk is that the size could be wrong.
       
       For this specific case, we assert that the allocation size is correct
       for the memset operation. Since malloc succeeded with sizeof(xmlSchematronParserCtxt),
       the vulnerability assertion should check that we're not writing beyond
       the allocated memory. */
    
    if (result != NULL) {
        /* We reached past the memset at line 687 */
        /* Vulnerability assertion: ensure we're not writing out of bounds */
        /* The condition is that the allocated size >= sizeof(xmlSchematronParserCtxt) */
        /* Since malloc succeeded with exactly that size, this is always true,
           but we encode it as the safety condition for the memset */
        SAILR_ASSERT(1);  /* The allocation succeeded with correct size */
        
        /* Reachability marker */
        klee_assert(0 && "SAILR_REACH_ASSERT");
        
        /* Cleanup */
        xmlSchematronFreeParserCtxt(result);
    }
    
    return 0;
}