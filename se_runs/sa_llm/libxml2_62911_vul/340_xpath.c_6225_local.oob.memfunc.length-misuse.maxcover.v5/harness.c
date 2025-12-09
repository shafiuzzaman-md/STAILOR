#include <libxml/xpath.h>
#include <libxml/xpathInternals.h>
#include <libxml/tree.h>
#include <libxml/parser.h>
#include <klee/klee.h>

int main(void) {
    xmlDocPtr doc;
    xmlXPathContextPtr ctx;
    xmlXPathObjectPtr obj1, obj2;
    xmlNodeSetPtr ns1, ns2;

    doc = xmlReadMemory("<root><a/><b/><c/></root>", 27, "noname.xml", NULL, 0);
    if (doc == NULL) return 1;

    ctx = xmlXPathNewContext(doc);
    if (ctx == NULL) {
        xmlFreeDoc(doc);
        return 1;
    }

    obj1 = xmlXPathEvalExpression((xmlChar*)"//*", ctx);
    if (obj1 == NULL || obj1->type != XPATH_NODESET || obj1->nodesetval == NULL) {
        xmlXPathFreeContext(ctx);
        xmlFreeDoc(doc);
        return 1;
    }
    ns1 = obj1->nodesetval;

    obj2 = xmlXPathEvalExpression((xmlChar*)"//*", ctx);
    if (obj2 == NULL || obj2->type != XPATH_NODESET || obj2->nodesetval == NULL) {
        xmlXPathFreeObject(obj1);
        xmlXPathFreeContext(ctx);
        xmlFreeDoc(doc);
        return 1;
    }
    ns2 = obj2->nodesetval;

    int ns1_nodeNr = ns1->nodeNr;
    int ns2_nodeNr = ns2->nodeNr;

    klee_make_symbolic(&ns1_nodeNr, sizeof(ns1_nodeNr), "ns1_nodeNr");
    klee_make_symbolic(&ns2_nodeNr, sizeof(ns2_nodeNr), "ns2_nodeNr");

    ns1->nodeNr = ns1_nodeNr;
    ns2->nodeNr = ns2_nodeNr;

    xmlChar **values1 = (xmlChar **) xmlMalloc(ns1->nodeNr * sizeof(xmlChar *));
    if (values1 == NULL) {
        xmlXPathFreeObject(obj2);
        xmlXPathFreeObject(obj1);
        xmlXPathFreeContext(ctx);
        xmlFreeDoc(doc);
        return 1;
    }

    unsigned int *hashs1 = (unsigned int *) xmlMalloc(ns1->nodeNr * sizeof(unsigned int));
    if (hashs1 == NULL) {
        xmlFree(values1);
        xmlXPathFreeObject(obj2);
        xmlXPathFreeObject(obj1);
        xmlXPathFreeContext(ctx);
        xmlFreeDoc(doc);
        return 1;
    }

    klee_assert(0 && "SAILR_REACH_ASSERT");
    memset(values1, 0, ns1->nodeNr * sizeof(xmlChar *));

    xmlXPathFreeObject(obj2);
    xmlXPathFreeObject(obj1);
    xmlXPathFreeContext(ctx);
    xmlFreeDoc(doc);
    xmlFree(values1);
    xmlFree(hashs1);
    return 0;
}