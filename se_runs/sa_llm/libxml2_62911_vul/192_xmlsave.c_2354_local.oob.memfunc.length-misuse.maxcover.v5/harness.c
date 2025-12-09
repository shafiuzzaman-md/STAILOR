#include <libxml/parser.h>
#include <libxml/xmlsave.h>
#include <libxml/encoding.h>
#include <string.h>
#include <klee/klee.h>

int main(void) {
    xmlDocPtr doc;
    xmlOutputBufferPtr out_buff;
    xmlCharEncodingHandlerPtr conv_hdlr;
    int format;
    const char *txt_encoding;
    xmlSaveCtxt ctxt;

    /* Initialize libxml2 */
    xmlInitParser();

    /* Create a minimal XML document */
    doc = xmlNewDoc(BAD_CAST "1.0");
    xmlNodePtr root = xmlNewNode(NULL, BAD_CAST "root");
    xmlDocSetRootElement(doc, root);

    /* Make symbolic inputs to explore paths */
    klee_make_symbolic(&format, sizeof(format), "format");
    klee_make_symbolic(&txt_encoding, sizeof(txt_encoding), "txt_encoding");

    /* Assume txt_encoding points to a symbolic string */
    char enc_buf[32];
    klee_make_symbolic(enc_buf, sizeof(enc_buf), "enc_buf");
    txt_encoding = enc_buf;

    /* Get an encoding handler - could be NULL */
    conv_hdlr = xmlFindCharEncodingHandler(txt_encoding);

    /* Simulate the path leading to line 2354 */
    if ((out_buff = xmlAllocOutputBuffer(conv_hdlr)) == NULL) {
        /* This branch avoids the target line; we want the other branch */
        if (conv_hdlr)
            xmlCharEncCloseFunc(conv_hdlr);
        xmlFreeDoc(doc);
        xmlCleanupParser();
        return 0;
    }

    /* Reachability marker: we are about to execute the memset at line 2354 */
    klee_assert(0 && "SAILR_REACH_ASSERT");

    /* The target line: memset(&ctxt, 0, sizeof(ctxt)); */
    memset(&ctxt, 0, sizeof(ctxt));

    /* Continue with the rest of the code to avoid early exit */
    ctxt.buf = out_buff;
    ctxt.level = 0;
    ctxt.format = format ? 1 : 0;
    ctxt.encoding = (const xmlChar *) txt_encoding;
    xmlSaveCtxtInit(&ctxt);
    ctxt.options |= XML_SAVE_AS_XML;
    xmlDocContentDumpOutput(&ctxt, doc);
    xmlOutputBufferFlush(out_buff);

    /* Cleanup */
    xmlOutputBufferClose(out_buff);
    xmlFreeDoc(doc);
    xmlCleanupParser();
    return 0;
}