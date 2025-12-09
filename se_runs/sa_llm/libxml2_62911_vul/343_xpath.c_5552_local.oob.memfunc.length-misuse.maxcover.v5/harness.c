#include <libxml/xpath.h>
#include <libxml/xpathInternals.h>
#include <string.h>
#include <klee/klee.h>

int main(void) {
    xmlChar str[256];
    klee_make_symbolic(str, sizeof(str), "str");
    str[255] = '\0';

    xmlDocPtr doc = xmlNewDoc((const xmlChar*)"1.0");
    if (!doc) return 0;

    xmlNodePtr root = xmlNewNode(NULL, (const xmlChar*)"root");
    if (!root) {
        xmlFreeDoc(doc);
        return 0;
    }
    xmlDocSetRootElement(doc, root);

    xmlXPathContextPtr ctxt = xmlXPathNewContext(doc);
    if (!ctxt) {
        xmlFreeDoc(doc);
        return 0;
    }

    xmlXPathParserContextPtr parserCtxt = xmlXPathNewParserContext(str, ctxt);
    if (parserCtxt) {
        klee_assert(0 && "SAILR_REACH_ASSERT");
        xmlXPathFreeParserContext(parserCtxt);
    }

    xmlXPathFreeContext(ctxt);
    xmlFreeDoc(doc);
    return 0;
}