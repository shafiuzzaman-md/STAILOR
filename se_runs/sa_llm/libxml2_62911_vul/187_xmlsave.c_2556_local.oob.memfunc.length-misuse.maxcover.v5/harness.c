#include <libxml/parser.h>
#include <libxml/tree.h>
#include <libxml/xmlsave.h>
#include <libxml/xmlmemory.h>
#include <klee/klee.h>

int main(void) {
    xmlDocPtr doc;
    xmlNodePtr node;
    xmlOutputBufferPtr buf;
    int format;
    const char* encoding;
    int ret;

    klee_make_symbolic(&format, sizeof(format), "format");
    klee_make_symbolic(&encoding, sizeof(encoding), "encoding");

    doc = xmlNewDoc((const xmlChar*)"1.0");
    if (!doc) return 0;

    node = xmlNewDocNode(doc, NULL, (const xmlChar*)"root", NULL);
    if (!node) {
        xmlFreeDoc(doc);
        return 0;
    }
    xmlDocSetRootElement(doc, node);

    buf = xmlAllocOutputBuffer(NULL);
    if (!buf) {
        xmlFreeDoc(doc);
        return 0;
    }

    klee_assert(0 && "SAILR_REACH_ASSERT");
    ret = xmlNodeDumpOutput(buf, doc, node, 0, format, (const char*)encoding);

    xmlOutputBufferClose(buf);
    xmlFreeDoc(doc);
    return 0;
}