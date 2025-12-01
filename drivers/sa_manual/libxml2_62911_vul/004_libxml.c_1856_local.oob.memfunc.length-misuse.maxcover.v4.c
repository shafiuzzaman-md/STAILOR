#include <klee/klee.h>
#include "python/libxml.c"

int main() {
    PyObject *pyobj_ctx;
    PyObject *pyobj_error;
    PyObject *pyobj_warn;
    PyObject *pyobj_arg;
    xmlValidCtxtPtr ctxt;
    xmlValidCtxtPyCtxtPtr pyCtxt;

    klee_make_symbolic(&pyobj_ctx, sizeof(pyobj_ctx), "pyobj_ctx");
    klee_make_symbolic(&pyobj_error, sizeof(pyobj_error), "pyobj_error");
    klee_make_symbolic(&pyobj_warn, sizeof(pyobj_warn), "pyobj_warn");
    klee_make_symbolic(&pyobj_arg, sizeof(pyobj_arg), "pyobj_arg");
    klee_make_symbolic(&ctxt, sizeof(ctxt), "ctxt");

    pyCtxt = xmlMalloc(sizeof(xmlValidCtxtPyCtxt));
    if (pyCtxt == NULL) {
        return -1;
    }

    memset(pyCtxt, 0, sizeof(xmlValidCtxtPyCtxt));
    klee_assert(pyCtxt != NULL);

    Py_XDECREF(pyCtxt->error);
    Py_XINCREF(pyobj_error);
    pyCtxt->error = pyobj_error;

    Py_XDECREF(pyCtxt->warn);
    Py_XINCREF(pyobj_warn);
    pyCtxt->warn = pyobj_warn;

    Py_XDECREF(pyCtxt->arg);
    Py_XINCREF(pyobj_arg);
    pyCtxt->arg = pyobj_arg;

    ctxt->error = libxml_xmlValidCtxtErrorFuncHandler;
    ctxt->warning = libxml_xmlValidCtxtWarningFuncHandler;
    ctxt->userData = pyCtxt;

    return 0;
}