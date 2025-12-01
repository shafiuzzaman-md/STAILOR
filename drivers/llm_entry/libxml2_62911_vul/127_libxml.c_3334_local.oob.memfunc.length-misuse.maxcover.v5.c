#include <klee/klee.h>
#include "python/libxml.c"

int main() {
    PyObject* pyobj_doc;
    PyObject* pyobj_nodes;
    int exclusive;
    PyObject* pyobj_prefixes;
    int with_comments;
    
    klee_make_symbolic(&pyobj_doc, sizeof(pyobj_doc), "pyobj_doc");
    klee_make_symbolic(&pyobj_nodes, sizeof(pyobj_nodes), "pyobj_nodes");
    klee_make_symbolic(&exclusive, sizeof(exclusive), "exclusive");
    klee_make_symbolic(&pyobj_prefixes, sizeof(pyobj_prefixes), "pyobj_prefixes");
    klee_make_symbolic(&with_comments, sizeof(with_comments), "with_comments");
    
    libxml_C14NDocDumpMemory(NULL, NULL);
    
    return 0;
}