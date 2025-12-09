#include "klee/klee.h"
#include <libxml/xpath.h>
#include <libxml/xpathInternals.h>
#include <libxml/parser.h>
#include <string.h>

int main(void) {
    xmlInitParser();

    // Create a parser context
    xmlDocPtr doc = xmlReadMemory("<root/>", 7, "noname.xml", NULL, 0);
    if (doc == NULL) {
        return 1;
    }
    xmlXPathContextPtr xpathCtx = xmlXPathNewContext(doc);
    if (xpathCtx == NULL) {
        xmlFreeDoc(doc);
        return 1;
    }

    // Create a dummy external value to wrap
    int dummy_val = 42;
    void* external_val = &dummy_val;

    // Call the target function
    xmlXPathObjectPtr result = xmlXPathWrapExternal(external_val);

    // Place reachability marker
    if (result != NULL) {
        klee_assert(0 && "SAILR_REACH_ASSERT");
        // Cleanup
        xmlXPathFreeObject(result);
    }

    // Cleanup
    xmlXPathFreeContext(xpathCtx);
    xmlFreeDoc(doc);
    xmlCleanupParser();

    return 0;
}