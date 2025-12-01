#include <klee/klee.h>
#include "python/libxml.c"

int main() {
    PyObject *pyobj_ctx;
    PyObject *pyobj_error;
    PyObject *pyobj_warn;
    PyObject *pyobj_arg = Py_None;
    xmlSchemaValidCtxtPtr ctxt;
    xmlSchemaValidCtxtPyCtxtPtr pyCtxt;

    klee_make_symbolic(&pyobj_ctx, sizeof(pyobj_ctx), "pyobj_ctx");
    klee_make_symbolic(&pyobj_error, sizeof(pyobj_error), "pyobj_error");
    klee_make_symbolic(&pyobj_warn, sizeof(pyobj_warn), "pyobj_warn");
    klee_make_symbolic(&ctxt, sizeof(ctxt), "ctxt");

    if (xmlSchemaGetValidErrors(ctxt, NULL, NULL, (void **) &pyCtxt) == -1) {
        return -1;
    }

    if (pyCtxt == NULL) {
        pyCtxt = xmlMalloc(sizeof(xmlSchemaValidCtxtPyCtxt));
        if (pyCtxt == NULL) {
            return -1;
        }
        klee_assert(pyCtxt != NULL);
        memset(pyCtxt, 0, sizeof(xmlSchemaValidCtxtPyCtxt));
    }

    Py_XDECREF(pyCtxt->error);
    Py_XINCREF(pyobj_error);
    pyCtxt->error = pyobj_error;

    Py_XDECREF(pyCtxt->warn);
    Py_XINCREF(pyobj_warn);
    pyCtxt->warn = pyobj_warn;

    Py_XDECREF(pyCtxt->arg);
    Py_XINCREF(pyobj_arg);
    pyCtxt->arg = pyobj_arg;

    xmlSchemaSetValidErrors(ctxt, &libxml_xmlSchemaValidityErrorFunc, &libxml_xmlSchemaValidityWarningFunc, pyCtxt);

    return 0;
}