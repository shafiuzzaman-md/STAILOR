#include "klee/klee.h"
#include <libxml/parser.h>
#include <libxml/tree.h>
#include <string.h>

int main(void) {
    xmlParserCtxtPtr ctxt;
    const char* buffer;
    int buffer_size;
    xmlDocPtr doc;

    ctxt = xmlCreateMemoryParserCtxt("", 0);
    if (ctxt == NULL) {
        return 0;
    }

    klee_make_symbolic(&buffer_size, sizeof(buffer_size), "buffer_size");
    klee_assume(buffer_size >= 0);
    klee_assume(buffer_size < 1024);

    buffer = (const char*)malloc(buffer_size + 1);
    if (buffer == NULL) {
        xmlFreeParserCtxt(ctxt);
        return 0;
    }
    klee_make_symbolic((void*)buffer, buffer_size + 1, "buffer");
    ((char*)buffer)[buffer_size] = '\0';

    doc = xmlReadMemory(buffer, buffer_size, "noname.xml", NULL, 0);
    if (doc != NULL) {
        xmlFreeDoc(doc);
    }

    if (ctxt->attrHash != NULL) {
        klee_assert(0 && "SAILR_REACH_ASSERT");
    }

    xmlFreeParserCtxt(ctxt);
    free((void*)buffer);
    return 0;
}