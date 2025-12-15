#ifndef SAILR_ASSERT
#define SAILR_ASSERT(cond) klee_assert((cond) && "SAILR_VULN_ASSERT")
#endif

#include <klee/klee.h>
#include <stdlib.h>
#include <string.h>

/* Stub for PyObject */
typedef struct PyObject PyObject;
struct PyObject {
    int refcnt;
};

/* Stub for PyBytes_Check */
int PyBytes_Check(PyObject *o) {
    (void)o;
    int result;
    klee_make_symbolic(&result, sizeof(result), "PyBytes_Check_result");
    return result;
}

/* Stub for PyBytes_AsStringAndSize */
char* PyBytes_AsStringAndSize(PyObject *o, Py_ssize_t *len) {
    (void)o;
    static char data[4096];
    klee_make_symbolic(len, sizeof(*len), "PyBytes_AsStringAndSize_len");
    klee_assume(*len >= 0 && *len < 4096);
    klee_make_symbolic(data, *len, "PyBytes_AsStringAndSize_data");
    return data;
}

/* Stub for PyUnicode_Check */
int PyUnicode_Check(PyObject *o) {
    (void)o;
    int result;
    klee_make_symbolic(&result, sizeof(result), "PyUnicode_Check_result");
    return result;
}

/* Stub for PyUnicode_AsUTF8AndSize */
const char* PyUnicode_AsUTF8AndSize(PyObject *o, Py_ssize_t *len) {
    (void)o;
    static char data[4096];
    klee_make_symbolic(len, sizeof(*len), "PyUnicode_AsUTF8AndSize_len");
    klee_assume(*len >= 0 && *len < 4096);
    klee_make_symbolic(data, *len, "PyUnicode_AsUTF8AndSize_data");
    return data;
}

/* Stub for Py_DECREF */
void Py_DECREF(PyObject *o) {
    (void)o;
}

/* Stub for printf */
int printf(const char *format, ...) {
    (void)format;
    return 0;
}

/* Target function signature from libxml.c */
int xmlPythonFileReadRaw(void *context, char *buffer, int len);

/* Main harness */
int main(void) {
    /* Symbolic inputs for xmlPythonFileReadRaw parameters */
    void *context;
    int len;
    char buffer[4096];
    
    klee_make_symbolic(&context, sizeof(context), "context");
    klee_make_symbolic(&len, sizeof(len), "len");
    klee_assume(len >= 0 && len < 4096);
    klee_make_symbolic(buffer, sizeof(buffer), "buffer");
    
    /* Call the target function */
    int lenread = xmlPythonFileReadRaw(context, buffer, len);
    
    /* Vulnerability assertion: lenread must not exceed buffer size */
    SAILR_ASSERT(lenread <= len);
    
    /* Reachability assertion */
    klee_assert(0 && "SAILR_REACH_ASSERT");
    
    return 0;
}

/* Implementation of xmlPythonFileReadRaw based on the code snippet */
int xmlPythonFileReadRaw(void *context, char *buffer, int len) {
    (void)context;
    
    /* Symbolic Python return object */
    PyObject *ret;
    klee_make_symbolic(&ret, sizeof(ret), "ret");
    
    /* Symbolic lenread */
    int lenread;
    klee_make_symbolic(&lenread, sizeof(lenread), "lenread");
    klee_assume(lenread >= 0);
    
    /* Symbolic data pointer */
    char *data;
    
    /* Simulate the Python type checking logic */
    int is_bytes = PyBytes_Check(ret);
    int is_unicode = PyUnicode_Check(ret);
    
    /* Assume at least one type check passes to reach the vulnerable code */
    klee_assume(is_bytes || is_unicode);
    
    if (is_bytes) {
        Py_ssize_t py_len;
        data = PyBytes_AsStringAndSize(ret, &py_len);
        /* Convert Py_ssize_t to int for comparison */
        klee_assume(py_len >= 0 && py_len <= lenread);
    } else if (is_unicode) {
        Py_ssize_t py_len;
        data = (char*)PyUnicode_AsUTF8AndSize(ret, &py_len);
        /* Convert Py_ssize_t to int for comparison */
        klee_assume(py_len >= 0 && py_len <= lenread);
    } else {
        printf("xmlPythonFileReadRaw: result is not a String\n");
        Py_DECREF(ret);
        return -1;
    }
    
    /* This is the target line 328 */
    if (lenread > len) {
        memcpy(buffer, data, len);
    } else {
        memcpy(buffer, data, lenread);
    }
    
    Py_DECREF(ret);
    return lenread;
}