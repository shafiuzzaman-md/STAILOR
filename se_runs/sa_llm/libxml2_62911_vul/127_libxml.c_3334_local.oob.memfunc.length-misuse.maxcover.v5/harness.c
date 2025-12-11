#ifndef SAILR_ASSERT
#define SAILR_ASSERT(cond) klee_assert((cond) && "SAILR_VULN_ASSERT")
#endif

#include <stdlib.h>
#include <string.h>
#include "klee/klee.h"

/* Stub for PyObject */
typedef struct PyObject PyObject;
typedef struct PyBytesObject {
    PyObject ob_base;
    char *ob_sval;
} PyBytesObject;

/* Stub functions needed to reach target */
PyObject* PyExc_MemoryError = NULL;
void PyErr_SetString(PyObject* exc, const char* msg) {
    /* Do nothing - just a stub */
}

char* PyBytes_AsString(PyObject* o) {
    PyBytesObject* bytes = (PyBytesObject*)o;
    return bytes->ob_sval;
}

/* Target function signature from spec */
int libxml_xmlCreatePushParser(PyObject* self, PyObject* args) {
    /* Based on the snippet, we need:
       - strings (xmlChar**)
       - count (int)
       - PyBytes objects for each string
    */
    
    int count;
    char** strings;
    int idx;
    
    /* Make count symbolic */
    klee_make_symbolic(&count, sizeof(count), "count");
    
    /* Assume count >= 0 based on bounds_hints */
    klee_assume(count >= 0);
    
    /* Allocate strings array */
    strings = (char**)malloc(sizeof(char*) * count);
    if (strings == NULL) {
        PyErr_SetString(PyExc_MemoryError, "");
        return -1;
    }
    
    /* VULNERABLE LINE: memset with count as size multiplier */
    /* The vulnerability is that count could be too large, causing OOB write */
    memset(strings, 0, sizeof(char*) * count);
    
    /* Vulnerability assertion: ensure count is within safe bounds */
    /* For OOB in memset, we need to check that the allocation size is safe */
    /* Since strings was allocated with sizeof(char*) * count, and memset uses
       the same calculation, the vulnerability would be if count causes
       the memset to write beyond the allocated region */
    SAILR_ASSERT(count >= 0 && count <= (SIZE_MAX / sizeof(char*)));
    
    /* Reachability marker */
    klee_assert(0 && "SAILR_REACH_ASSERT");
    
    /* Rest of the code from snippet */
    for (idx = 0; idx < count; ++idx) {
        PyObject* py_str = NULL;
        char* s = PyBytes_AsString(py_str);
        /* ... */
    }
    
    free(strings);
    return 0;
}

int main(void) {
    /* Create symbolic arguments for the target function */
    PyObject* self = NULL;
    PyObject* args = NULL;
    
    /* Call the entrypoint function identified in the spec */
    libxml_xmlCreatePushParser(self, args);
    
    return 0;
}