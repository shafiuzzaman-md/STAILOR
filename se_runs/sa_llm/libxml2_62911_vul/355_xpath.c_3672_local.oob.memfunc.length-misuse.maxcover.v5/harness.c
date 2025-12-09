#include <libxml/parser.h>
#include <libxml/xpath.h>
#include <libxml/xpathInternals.h>
#include <klee/klee.h>

int main(void) {
    xmlDocPtr doc;
    xmlNodePtr node;
    xmlXPathContextPtr ctx;
    xmlXPathObjectPtr xpathObj;
    xmlChar* xmlData;
    size_t xmlSize;

    xmlData = (xmlChar*) klee_make_symbolic(&xmlSize, sizeof(xmlSize), "xmlSize");
    xmlSize = klee_int("xmlSize");
    klee_assume(xmlSize > 0 && xmlSize < 1024);
    klee_make_symbolic(xmlData, xmlSize, "xmlData");

    LIBXML_TEST_VERSION
    xmlInitParser();

    doc = xmlReadMemory((const char*)xmlData, xmlSize, "noname.xml", NULL, 0);
    if (doc == NULL) {
        xmlCleanupParser();
        return 0;
    }

    node = xmlDocGetRootElement(doc);
    if (node == NULL) {
        xmlFreeDoc(doc);
        xmlCleanupParser();
        return 0;
    }

    ctx = xmlXPathNewContext(doc);
    if (ctx == NULL) {
        xmlFreeDoc(doc);
        xmlCleanupParser();
        return 0;
    }

    xpathObj = xmlXPathNewNodeSet(node);
    if (xpathObj != NULL) {
        klee_assert(0 && "SAILR_REACH_ASSERT");
        xmlXPathFreeObject(xpathObj);
    }

    xmlXPathFreeContext(ctx);
    xmlFreeDoc(doc);
    xmlCleanupParser();
    return 0;
}