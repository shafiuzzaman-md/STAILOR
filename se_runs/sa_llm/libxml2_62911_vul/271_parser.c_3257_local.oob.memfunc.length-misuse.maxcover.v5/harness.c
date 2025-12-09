#include <libxml/parser.h>
#include <libxml/tree.h>
#include <string.h>
#include <klee/klee.h>

int main(void) {
    xmlParserCtxtPtr ctxt;
    xmlChar *buffer;
    xmlChar *buf;
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

    klee_make_symbolic(&c, sizeof(c), "c");

    buf = (xmlChar *)xmlMallocAtomic(len + 1);
    if (buf == NULL) {
        xmlFreeParserCtxt(ctxt);
        return 0;
    }
    klee_make_symbolic(buf, len + 1, "buf");
    buf[len] = 0;

    max = len * 2;
    buffer = (xmlChar *)xmlMallocAtomic(max);
    if (buffer == NULL) {
        xmlErrMemory(ctxt, NULL);
        xmlFree(buf);
        xmlFreeParserCtxt(ctxt);
        return 0;
    }

    klee_assert(0 && "SAILR_REACH_ASSERT");
    memcpy(buffer, buf, len);

    while (c != 0) {
        if (len + 10 > max) {
            xmlChar *tmp;
            max *= 2;
            tmp = (xmlChar *)xmlRealloc(buffer, max);
            if (tmp == NULL) {
                xmlErrMemory(ctxt, NULL);
                break;
            }
            buffer = tmp;
        }
        break;
    }

    xmlFree(buffer);
    xmlFree(buf);
    xmlFreeParserCtxt(ctxt);
    return 0;
}