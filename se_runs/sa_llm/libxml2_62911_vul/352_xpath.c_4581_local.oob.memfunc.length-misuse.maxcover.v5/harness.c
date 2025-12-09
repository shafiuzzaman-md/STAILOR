#include <libxml/xpath.h>
#include <libxml/xpathInternals.h>
#include <libxml/parser.h>
#include <string.h>
#include "klee/klee.h"

int main(void) {
    double val;
    klee_make_symbolic(&val, sizeof(val), "val");

    xmlXPathInit();

    xmlDocPtr doc = xmlReadMemory("<root/>", 7, "noname.xml", NULL, 0);
    if (doc == NULL) return 0;

    xmlXPathContextPtr ctx = xmlXPathNewContext(doc);
    if (ctx == NULL) {
        xmlFreeDoc(doc);
        return 0;
    }

    xmlXPathObjectPtr obj = xmlXPathNewFloat(val);
    if (obj != NULL) {
        klee_assert(0 && "SAILR_REACH_ASSERT");
        xmlXPathFreeObject(obj);
    }

    xmlXPathFreeContext(ctx);
    xmlFreeDoc(doc);
    xmlCleanupParser();
    return 0;
}