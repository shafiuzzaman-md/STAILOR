#include <libxml/parser.h>
#include <libxml/tree.h>
#include <string.h>
#include <klee/klee.h>

int main(void) {
    xmlParserCtxtPtr ctxt;
    xmlDocPtr doc;
    const char* buffer;
    int buffer_size;

    klee_make_symbolic(&buffer_size, sizeof(buffer_size), "buffer_size");
    klee_assume(buffer_size > 0);
    klee_assume(buffer_size < 1024);  // Reasonable bound

    buffer = (const char*) klee_malloc(buffer_size);
    klee_make_symbolic((void*)buffer, buffer_size, "buffer");

    ctxt = xmlCreateMemoryParserCtxt(buffer, buffer_size);
    if (ctxt == NULL) {
        return 0;
    }

    if (ctxt->nsdb != NULL) {
        klee_assert(0 && "SAILR_REACH_ASSERT");
    }

    xmlFreeParserCtxt(ctxt);
    return 0;
}