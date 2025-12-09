#include <libxml/xmlmemory.h>
#include <libxml/parser.h>
#include <libxml/xpath.h>
#include <libxml/xpathInternals.h>
#include <klee/klee.h>

int main(void) {
    xmlDocPtr doc;
    xmlXPathContextPtr ctx;
    xmlXPathObjectPtr obj1, obj2;
    xmlNodeSetPtr ns1, ns2;
    xmlChar *xpath1, *xpath2;
    int xpath1_len, xpath2_len;

    // Initialize libxml2
    xmlInitParser();
    LIBXML_TEST_VERSION

    // Create a simple XML document in memory
    const char *xml_data = "<root><a>text1</a><b>text2</b><c>text3</c></root>";
    doc = xmlReadMemory(xml_data, strlen(xml_data), "noname.xml", NULL, 0);
    if (doc == NULL) {
        return 1;
    }

    ctx = xmlXPathNewContext(doc);
    if (ctx == NULL) {
        xmlFreeDoc(doc);
        return 1;
    }

    // Make symbolic XPath expressions to control node-set sizes
    xpath1_len = 10;
    xpath1 = (xmlChar *)malloc(xpath1_len + 1);
    klee_make_symbolic(xpath1, xpath1_len + 1, "xpath1");
    xpath1[xpath1_len] = '\0'; // ensure null-terminated

    xpath2_len = 10;
    xpath2 = (xmlChar *)malloc(xpath2_len + 1);
    klee_make_symbolic(xpath2, xpath2_len + 1, "xpath2");
    xpath2[xpath2_len] = '\0';

    // Evaluate XPath to get node-sets
    obj1 = xmlXPathEvalExpression(xpath1, ctx);
    obj2 = xmlXPathEvalExpression(xpath2, ctx);

    if (obj1 == NULL || obj2 == NULL ||
        obj1->type != XPATH_NODESET || obj2->type != XPATH_NODESET ||
        obj1->nodesetval == NULL || obj2->nodesetval == NULL) {
        if (obj1) xmlXPathFreeObject(obj1);
        if (obj2) xmlXPathFreeObject(obj2);
        xmlXPathFreeContext(ctx);
        xmlFreeDoc(doc);
        free(xpath1);
        free(xpath2);
        return 1;
    }

    ns1 = obj1->nodesetval;
    ns2 = obj2->nodesetval;

    // Groom node-sets to have symbolic sizes
    // We'll directly manipulate nodeNr to explore the vulnerable memset
    klee_make_symbolic(&ns1->nodeNr, sizeof(int), "nodeNr1");
    klee_make_symbolic(&ns2->nodeNr, sizeof(int), "nodeNr2");
    // Ensure non-negative (as per bounds_hints)
    klee_assume(ns1->nodeNr >= 0);
    klee_assume(ns2->nodeNr >= 0);

    // Allocate nodeTab arrays to avoid null derefs in xmlXPathNodeValHash
    if (ns1->nodeNr > 0) {
        ns1->nodeTab = (xmlNodePtr *)malloc(ns1->nodeNr * sizeof(xmlNodePtr));
        for (int i = 0; i < ns1->nodeNr; i++) {
            ns1->nodeTab[i] = xmlNewNode(NULL, (const xmlChar *)"dummy");
        }
    }
    if (ns2->nodeNr > 0) {
        ns2->nodeTab = (xmlNodePtr *)malloc(ns2->nodeNr * sizeof(xmlNodePtr));
        for (int i = 0; i < ns2->nodeNr; i++) {
            ns2->nodeTab[i] = xmlNewNode(NULL, (const xmlChar *)"dummy");
        }
    }

    // Reachability marker: we are about to call xmlXPathCmpNodesExt
    klee_assert(0 && "SAILR_REACH_ASSERT");

    // Call the target function with the prepared node-sets
    // The third argument (neq) is symbolic to explore both branches
    int neq;
    klee_make_symbolic(&neq, sizeof(int), "neq");
    int result = xmlXPathCmpNodesExt(ns1, ns2, neq);

    // Cleanup
    if (ns1->nodeTab) {
        for (int i = 0; i < ns1->nodeNr; i++) xmlFreeNode(ns1->nodeTab[i]);
        free(ns1->nodeTab);
    }
    if (ns2->nodeTab) {
        for (int i = 0; i < ns2->nodeNr; i++) xmlFreeNode(ns2->nodeTab[i]);
        free(ns2->nodeTab);
    }
    xmlXPathFreeObject(obj1);
    xmlXPathFreeObject(obj2);
    xmlXPathFreeContext(ctx);
    xmlFreeDoc(doc);
    free(xpath1);
    free(xpath2);
    xmlCleanupParser();

    return 0;
}