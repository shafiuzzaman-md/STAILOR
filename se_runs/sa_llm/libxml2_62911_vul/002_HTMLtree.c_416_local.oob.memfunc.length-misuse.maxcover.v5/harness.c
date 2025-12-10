#include <libxml/HTMLtree.h>
#include <libxml/xmlmemory.h>
#include <libxml/parser.h>
#include <libxml/encoding.h>
#include <klee/klee.h>

int main(void) {
    const char *encoding = NULL;
    xmlDocPtr doc = NULL;
    xmlNodePtr node = NULL;
    xmlBufferPtr buf = NULL;
    xmlOutputBufferPtr outbuf = NULL;
    int ret;

    klee_make_symbolic(&encoding, sizeof(encoding), "encoding");

    doc = xmlNewDoc(BAD_CAST "1.0");
    if (!doc) return 0;

    node = xmlNewNode(NULL, BAD_CAST "html");
    if (!node) {
        xmlFreeDoc(doc);
        return 0;
    }
    xmlDocSetRootElement(doc, node);

    buf = xmlBufferCreate();
    if (!buf) {
        xmlFreeDoc(doc);
        return 0;
    }

    outbuf = xmlOutputBufferCreateBuffer(buf, NULL);
    if (!outbuf) {
        xmlBufferFree(buf);
        xmlFreeDoc(doc);
        return 0;
    }

    ret = htmlGetMetaEncoding(doc);
    klee_assert(0 && "SAILR_REACH_ASSERT");

    xmlOutputBufferClose(outbuf);
    xmlBufferFree(buf);
    xmlFreeDoc(doc);
    return 0;
}