#ifndef SAILR_ASSERT
#define SAILR_ASSERT(cond) klee_assert((cond) && "SAILR_VULN_ASSERT")
#endif

#include <stdlib.h>
#include <string.h>
#include "klee/klee.h"

/* Minimal type definitions needed for the harness */
typedef struct _object PyObject;
#define Py_XDECREF(op) do { if ((op) != NULL) { /* stub */ } } while(0)
#define Py_XINCREF(op) do { if ((op) != NULL) { /* stub */ } } while(0)

/* Forward declarations for functions we need */
void *xmlMalloc(size_t size);
PyObject *libxml_intWrap(int value);

/* Structure definition from libxml2 */
typedef struct {
    PyObject *error;
    PyObject *warn;
} xmlRelaxNGValidCtxtPyCtxt;

/* Global variable from the target code */
static xmlRelaxNGValidCtxtPyCtxt *pyCtxt = NULL;

/* Simulated target function that contains the vulnerable line */
static PyObject *target_function(PyObject *pyobj_error, PyObject *pyobj_warn) {
    PyObject *py_retval;
    
    if (pyCtxt == NULL) {
        /* first time to set the error handlers */
        pyCtxt = xmlMalloc(sizeof(xmlRelaxNGValidCtxtPyCtxt));
        if (pyCtxt == NULL) {
            py_retval = libxml_intWrap(-1);
            return py_retval;
        }
        
        /* VULNERABLE LINE: memset(pyCtxt, 0, sizeof(xmlRelaxNGValidCtxtPyCtxt)); */
        /* Vulnerability assertion: ensure the allocation size is correct */
        SAILR_ASSERT(sizeof(xmlRelaxNGValidCtxtPyCtxt) > 0);
        
        /* Reachability marker */
        klee_assert(0 && "SAILR_REACH_ASSERT");
        
        memset(pyCtxt, 0, sizeof(xmlRelaxNGValidCtxtPyCtxt));
    }
    
    /* TODO: check warn and error is a function ! */
    Py_XDECREF(pyCtxt->error);
    Py_XINCREF(pyobj_error);
    pyCtxt->error = pyobj_error;
    
    Py_XDECREF(pyCtxt->warn);
    Py_XINCREF(pyobj_warn);
    pyCtxt->warn = pyobj_warn;
    
    return libxml_intWrap(0);
}

/* Stub implementations */
void *xmlMalloc(size_t size) {
    void *ptr = malloc(size);
    return ptr;
}

PyObject *libxml_intWrap(int value) {
    /* Return a dummy pointer */
    return (PyObject *)(long)value;
}

int main(void) {
    /* Make symbolic inputs to explore different paths */
    int malloc_succeeds;
    klee_make_symbolic(&malloc_succeeds, sizeof(malloc_succeeds), "malloc_succeeds");
    
    /* Control whether xmlMalloc returns NULL or valid pointer */
    if (malloc_succeeds) {
        /* Force allocation to succeed */
        klee_assume(malloc_succeeds != 0);
    } else {
        /* Force allocation to fail */
        klee_assume(malloc_succeeds == 0);
    }
    
    /* Create dummy PyObject pointers */
    PyObject *error_obj = (PyObject *)1;
    PyObject *warn_obj = (PyObject *)2;
    
    /* Reset global state */
    pyCtxt = NULL;
    
    /* Call the target function */
    target_function(error_obj, warn_obj);
    
    /* Clean up */
    if (pyCtxt != NULL) {
        free(pyCtxt);
        pyCtxt = NULL;
    }
    
    return 0;
}