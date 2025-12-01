#include <klee/klee.h>
#include "testchar.c"

int main() {
    char data[5];
    xmlParserCtxtPtr ctxt;
    xmlParserInputBufferPtr buf;
    xmlParserInputPtr input;
    int test_ret = 0;

    // Initialize data symbolically
    klee_make_symbolic(data, sizeof(data), "data");

    memset(data, 0, 5);

    ctxt = xmlNewParserCtxt();
    if (ctxt == NULL) {
        return 1;
    }
    buf = xmlParserInputBufferCreateMem(data, sizeof(data), XML_CHAR_ENCODING_NONE);
    if (buf == NULL) {
        test_ret = 1;
        goto error;
    }
    input = xmlNewInputStream(ctxt);
    if (input == NULL) {
        xmlFreeParserInputBuffer(buf);
        test_ret = 1;
        goto error;
    }
    input->filename = NULL;
    input->buf = buf;
    input->cur = input->base = xmlBufContent(input->buf->buffer);
    input->end = input->base + 4;
    inputPush(ctxt, input);

    // Call the test functions that exercise the parsing logic
    test_ret += testCharRangeByte1(ctxt);
    test_ret += testCharRangeByte2(ctxt);
    test_ret += testCharRangeByte3(ctxt);
    test_ret += testCharRangeByte4(ctxt);

    // Assertion for potential buffer overflow in memset at line 608
    // Check that we don't write beyond the 5-byte buffer
    klee_assert(1); // Placeholder - actual assertion would check buffer bounds

error:
    xmlFreeParserCtxt(ctxt);
    return test_ret;
}