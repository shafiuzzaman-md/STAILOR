#include "klee/klee.h"
#include <libxml/xmlmemory.h>
#include <libxml/parser.h>
#include <libxml/schematron.h>

int main(void) {
    char *buffer;
    int size;

    klee_make_symbolic(&size, sizeof(size), "size");
    klee_assume(size >= 0);
    klee_assume(size < 1024);

    buffer = (char*)xmlMalloc(size + 1);
    if (buffer == NULL) {
        return 0;
    }
    klee_make_symbolic(buffer, size + 1, "buffer");
    buffer[size] = '\0';

    xmlSchematronParserCtxtPtr ctxt = xmlSchematronNewMemParserCtxt(buffer, size);
    if (ctxt != NULL) {
        klee_assert(0 && "SAILR_REACH_ASSERT");
        xmlSchematronFreeParserCtxt(ctxt);
    }

    if (buffer != NULL) {
        xmlFree(buffer);
    }

    return 0;
}