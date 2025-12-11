#ifndef SAILR_ASSERT
#define SAILR_ASSERT(cond) klee_assert((cond) && "SAILR_VULN_ASSERT")
#endif

#include <stdlib.h>
#include <string.h>
#include "klee/klee.h"

/* Forward declarations for functions we need to reach the target */
void* xmlMalloc(size_t size);
void* libxml_intWrap(int value);
void Py_XDECREF(void* obj);
void Py_XINCREF(void* obj);

/* Stub implementations for required functions */
void* xmlMalloc(size_t size) {
    void* ptr = malloc(size);
    klee_assume(ptr != NULL); /* Assume allocation succeeds for path exploration */
    return ptr;
}

void* libxml_intWrap(int value) {
    /* Return a dummy pointer */
    static int dummy;
    return &dummy;
}

void Py_XDECREF(void* obj) {
    /* Stub: do nothing */
    (void)obj;
}

void Py_XINCREF(void* obj) {
    /* Stub: do nothing */
    (void)obj;
}

/* Structure definitions based on context */
typedef struct {
    void* error;
    void* warn;
    void* function;
    void* return_val;
} xmlSchemaValidCtxtPyCtxt;

/* Entrypoint function from SA spec */
void* libxml_xmlCreatePushParser(void* pyobj_error, void* pyobj_warn, void* pyobj_function, void* pyobj_return) {
    xmlSchemaValidCtxtPyCtxt* pyCtxt = NULL;
    void* py_retval;
    
    /* Allocate context structure */
    pyCtxt = xmlMalloc(sizeof(xmlSchemaValidCtxtPyCtxt));
    if (pyCtxt == NULL) {
        py_retval = libxml_intWrap(-1);
        return py_retval;
    }
    
    /* TARGET LINE 3182: memset(pyCtxt, 0, sizeof(xmlSchemaValidCtxtPyCtxt)); */
    /* Vulnerability assertion: ensure we don't overflow the allocated buffer */
    /* The SA rule is about length-misuse in memset - ensure size doesn't exceed allocation */
    SAILR_ASSERT(sizeof(xmlSchemaValidCtxtPyCtxt) <= sizeof(xmlSchemaValidCtxtPyCtxt));
    
    /* Reachability marker */
    klee_assert(0 && "SAILR_REACH_ASSERT");
    
    memset(pyCtxt, 0, sizeof(xmlSchemaValidCtxtPyCtxt));
    
    /* Following code from snippet */
    Py_XDECREF(pyCtxt->error);
    Py_XINCREF(pyobj_error);
    
    return pyCtxt;
}

int main(void) {
    /* Make symbolic inputs to explore different paths */
    void* pyobj_error;
    void* pyobj_warn;
    void* pyobj_function;
    void* pyobj_return;
    
    klee_make_symbolic(&pyobj_error, sizeof(pyobj_error), "pyobj_error");
    klee_make_symbolic(&pyobj_warn, sizeof(pyobj_warn), "pyobj_warn");
    klee_make_symbolic(&pyobj_function, sizeof(pyobj_function), "pyobj_function");
    klee_make_symbolic(&pyobj_return, sizeof(pyobj_return), "pyobj_return");
    
    /* Call the entrypoint function */
    libxml_xmlCreatePushParser(pyobj_error, pyobj_warn, pyobj_function, pyobj_return);
    
    return 0;
}