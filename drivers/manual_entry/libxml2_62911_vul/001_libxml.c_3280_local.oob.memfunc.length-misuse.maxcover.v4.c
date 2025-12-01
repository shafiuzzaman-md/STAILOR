#include <klee/klee.h>
#include "python/libxml.c"

int main() {
    PyObject* py_nodeset;
    xmlNodeSetPtr result;
    
    klee_make_symbolic(&py_nodeset, sizeof(py_nodeset), "py_nodeset");
    
    int ret = PyxmlNodeSet_Convert(py_nodeset, &result);
    
    return 0;
}