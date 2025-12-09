#include <libxml/parser.h>
#include <libxml/xpath.h>
#include <libxml/xpathInternals.h>
#include <klee/klee.h>

int main(void) {
    xmlDocPtr doc;
    xmlXPathContextPtr ctx;
    xmlXPathObjectPtr obj;
    xmlNodePtr node;
    xmlNsPtr ns;

    doc = xmlReadMemory("<root/>", 7, "noname.xml", NULL, 0);
    if (doc == NULL) return 1;

    ctx = xmlXPathNewContext(doc);
    if (ctx == NULL) {
        xmlFreeDoc(doc);
        return 1;
    }

    node = xmlDocGetRootElement(doc);
    if (node == NULL) {
        xmlXPathFreeContext(ctx);
        xmlFreeDoc(doc);
        return 1;
    }

    ns = xmlNewNs(node, (const xmlChar*)"http://example.com", (const xmlChar*)"pref");
    if (ns == NULL) {
        xmlXPathFreeContext(ctx);
        xmlFreeDoc(doc);
        return 1;
    }

    obj = xmlXPathNewNodeSet(NULL);
    if (obj == NULL) {
        xmlXPathFreeContext(ctx);
        xmlFreeDoc(doc);
        return 1;
    }

    int symbolic_int;
    klee_make_symbolic(&symbolic_int, sizeof(symbolic_int), "symbolic_int");

    if (symbolic_int > 0) {
        xmlXPathNodeSetAddUnique(obj->nodesetval, (xmlNodePtr)ns);
        if (obj->nodesetval->nodeNr == 1) {
            klee_assert(0 && "SAILR_REACH_ASSERT");
            if ((obj->nodesetval->nodeTab[0] != NULL) &&
                (obj->nodesetval->nodeTab[0]->type == XML_NAMESPACE_DECL)) {
                xmlXPathNodeSetFreeNs((xmlNsPtr)obj->nodesetval->nodeTab[0]);
            }
        }
        obj->nodesetval->nodeNr = 0;
        memset(obj, 0, sizeof(xmlXPathObject));
        obj->nodesetval = obj->nodesetval;
    } else {
        memset(obj, 0, sizeof(xmlXPathObject));
    }

    xmlXPathFreeObject(obj);
    xmlXPathFreeContext(ctx);
    xmlFreeDoc(doc);
    return 0;
}