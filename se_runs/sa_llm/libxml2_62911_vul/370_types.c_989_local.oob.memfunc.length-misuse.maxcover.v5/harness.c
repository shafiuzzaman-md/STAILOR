#include <libxml/xmlerror.h>
#include <Python.h>
#include <klee/klee.h>

int main(void) {
    xmlError error;
    xmlError *copy;

    klee_make_symbolic(&error, sizeof(error), "error");

    copy = xmlMalloc(sizeof(*copy));
    if (copy == NULL) {
        return 0;
    }

    klee_assert(0 && "SAILR_REACH_ASSERT");
    memset(copy, 0, sizeof(*copy));
    xmlCopyError(&error, copy);

    xmlFree(copy);
    return 0;
}