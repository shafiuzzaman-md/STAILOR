#include <libxml/xpath.h>
#include <libxml/xpathInternals.h>
#include <libxml/parser.h>
#include <string.h>
#include "klee/klee.h"

int main(void) {
    xmlDocPtr doc;
    xmlXPathContextPtr ctx;
    xmlXPathObjectPtr obj;
    xmlChar *input_str;
    size_t input_len;

    // Initialize libxml2
    xmlInitParser();
    LIBXML_TEST_VERSION

    // Create a minimal XML document
    const char *xml_content = "<root>test</root>";
    doc = xmlReadMemory(xml_content, strlen(xml_content), "noname.xml", NULL, 0);
    if (doc == NULL) {
        return 1;
    }

    // Create XPath context
    ctx = xmlXPathNewContext(doc);
    if (ctx == NULL) {
        xmlFreeDoc(doc);
        return 1;
    }

    // Make symbolic input for the string value
    input_len = 10; // arbitrary size for symbolic buffer
    input_str = (xmlChar *)malloc(input_len + 1);
    klee_make_symbolic(input_str, input_len + 1, "input_str");
    input_str[input_len] = 0; // ensure null-terminated for safety

    // Call the target function xmlXPathNewString with symbolic input
    obj = xmlXPathNewString(input_str);

    // Place reachability marker: we want to reach the memset at line 4627
    // The memset is called after successful allocation, so we assert if obj != NULL
    if (obj != NULL) {
        klee_assert(0 && "SAILR_REACH_ASSERT");
        // Clean up the object
        xmlXPathFreeObject(obj);
    }

    // Cleanup
    free(input_str);
    xmlXPathFreeContext(ctx);
    xmlFreeDoc(doc);
    xmlCleanupParser();

    return 0;
}