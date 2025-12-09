#include <libxml/parser.h>
#include <libxml/xmlIO.h>
#include <string.h>
#include <klee/klee.h>

int main(void) {
    const char *post_uri;
    char post_uri_buf[256];
    int post_uri_len;

    klee_make_symbolic(&post_uri_len, sizeof(post_uri_len), "post_uri_len");
    klee_assume(post_uri_len >= 0 && post_uri_len < 256);
    klee_make_symbolic(post_uri_buf, sizeof(post_uri_buf), "post_uri_buf");
    post_uri_buf[post_uri_len] = '\0';
    post_uri = post_uri_buf;

    xmlOutputBufferPtr outbuf = xmlOutputBufferCreateIO(
        (xmlOutputWriteCallback)0, (xmlOutputCloseCallback)0, NULL, NULL);
    if (outbuf) {
        xmlOutputBufferClose(outbuf);
    }

    void *ctxt = xmlIOHTTPWriteOpen(post_uri);
    if (ctxt) {
        klee_assert(0 && "SAILR_REACH_ASSERT");
        xmlFreeHTTPWriteCtxt(ctxt);
    }

    return 0;
}