#include <libxml/xpath.h>
#include <libxml/xpath_internals.h>
#include <libxml/parser.h>
#include <string.h>
#include <klee/klee.h>

int main(void) {
    xmlDocPtr doc;
    xmlXPathContextPtr ctx;
    xmlXPathObjectPtr set1, set2;
    xmlNodePtr node1, node2;
    xmlChar *xml_data;
    size_t xml_size;

    xml_data = (xmlChar *)klee_make_symbolic(&xml_size, sizeof(xml_size), "xml_size");
    xml_size = klee_range(1, 1024, "xml_size_range");
    klee_assume(xml_size > 0);
    klee_make_symbolic(xml_data, xml_size, "xml_data");
    xml_data[xml_size - 1] = '\0';

    LIBXML_TEST_VERSION
    xmlInitParser();

    doc = xmlReadMemory((const char *)xml_data, xml_size, "noname.xml", NULL, 0);
    if (doc == NULL) {
        xmlCleanupParser();
        return 0;
    }

    ctx = xmlXPathNewContext(doc);
    if (ctx == NULL) {
        xmlFreeDoc(doc);
        xmlCleanupParser();
        return 0;
    }

    set1 = xmlXPathNewNodeSet(NULL);
    if (set1 == NULL) {
        xmlXPathFreeContext(ctx);
        xmlFreeDoc(doc);
        xmlCleanupParser();
        return 0;
    }

    set2 = xmlXPathNewNodeSet(NULL);
    if (set2 == NULL) {
        xmlXPathFreeNodeSet(set1);
        xmlXPathFreeContext(ctx);
        xmlFreeDoc(doc);
        xmlCleanupParser();
        return 0;
    }

    node1 = xmlDocGetRootElement(doc);
    if (node1 != NULL) {
        xmlXPathNodeSetAdd(set1, node1);
        xmlXPathNodeSetAdd(set2, node1);
    }

    set1->nodeMax = 0;
    set1->nodeNr = 0;

    klee_assert(0 && "SAILR_REACH_ASSERT");
    xmlXPathCmpNodesExt(node1, node2);

    xmlXPathFreeNodeSet(set1);
    xmlXPathFreeNodeSet(set2);
    xmlXPathFreeContext(ctx);
    xmlFreeDoc(doc);
    xmlCleanupParser();
    return 0;
}