#include <libxml/parser.h>
#include <libxml/xpath.h>
#include <klee/klee.h>

int main(void) {
    // Create a symbolic XML document content
    char xml_data[1024];
    klee_make_symbolic(xml_data, sizeof(xml_data), "xml_data");
    // Ensure null termination for safety
    xml_data[sizeof(xml_data)-1] = 0;

    // Parse the document
    xmlDocPtr doc = xmlReadMemory(xml_data, sizeof(xml_data)-1, "noname.xml", NULL, 0);
    if (doc == NULL) {
        // If parsing fails, we cannot reach the target line
        return 0;
    }

    // Create XPath context - this calls xmlXPathNewContext
    xmlXPathContextPtr ctxt = xmlXPathNewContext(doc);
    if (ctxt == NULL) {
        xmlFreeDoc(doc);
        return 0;
    }

    // Mark reachability of the memset line in xmlXPathNewContext
    // The memset is at line 5444, which is executed when xmlXPathNewContext succeeds
    klee_assert(0 && "SAILR_REACH_ASSERT");

    // Cleanup
    xmlXPathFreeContext(ctxt);
    xmlFreeDoc(doc);
    return 0;
}