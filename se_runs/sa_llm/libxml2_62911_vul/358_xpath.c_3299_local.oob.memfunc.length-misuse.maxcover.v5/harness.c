#include <libxml/xpath.h>
#include <libxml/xpathInternals.h>
#include <libxml/tree.h>
#include <libxml/parser.h>
#include <klee/klee.h>

int main(void) {
    xmlDocPtr doc;
    xmlXPathContextPtr ctx;
    xmlXPathObjectPtr val1, val2;
    xmlNodePtr node1, node2;

    doc = xmlReadMemory("<root><a/><b/></root>", 24, "noname.xml", NULL, 0);
    if (doc == NULL) return 1;

    ctx = xmlXPathNewContext(doc);
    if (ctx == NULL) { xmlFreeDoc(doc); return 1; }

    node1 = xmlDocGetRootElement(doc);
    if (node1 == NULL) { xmlXPathFreeContext(ctx); xmlFreeDoc(doc); return 1; }
    node1 = node1->children;
    if (node1 == NULL) { xmlXPathFreeContext(ctx); xmlFreeDoc(doc); return 1; }

    node2 = node1->next;
    if (node2 == NULL) { xmlXPathFreeContext(ctx); xmlFreeDoc(doc); return 1; }

    val1 = xmlXPathNewNodeSet(node1);
    if (val1 == NULL) { xmlXPathFreeContext(ctx); xmlFreeDoc(doc); return 1; }

    val2 = xmlXPathNewNodeSet(node2);
    if (val2 == NULL) { xmlXPathFreeNodeSet(val1); xmlXPathFreeContext(ctx); xmlFreeDoc(doc); return 1; }

    val1->nodeMax = 0;
    val1->nodeNr = 0;
    val1->nodeTab = NULL;

    klee_make_symbolic(&val1->nodeMax, sizeof(val1->nodeMax), "nodeMax");
    klee_make_symbolic(&val1->nodeNr, sizeof(val1->nodeNr), "nodeNr");

    if (val1->nodeMax == 0) {
        klee_assert(0 && "SAILR_REACH_ASSERT");
        xmlXPathCmpNodesExt(node1, node2);
    }

    xmlXPathFreeNodeSet(val1);
    xmlXPathFreeNodeSet(val2);
    xmlXPathFreeContext(ctx);
    xmlFreeDoc(doc);
    return 0;
}