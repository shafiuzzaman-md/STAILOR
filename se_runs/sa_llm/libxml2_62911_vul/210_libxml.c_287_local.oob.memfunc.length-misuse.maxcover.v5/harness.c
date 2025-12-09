#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <libxml/parser.h>
#include <libxml/tree.h>
#include <klee/klee.h>

// Stub for Python objects to avoid linking Python
typedef struct _object {
    int ob_refcnt;
    char* ob_type;
} PyObject;

PyObject* PyFile_FromString(char* filename, char* mode) {
    PyObject* obj = (PyObject*)malloc(sizeof(PyObject));
    if (obj) {
        obj->ob_refcnt = 1;
        obj->ob_type = "file";
    }
    return obj;
}

PyObject* PyObject_CallMethod(PyObject* o, char* method, char* format, ...) {
    // Return a dummy string-like object
    static char dummy_data[] = "test data";
    PyObject* obj = (PyObject*)malloc(sizeof(PyObject));
    if (obj) {
        obj->ob_refcnt = 1;
        obj->ob_type = "string";
    }
    return obj;
}

int PyString_Check(PyObject* o) {
    return (o && strcmp(o->ob_type, "string") == 0);
}

char* PyString_AsString(PyObject* o) {
    static char data[256];
    klee_make_symbolic(data, sizeof(data), "data");
    return data;
}

int PyString_Size(PyObject* o) {
    int size;
    klee_make_symbolic(&size, sizeof(size), "lenread");
    // Assume size is non-negative
    klee_assume(size >= 0);
    return size;
}

void Py_DECREF(PyObject* o) {
    if (o && --(o->ob_refcnt) == 0) {
        free(o);
    }
}

// Simulate the vulnerable function
int xmlPythonFileReadRaw(PyObject *f, char *buffer, int len) {
    PyObject *ret;
    char *data;
    int lenread;

    ret = PyObject_CallMethod(f, "read", "(i)", len);
    if (ret == NULL) {
        return(-1);
    }
    if (PyString_Check(ret)) {
        data = PyString_AsString(ret);
        lenread = PyString_Size(ret);
    } else {
        printf("xmlPythonFileReadRaw: result is not a String\n");
        Py_DECREF(ret);
        return(-1);
    }

    // Target line 287
    if (lenread > len) {
        // Vulnerable memcpy with len instead of lenread
        memcpy(buffer, data, len);
        klee_assert(0 && "SAILR_REACH_ASSERT");
    } else {
        memcpy(buffer, data, lenread);
    }
    Py_DECREF(ret);
    return(lenread);
}

int main(void) {
    // Symbolic inputs
    int len;
    char buffer[1024];
    char xml_input[2048];
    int xml_len;

    klee_make_symbolic(&len, sizeof(len), "len");
    klee_assume(len >= 0);
    klee_assume(len < 1024); // Buffer size constraint

    klee_make_symbolic(xml_input, sizeof(xml_input), "xml_input");
    klee_make_symbolic(&xml_len, sizeof(xml_len), "xml_len");
    klee_assume(xml_len >= 0);
    klee_assume(xml_len < sizeof(xml_input));

    // Create a Python file object stub
    PyObject* f = PyFile_FromString("dummy.xml", "r");
    if (!f) return 1;

    // Call the vulnerable function
    int result = xmlPythonFileReadRaw(f, buffer, len);

    // Cleanup
    Py_DECREF(f);

    return 0;
}