#include <libxml/parser.h>
#include <libxml/xmlreader.h>
#include <string.h>
#include <klee/klee.h>

extern void SAILR_ASSERT(int condition);

int main(void) {
    xmlParserCtxtPtr ctxt;
    const char *buffer_data;
    int buffer_len;
    int rlen;
    int len;
    int instate;
    char *current;
    char *buffer;
    int maxlen;
    int curlen;
    int dotlen;

    ctxt = xmlCreatePushParserCtxt(NULL, NULL, NULL, 0, NULL);
    if (ctxt == NULL) return 0;

    klee_make_symbolic(&buffer_data, sizeof(buffer_data), "buffer_data");
    klee_make_symbolic(&buffer_len, sizeof(buffer_len), "buffer_len");
    klee_assume(buffer_len >= 0);
    klee_make_symbolic(&rlen, sizeof(rlen), "rlen");
    klee_assume(rlen >= 0);
    klee_make_symbolic(&len, sizeof(len), "len");
    klee_assume(len >= 0);
    klee_make_symbolic(&instate, sizeof(instate), "instate");
    klee_make_symbolic(&current, sizeof(current), "current");
    klee_make_symbolic(&buffer, sizeof(buffer), "buffer");
    klee_make_symbolic(&maxlen, sizeof(maxlen), "maxlen");
    klee_assume(maxlen >= 0);
    klee_make_symbolic(&curlen, sizeof(curlen), "curlen");
    klee_assume(curlen >= 0);
    klee_make_symbolic(&dotlen, sizeof(dotlen), "dotlen");
    klee_assume(dotlen >= 0);

    if (instate == 0) {
        if (len >= rlen) {
            len = rlen;
            rlen = 0;
            klee_assert(0 && "SAILR_REACH_ASSERT");
            memcpy(buffer, current, len);
            instate = 1;
            curlen = 0;
            dotlen = maxlen / 10;
        } else {
            memcpy(buffer, current, len);
            rlen -= len;
            current += len;
        }
    }

    xmlFreeParserCtxt(ctxt);
    return 0;
}