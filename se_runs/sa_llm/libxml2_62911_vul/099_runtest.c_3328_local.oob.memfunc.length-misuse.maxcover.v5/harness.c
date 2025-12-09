#include <libxml/parser.h>
#include <libxml/tree.h>
#include <string.h>
#include <klee/klee.h>

/* Global variable used in uripRead */
static int urip_rlen;

/* Stub for uripRead as defined in the target file */
static int uripRead(void *context, char *buffer, int len) {
    const char *ptr = (const char *) context;

    if ((context == NULL) || (buffer == NULL) || (len < 0))
        return(-1);

    if (len > urip_rlen) len = urip_rlen;
    /* Reachability marker */
    klee_assert(0 && "SAILR_REACH_ASSERT");
    memcpy(buffer, ptr, len);
    urip_rlen -= len;
    return(len);
}

/* Helper to simulate a custom I/O callback structure */
static xmlParserInputBufferPtr create_custom_input_buffer(const char *data, int size) {
    xmlParserInputBufferPtr buf = xmlAllocParserInputBuffer(XML_CHAR_ENCODING_NONE);
    if (buf) {
        buf->context = (void *)data;
        buf->readcallback = uripRead;
    }
    return buf;
}

int main(void) {
    const char *url_data;
    int url_len;
    xmlDocPtr doc;

    /* Make symbolic inputs for the URL data and its length */
    klee_make_symbolic(&url_len, sizeof(url_len), "url_len");
    /* Constrain length to a reasonable range, but allow zero and positive values */
    klee_assume(url_len >= 0 && url_len < 1024);
    url_data = (const char *)malloc(url_len + 1);
    klee_make_symbolic((void *)url_data, url_len + 1, "url_data");

    /* Initialize global variable urip_rlen to the length of our data */
    urip_rlen = url_len;

    /* Create a custom input buffer that will call uripRead */
    xmlParserInputBufferPtr buf = create_custom_input_buffer(url_data, url_len);
    if (buf == NULL) {
        free((void *)url_data);
        return 1;
    }

    /* Create a parser context */
    xmlParserCtxtPtr ctxt = xmlCreateIOParserCtxt(NULL, NULL,
                                                  buf->readcallback,
                                                  (xmlInputCloseCallback)NULL,
                                                  (void *)url_data,
                                                  XML_CHAR_ENCODING_NONE);
    if (ctxt == NULL) {
        xmlFreeParserInputBuffer(buf);
        free((void *)url_data);
        return 1;
    }

    /* Parse the document; this will eventually call uripRead */
    doc = xmlDoRead(ctxt, "test.xml", NULL, 0);

    /* Cleanup */
    if (doc) xmlFreeDoc(doc);
    xmlFreeParserCtxt(ctxt);
    xmlFreeParserInputBuffer(buf);
    free((void *)url_data);

    return 0;
}