#include <libxml/parser.h>
#include <libxml/tree.h>
#include <string.h>
#include <klee/klee.h>

int main(void) {
    xmlParserCtxtPtr ctxt;
    xmlChar *src;
    int len;
    int remove_head;

    ctxt = xmlCreateMemoryParserCtxt("", 0);
    if (ctxt == NULL) {
        return 0;
    }

    klee_make_symbolic(&len, sizeof(len), "len");
    klee_assume(len >= 0);
    klee_assume(len < 1024);

    klee_make_symbolic(&remove_head, sizeof(remove_head), "remove_head");
    klee_assume(remove_head >= 0);
    klee_assume(remove_head <= len);

    src = (xmlChar *)malloc(len + 2);
    if (src == NULL) {
        xmlFreeParserCtxt(ctxt);
        return 0;
    }
    klee_make_symbolic(src, len + 2, "src");
    src[len] = '\0';
    src[len + 1] = '\0';

    klee_assert(0 && "SAILR_REACH_ASSERT");
    *len -= remove_head;
    memmove(src, src + remove_head, 1 + *len);

    free(src);
    xmlFreeParserCtxt(ctxt);
    return 0;
}