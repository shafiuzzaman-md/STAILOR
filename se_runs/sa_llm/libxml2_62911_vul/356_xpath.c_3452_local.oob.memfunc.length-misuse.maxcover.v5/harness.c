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

    doc = xmlReadMemory("<root><a/><b/></root>", 24, "noname.xml", NULL, 0);
    if (doc == NULL) return 1;

    ctx = xmlXPathNewContext(doc);
    if (ctx == NULL) { xmlFreeDoc(doc); return 1; }

    set1 = xmlXPathNewNodeSet(NULL);
    if (set1 == NULL) { xmlXPathFreeContext(ctx); xmlFreeDoc(doc); return 1; }

    set2 = xmlXPathNewNodeSet(NULL);
    if (set2 == NULL) { xmlXPathFreeNodeSet(set1); xmlXPathFreeContext(ctx); xmlFreeDoc(doc); return 1; }

    node1 = xmlDocGetRootElement(doc);
    if (node1 == NULL) goto cleanup;
    node2 = node1->children;
    if (node2 == NULL) goto cleanup;

    xmlXPathNodeSetAdd(set1, node1);
    xmlXPathNodeSetAdd(set2, node2);

    set1->nodeMax = 0;
    set1->nodeNr = 0;

    klee_make_symbolic(&set1->nodeTab, sizeof(set1->nodeTab), "nodeTab_ptr");
    klee_make_symbolic(&set1->nodeMax, sizeof(set1->nodeMax), "nodeMax");
    klee_make_symbolic(&set1->nodeNr, sizeof(set1->nodeNr), "nodeNr");

    klee_assert(0 && "SAILR_REACH_ASSERT");

    xmlXPathNodeSetMerge(set1, set2);

cleanup:
    xmlXPathFreeNodeSet(set1);
    xmlXPathFreeNodeSet(set2);
    xmlXPathFreeContext(ctx);
    xmlFreeDoc(doc);
    return 0;
}