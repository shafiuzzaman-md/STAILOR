#include "klee/klee.h"
#include <libxml/parser.h>
#include <libxml/tree.h>

int main(void) {
    xmlParserCtxtPtr ctxt;
    xmlChar *buffer;
    xmlChar buf[1024];
    int len;
    int max;
    xmlChar c;

    ctxt = xmlCreateMemoryParserCtxt("", 0);
    if (ctxt == NULL) {
        return 0;
    }

    klee_make_symbolic(&len, sizeof(len), "len");
    klee_assume(len >= 0);
    klee_assume(len < 1024);

    klee_make_symbolic(buf, sizeof(buf), "buf");

    klee_make_symbolic(&c, sizeof(c), "c");

    max = len * 2;
    buffer = (xmlChar *) xmlMallocAtomic(max);
    if (buffer == NULL) {
        xmlFreeParserCtxt(ctxt);
        return 0;
    }

    klee_assert(0 && "SAILR_REACH_ASSERT");
    memcpy(buffer, buf, len);

    while ((c != 0) && (c != ':')) {
        if (len + 10 > max) {
            xmlChar *tmp;
            max *= 2;
            tmp = (xmlChar *) xmlRealloc(buffer, max);
            if (tmp == NULL) {
                xmlFree(buffer);
                xmlFreeParserCtxt(ctxt);
                return 0;
            }
            buffer = tmp;
        }
        klee_make_symbolic(&c, sizeof(c), "c_loop");
    }

    if (buffer) {
        xmlFree(buffer);
    }
    xmlFreeParserCtxt(ctxt);
    return 0;
}