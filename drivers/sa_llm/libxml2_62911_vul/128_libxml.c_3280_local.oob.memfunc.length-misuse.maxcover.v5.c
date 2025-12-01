#include <klee/klee.h>
#include "python/libxml.c"

int main() {
    // Initialize Python runtime for libxml2 bindings
    Py_Initialize();
    
    // Create symbolic inputs for PyxmlNodeSet_Convert
    int is_tuple;
    int list_size;
    klee_make_symbolic(&is_tuple, sizeof(is_tuple), "is_tuple");
    klee_make_symbolic(&list_size, sizeof(list_size), "list_size");
    
    // Constrain list_size to reasonable bounds
    klee_assume(list_size >= 0);
    klee_assume(list_size <= 1000);
    
    // Create a mock PyObject for the nodeset
    PyObject* py_nodeset;
    
    // Create arrays to hold the tuple/list items
    PyObject* items[1000];
    
    if (is_tuple) {
        py_nodeset = PyTuple_New(list_size);
        for (int i = 0; i < list_size; i++) {
            items[i] = Py_None;
            Py_INCREF(items[i]);
            PyTuple_SET_ITEM(py_nodeset, i, items[i]);
        }
    } else {
        py_nodeset = PyList_New(list_size);
        for (int i = 0; i < list_size; i++) {
            items[i] = Py_None;
            Py_INCREF(items[i]);
            PyList_SET_ITEM(py_nodeset, i, items[i]);
        }
    }
    
    // Call the target function
    xmlNodeSetPtr result;
    int ret = PyxmlNodeSet_Convert(py_nodeset, &result);
    
    // Add assertion for the suspicious memset at line 3280
    if (result != NULL && result->nodeTab != NULL) {
        // Check that the memset size doesn't exceed allocated buffer
        klee_assert(result->nodeMax >= 0);
        klee_assert(result->nodeMax <= list_size);
    }
    
    // Cleanup
    if (is_tuple) {
        Py_DECREF(py_nodeset);
    } else {
        Py_DECREF(py_nodeset);
    }
    
    Py_Finalize();
    return 0;
}