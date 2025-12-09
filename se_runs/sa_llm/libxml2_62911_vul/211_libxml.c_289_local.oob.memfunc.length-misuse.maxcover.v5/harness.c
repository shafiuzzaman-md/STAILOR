#include <libxml/parser.h>
#include <libxml/xmlIO.h>
#include <Python.h>
#include <klee/klee.h>

// Mock Python object types and minimal stubs to avoid linking Python
typedef struct _object {
    int ob_refcnt;
} PyObject;

PyObject* PyFile_FromFile(FILE* fp, const char* name, const char* mode, int (*close)(FILE*)) {
    return (PyObject*) klee_int("pyfile_obj");
}

PyObject* PyObject_CallMethod(PyObject* o, const char* name, const char* format, ...) {
    // Return a symbolic Python string object
    PyObject* result = (PyObject*) malloc(sizeof(PyObject));
    result->ob_refcnt = 1;
    return result;
}

char* PyUnicode_AsUTF8AndSize(PyObject* o, Py_ssize_t* size) {
    static char buffer[4096];
    klee_make_symbolic(buffer, sizeof(buffer), "py_string_data");
    klee_make_symbolic(size, sizeof(*size), "py_string_size");
    // Ensure size is within buffer bounds for safety
    klee_assume(*size >= 0 && *size < sizeof(buffer));
    return buffer;
}

void Py_DECREF(PyObject* o) {
    if (o && --(o->ob_refcnt) == 0) {
        free(o);
    }
}

// The target function signature (from libxml.c)
int xmlPythonFileReadRaw(void* context, char* buffer, int len);

// Custom IO wrapper to call xmlPythonFileReadRaw
int custom_read(void* context, char* buffer, int len) {
    return xmlPythonFileReadRaw(context, buffer, len);
}

void xmlFreeParserCtxt(xmlParserCtxtPtr ctxt);

int main(void) {
    // Symbolic inputs for xmlPythonFileReadRaw parameters
    char context_buffer[4096];
    klee_make_symbolic(context_buffer, sizeof(context_buffer), "context_buffer");

    int len;
    klee_make_symbolic(&len, sizeof(len), "len");
    klee_assume(len >= 0 && len < 4096); // reasonable bounds

    char buffer[4096];
    klee_make_symbolic(buffer, sizeof(buffer), "buffer");

    // Call xmlPythonFileReadRaw directly to reach line 289
    int lenread = xmlPythonFileReadRaw(context_buffer, buffer, len);

    // Reachability marker: we want to hit the memcpy at line 289
    // The vulnerable path is when lenread <= len (the else branch)
    if (lenread <= len) {
        klee_assert(0 && "SAILR_REACH_ASSERT");
    }

    // Also test via parser API to ensure realistic path
    xmlParserCtxtPtr ctxt = xmlCreatePushParser(NULL, NULL, 0, NULL);
    if (ctxt) {
        xmlFreeParserCtxt(ctxt);
    }

    return 0;
}