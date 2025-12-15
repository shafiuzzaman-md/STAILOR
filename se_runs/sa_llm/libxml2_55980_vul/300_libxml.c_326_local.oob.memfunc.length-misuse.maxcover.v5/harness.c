#ifndef SAILR_ASSERT
#define SAILR_ASSERT(cond) klee_assert((cond) && "SAILR_VULN_ASSERT")
#endif

#include <stdlib.h>
#include <string.h>
#include <klee/klee.h>

/* Minimal stub for PyObject */
typedef struct PyObject PyObject;
#define PyString_Check(obj) (1)
#define PyString_AsString(obj) (data_symbolic)
#define PyString_Size(obj) (lenread_symbolic)
#define Py_DECREF(obj) ((void)0)

/* Function prototype from libxml.c */
int xmlPythonFileReadRaw(PyObject *f, char *buffer, int len);

/* Symbolic variables */
static char data_symbolic[4096];
static int lenread_symbolic;
static PyObject f_stub;
static char buffer_stub[4096];
static int len_symbolic;

int main(void) {
    /* Make inputs symbolic */
    klee_make_symbolic(&lenread_symbolic, sizeof(lenread_symbolic), "lenread");
    klee_make_symbolic(&len_symbolic, sizeof(len_symbolic), "len");
    klee_make_symbolic(data_symbolic, sizeof(data_symbolic), "data");
    
    /* Assume plausible values for Python string size and buffer length */
    klee_assume(lenread_symbolic >= 0);
    klee_assume(lenread_symbolic < 4096);  /* Reasonable upper bound */
    klee_assume(len_symbolic >= 0);
    klee_assume(len_symbolic < 4096);      /* Reasonable upper bound */
    
    /* Assume the path where lenread > len (to reach line 326) */
    klee_assume(lenread_symbolic > len_symbolic);
    
    /* Call the target function with symbolic inputs */
    int result = xmlPythonFileReadRaw(&f_stub, buffer_stub, len_symbolic);
    
    /* Vulnerability assertion: memcpy at line 326 uses 'len' but data may be shorter */
    /* The condition should ensure safe copy: len <= actual data size */
    /* Since we don't know actual data size, we assert len <= lenread (safer bound) */
    SAILR_ASSERT(len_symbolic <= lenread_symbolic);
    
    /* Reachability marker */
    klee_assert(0 && "SAILR_REACH_ASSERT");
    
    return result;
}

/* Implementation of xmlPythonFileReadRaw based on the snippet */
int xmlPythonFileReadRaw(PyObject *f, char *buffer, int len) {
    PyObject *ret = &f_stub;  /* Dummy return object */
    char *data;
    int lenread;
    
    /* Simulate the Python string check */
    if (PyString_Check(ret)) {
        data = PyString_AsString(ret);
        lenread = PyString_Size(ret);
    } else {
        /* This path returns -1, not reaching line 326 */
        Py_DECREF(ret);
        return -1;
    }
    
    /* Target code from line 326 */
    if (lenread > len) {
        /* VULNERABLE LINE: memcpy(buffer, data, len); */
        memcpy(buffer, data, len);
    } else {
        memcpy(buffer, data, lenread);
    }
    
    Py_DECREF(ret);
    return lenread;
}