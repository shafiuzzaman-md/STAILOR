#ifndef SAILR_ASSERT
#define SAILR_ASSERT(cond) klee_assert((cond) && "SAILR_VULN_ASSERT")
#endif

#include <stdlib.h>
#include <string.h>
#include "klee/klee.h"

/* Stub for PyObject type */
typedef struct PyObject {
    int refcnt;
    char* data;
    int length;
} PyObject;

/* Stub for PyString_AsStringAndSize */
static int PyString_AsStringAndSize(PyObject* obj, char** buffer, int* length) {
    if (obj == NULL || obj->data == NULL) {
        return -1;
    }
    *buffer = obj->data;
    *length = obj->length;
    return 0;
}

/* Stub for PyFile_AsFile */
static void* PyFile_AsFile(PyObject* f) {
    return NULL; /* Not used in this path */
}

/* Stub for PyObject_CallFunction */
static PyObject* PyObject_CallFunction(PyObject* callable, const char* format, ...) {
    /* Return a symbolic PyObject for the read result */
    PyObject* ret = malloc(sizeof(PyObject));
    if (ret == NULL) return NULL;
    
    /* Make the data pointer and length symbolic */
    ret->data = malloc(1024); /* Allocate some memory */
    klee_make_symbolic(ret->data, 1024, "ret_data");
    klee_make_symbolic(&ret->length, sizeof(ret->length), "ret_length");
    ret->refcnt = 1;
    
    /* Assume the length is reasonable for the buffer */
    klee_assume(ret->length >= 0 && ret->length < 1024);
    
    return ret;
}

/* Stub for Py_DECREF */
static void Py_DECREF(PyObject* obj) {
    if (obj == NULL) return;
    obj->refcnt--;
    if (obj->refcnt <= 0) {
        free(obj->data);
        free(obj);
    }
}

/* Stub for PyErr_Occurred */
static PyObject* PyErr_Occurred(void) {
    return NULL; /* No error in this path */
}

/* The target function from libxml.c */
static int xmlPythonFileRead(void* context, char* buffer, int len) {
    PyObject* f = (PyObject*)context;
    PyObject* ret;
    char* data;
    int lenread;
    
    /* Call the Python read method */
    ret = PyObject_CallFunction(f, "(i)", len);
    if (ret == NULL) {
        return -1;
    }
    
    if (PyErr_Occurred() != NULL) {
        Py_DECREF(ret);
        return -1;
    }
    
    /* Check if result is a string */
    if (PyString_AsStringAndSize(ret, &data, &lenread) < 0) {
        printf("xmlPythonFileRead: result is not a String\n");
        Py_DECREF(ret);
        return -1;
    }
    
    /* This is the target code region */
    if (lenread > len) {
        memcpy(buffer, data, len);
    } else {
        /* TARGET LINE 393: memcpy(buffer, data, lenread); */
        /* Vulnerability assertion: ensure lenread does not exceed buffer size */
        SAILR_ASSERT(lenread <= len);
        /* Reachability marker */
        klee_assert(0 && "SAILR_REACH_ASSERT");
        memcpy(buffer, data, lenread);
    }
    
    Py_DECREF(ret);
    return lenread;
}

/* Main harness */
int main(void) {
    /* Symbolic inputs */
    PyObject f_obj;
    char buffer[1024];
    int len;
    
    /* Initialize the Python file object */
    f_obj.refcnt = 1;
    f_obj.data = NULL;
    f_obj.length = 0;
    
    /* Make buffer length symbolic */
    klee_make_symbolic(&len, sizeof(len), "len");
    /* Assume reasonable length for the buffer */
    klee_assume(len > 0 && len <= 1024);
    
    /* Call the target function */
    xmlPythonFileRead(&f_obj, buffer, len);
    
    return 0;
}