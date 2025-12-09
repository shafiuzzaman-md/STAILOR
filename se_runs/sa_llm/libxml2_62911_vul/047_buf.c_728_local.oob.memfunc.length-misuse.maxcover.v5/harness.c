#include "klee/klee.h"
#include <libxml/tree.h>
#include <libxml/parser.h>
#include <libxml/xmlmemory.h>
#include <libxml/xmlstring.h>
#include <libxml/buf.h>

int main(void) {
    xmlChar *external_data;
    int external_size;
    xmlParserCtxtPtr ctxt;
    xmlBufPtr buf;

    klee_make_symbolic(&external_size, sizeof(external_size), "external_size");
    klee_assume(external_size >= 0);
    klee_assume(external_size < 1024);

    external_data = (xmlChar *)xmlMallocAtomic(external_size + 1);
    if (external_data == NULL) return 0;
    klee_make_symbolic(external_data, external_size + 1, "external_data");
    external_data[external_size] = 0;

    ctxt = xmlCreateMemoryParserCtxt((char *)external_data, external_size);
    if (ctxt == NULL) {
        xmlFree(external_data);
        return 0;
    }

    buf = ctxt->input->buf;
    if (buf == NULL) {
        xmlFreeParserCtxt(ctxt);
        xmlFree(external_data);
        return 0;
    }

    klee_make_symbolic(&buf->use, sizeof(buf->use), "buf_use");
    klee_make_symbolic(&buf->size, sizeof(buf->size), "buf_size");
    klee_assume(buf->use >= 0);
    klee_assume(buf->size >= 0);
    klee_assume(buf->use <= buf->size);

    if (buf->content == NULL) {
        xmlFreeParserCtxt(ctxt);
        xmlFree(external_data);
        return 0;
    }

    int add_size;
    klee_make_symbolic(&add_size, sizeof(add_size), "add_size");
    klee_assume(add_size >= 0);
    klee_assume(add_size < 1024);

    xmlChar *add_data = (xmlChar *)xmlMallocAtomic(add_size + 1);
    if (add_data == NULL) {
        xmlFreeParserCtxt(ctxt);
        xmlFree(external_data);
        return 0;
    }
    klee_make_symbolic(add_data, add_size + 1, "add_data");
    add_data[add_size] = 0;

    int result = xmlBufAdd(buf, add_data, add_size);
    xmlFree(add_data);

    klee_assert(0 && "SAILR_REACH_ASSERT");

    xmlFreeParserCtxt(ctxt);
    xmlFree(external_data);
    return 0;
}