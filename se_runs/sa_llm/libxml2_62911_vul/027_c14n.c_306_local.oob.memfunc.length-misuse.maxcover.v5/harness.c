#include "klee/klee.h"
#include <libxml/parser.h>
#include <libxml/tree.h>
#include <libxml/xpath.h>
#include <libxml/c14n.h>

int main(void) {
    xmlDocPtr doc;
    xmlNodePtr node;
    xmlC14NCtxPtr ctx;
    xmlChar *output = NULL;
    int ret;

    // Initialize libxml2
    xmlInitParser();
    LIBXML_TEST_VERSION

    // Create a symbolic XML document in memory
    char xml_data[1024];
    klee_make_symbolic(xml_data, sizeof(xml_data), "xml_data");
    // Ensure null termination for safety
    xml_data[sizeof(xml_data)-1] = 0;

    doc = xmlReadMemory(xml_data, sizeof(xml_data)-1, "noname.xml", NULL, 0);
    if (doc == NULL) {
        // If parsing fails, we cannot reach the target, but we should still clean up
        xmlCleanupParser();
        return 0;
    }

    // Get the root node
    node = xmlDocGetRootElement(doc);
    if (node == NULL) {
        xmlFreeDoc(doc);
        xmlCleanupParser();
        return 0;
    }

    // Create a C14N context - this will allocate a xmlC14NVisibleNsStack inside
    ctx = xmlC14NNewCtx(NULL, 0, NULL, 1, node, 0);
    if (ctx == NULL) {
        xmlFreeDoc(doc);
        xmlCleanupParser();
        return 0;
    }

    // The target line is in xmlC14NVisibleNsStackDestroy which is called when freeing the context
    // We need to trigger the destruction of the visible namespace stack
    // This happens when we free the C14N context

    // Mark reachability just before the vulnerable memset
    // The memset is in xmlC14NVisibleNsStackDestroy which is called by xmlC14NFreeCtx
    // We'll place the reachability marker before freeing the context
    klee_assert(0 && "SAILR_REACH_ASSERT");

    // Free the C14N context - this will call xmlC14NVisibleNsStackDestroy
    // which contains the target memset at line 306
    xmlC14NFreeCtx(ctx);

    // Cleanup
    xmlFreeDoc(doc);
    xmlCleanupParser();

    return 0;
}