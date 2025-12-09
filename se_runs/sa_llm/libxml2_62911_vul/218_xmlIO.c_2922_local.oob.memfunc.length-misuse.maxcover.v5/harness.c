#include <libxml/parser.h>
#include <libxml/xmlIO.h>
#include <string.h>
#include <klee/klee.h>

typedef struct {
    const xmlChar *str;
} xmlStringIOCtxt;

static int xmlStringRead(void *vctxt, char *buf, int size) {
    xmlStringIOCtxt *ctxt = vctxt;
    const xmlChar *zero;
    size_t len;

    zero = memchr(ctxt->str, 0, size);
    len = zero ? zero - ctxt->str : size;

    klee_assert(0 && "SAILR_REACH_ASSERT");

    memcpy(buf, ctxt->str, len);
    ctxt->str += len;

    return(len);
}

int main(void) {
    xmlStringIOCtxt ctxt;
    char buffer[1024];
    int size;

    klee_make_symbolic(&ctxt.str, sizeof(ctxt.str), "ctxt_str");
    klee_make_symbolic(&size, sizeof(size), "size");

    if (size < 0) {
        size = 0;
    }
    if (size > 1024) {
        size = 1024;
    }

    xmlStringRead(&ctxt, buffer, size);
    return 0;
}