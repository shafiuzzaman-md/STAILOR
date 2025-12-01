#include <klee/klee.h>
#include "python/libxml.c"

int main() {
    PyObject *pyobj_ctx;
    PyObject *pyobj_error;
    PyObject *pyobj_warn;
    PyObject *pyobj_arg;
    xmlRelaxNGValidCtxtPtr ctxt;
    xmlRelaxNGValidCtxtPyCtxtPtr pyCtxt;

    klee_make_symbolic(&pyobj_ctx, sizeof(pyobj_ctx), "pyobj_ctx");
    klee_make_symbolic(&pyobj_error, sizeof(pyobj_error), "pyobj_error");
    klee_make_symbolic(&pyobj_warn, sizeof(pyobj_warn), "pyobj_warn");
    klee_make_symbolic(&pyobj_arg, sizeof(pyobj_arg), "pyobj_arg");
    klee_make_symbolic(&ctxt, sizeof(ctxt), "ctxt");

    if (xmlRelaxNGGetValidErrors(ctxt, NULL, NULL, (void **) &pyCtxt) == -1) {
        return 0;
    }

    if (pyCtxt == NULL) {
        pyCtxt = xmlMalloc(sizeof(xmlRelaxNGValidCtxtPyCtxt));
        if (pyCtxt == NULL) {
            return 0;
        }
        klee_assert(pyCtxt != NULL);
        memset(pyCtxt, 0, sizeof(xmlRelaxNGValidCtxtPyCtxt));
    }

    return 0;
}