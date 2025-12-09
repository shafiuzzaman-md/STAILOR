#include <libxml/parser.h>
#include <libxml/xpath.h>
#include <libxml/xpathInternals.h>
#include <klee/klee.h>

int main(void) {
    xmlDocPtr doc;
    xmlXPathContextPtr ctx;
    xmlXPathObjectPtr obj;
    xmlNodePtr node;
    xmlChar *xpath_expr;
    int cache_size;

    klee_make_symbolic(&cache_size, sizeof(cache_size), "cache_size");
    klee_assume(cache_size >= 0);
    klee_assume(cache_size < 100);

    doc = xmlReadMemory("<root><a/><b/></root>", -1, "noname.xml", NULL, 0);
    if (doc == NULL) return 1;

    ctx = xmlXPathNewContext(doc);
    if (ctx == NULL) {
        xmlFreeDoc(doc);
        return 1;
    }

    xpath_expr = (xmlChar*)"//*";
    obj = xmlXPathEvalExpression(xpath_expr, ctx);
    if (obj == NULL) {
        xmlXPathFreeContext(ctx);
        xmlFreeDoc(doc);
        return 1;
    }

    node = xmlDocGetRootElement(doc);
    if (node == NULL) {
        xmlXPathFreeObject(obj);
        xmlXPathFreeContext(ctx);
        xmlFreeDoc(doc);
        return 1;
    }

    xmlXPathCacheObject(obj, cache_size);

    klee_assert(0 && "SAILR_REACH_ASSERT");

    xmlXPathFreeObject(obj);
    xmlXPathFreeContext(ctx);
    xmlFreeDoc(doc);
    return 0;
}