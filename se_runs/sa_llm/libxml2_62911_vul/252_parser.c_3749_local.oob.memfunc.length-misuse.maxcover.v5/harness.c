#include "klee/klee.h"
#include <libxml/parser.h>
#include <libxml/tree.h>

int main(void) {
    xmlParserCtxtPtr ctxt;
    xmlChar *buf;
    int len;
    xmlChar c;

    ctxt = xmlCreateMemoryParserCtxt("", 0);
    if (ctxt == NULL) {
        return 0;
    }

    klee_make_symbolic(&len, sizeof(len), "len");
    klee_assume(len >= 0);
    klee_assume(len < 1024);

    buf = (xmlChar *)xmlMallocAtomic(len + 1);
    if (buf == NULL) {
        xmlFreeParserCtxt(ctxt);
        return 0;
    }
    klee_make_symbolic(buf, len + 1, "buf");
    buf[len] = 0;

    klee_make_symbolic(&c, sizeof(c), "c");

    xmlParserNsLookup(ctxt, buf, len, c);

    klee_assert(0 && "SAILR_REACH_ASSERT");

    xmlFree(buf);
    xmlFreeParserCtxt(ctxt);
    return 0;
}