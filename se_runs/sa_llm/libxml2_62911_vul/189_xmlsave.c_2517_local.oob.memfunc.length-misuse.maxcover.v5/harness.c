#include "klee/klee.h"
#include <libxml/parser.h>
#include <libxml/tree.h>
#include <libxml/xmlsave.h>
#include <libxml/xmlIO.h>

int main(void) {
    xmlDocPtr doc;
    xmlNodePtr node;
    xmlOutputBufferPtr buf;
    const char* encoding;
    int encoding_len;

    klee_make_symbolic(&encoding, sizeof(encoding), "encoding");
    klee_make_symbolic(&encoding_len, sizeof(encoding_len), "encoding_len");
    klee_assume(encoding_len >= 0);
    klee_assume(encoding_len < 1024);
    klee_assume(encoding != NULL);

    doc = xmlReadMemory("<root>test</root>", 17, "noname.xml", NULL, 0);
    if (doc == NULL) return 0;

    node = xmlDocGetRootElement(doc);
    if (node == NULL) {
        xmlFreeDoc(doc);
        return 0;
    }

    buf = xmlAllocOutputBuffer(NULL);
    if (buf == NULL) {
        xmlFreeDoc(doc);
        return 0;
    }

    klee_assert(0 && "SAILR_REACH_ASSERT");
    xmlNodeDumpOutputInternal(buf, node, 0, 0, encoding);

    xmlOutputBufferClose(buf);
    xmlFreeDoc(doc);
    return 0;
}