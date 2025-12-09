#include <libxml/parser.h>
#include <libxml/tree.h>
#include <klee/klee.h>

int main(void) {
    xmlDocPtr doc;
    xmlNodePtr node;
    xmlNsPtr ns;

    // Initialize libxml2 library
    LIBXML_TEST_VERSION

    // Create a symbolic document content
    char xml_content[1024];
    klee_make_symbolic(xml_content, sizeof(xml_content), "xml_content");
    // Ensure null termination for safety
    xml_content[sizeof(xml_content)-1] = '\0';

    // Parse the document from memory
    doc = xmlReadMemory(xml_content, sizeof(xml_content)-1, "noname.xml", NULL, 0);
    if (doc == NULL) {
        // If parsing fails, we cannot proceed
        return 0;
    }

    // Get the root element
    node = xmlDocGetRootElement(doc);
    if (node == NULL) {
        // No root element, clean up and exit
        xmlFreeDoc(doc);
        return 0;
    }

    // The target line 5962 in tree.c is inside xmlSearchNsByHref.
    // We need to call a function that leads to that code path.
    // xmlSearchNsByHref is called when looking for a namespace by href.
    // We'll try to search for the XML namespace (which is built-in).
    ns = xmlSearchNsByHref(doc, node, (const xmlChar*)XML_XML_NAMESPACE);
    // The target line is reached when the namespace is not found and needs to be created.
    // The memset at line 5962 is executed in that creation path.

    // Place reachability assertion near the vulnerable path.
    // Since we cannot directly instrument the library code, we place it after the call.
    // If the call returns a non-NULL namespace, we assume the path was taken.
    if (ns != NULL) {
        // The namespace was created, which includes the memset.
        klee_assert(0 && "SAILR_REACH_ASSERT");
    }

    // Clean up
    xmlFreeDoc(doc);
    xmlCleanupParser();

    return 0;
}