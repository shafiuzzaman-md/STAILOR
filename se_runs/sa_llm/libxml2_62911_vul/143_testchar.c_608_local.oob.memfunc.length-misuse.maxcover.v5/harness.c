#include "klee/klee.h"
#include <libxml/parser.h>
#include <libxml/tree.h>
#include <string.h>

int main(void) {
    char data[5];
    xmlParserCtxtPtr ctxt;
    xmlParserInputBufferPtr buf;
    xmlParserInputPtr input;
    int test_ret = 0;

    klee_make_symbolic(data, sizeof(data), "data");

    ctxt = xmlNewParserCtxt();
    if (ctxt == NULL) {
        return 1;
    }

    buf = xmlParserInputBufferCreateMem(data, sizeof(data), XML_CHAR_ENCODING_NONE);
    if (buf == NULL) {
        xmlFreeParserCtxt(ctxt);
        return 1;
    }

    input = xmlNewInputStream(ctxt);
    if (input == NULL) {
        xmlFreeParserInputBuffer(buf);
        xmlFreeParserCtxt(ctxt);
        return 1;
    }
    input->buf = buf;
    xmlSwitchToEncoding(ctxt, xmlGetCharEncodingHandler(XML_CHAR_ENCODING_NONE));
    ctxt->input = input;

    klee_assert(0 && "SAILR_REACH_ASSERT");
    memset(data, 0, 5);

    xmlFreeParserInputBuffer(buf);
    xmlFreeParserCtxt(ctxt);
    return 0;
}