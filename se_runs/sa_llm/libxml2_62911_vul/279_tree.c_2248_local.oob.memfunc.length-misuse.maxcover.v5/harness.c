#include <libxml/parser.h>
#include <libxml/tree.h>
#include <klee/klee.h>

int main(void) {
    xmlDocPtr doc;
    xmlNodePtr node;
    xmlChar *content;
    int content_len;

    // Initialize libxml2 library
    LIBXML_TEST_VERSION

    // Create a new document with a root node to have a valid context
    doc = xmlNewDoc(BAD_CAST "1.0");
    if (doc == NULL) {
        return 1;
    }

    // Make content symbolic to influence parsing
    content_len = 100; // Reasonable size for symbolic content
    content = (xmlChar *)malloc(content_len + 1);
    if (content == NULL) {
        xmlFreeDoc(doc);
        return 1;
    }
    klee_make_symbolic(content, content_len + 1, "content");
    content[content_len] = '\0'; // Ensure null-termination

    // Parse the symbolic content to create a node list
    // This will call xmlStringGetNodeList internally, which leads to xmlNewNode
    xmlNodePtr list = xmlStringGetNodeList(doc, content);
    
    // If list creation succeeded, we might have reached the target line
    if (list != NULL) {
        // The target line 2248 is inside xmlNewNode, called by xmlStringGetNodeList
        // Place reachability assertion
        klee_assert(0 && "SAILR_REACH_ASSERT");
        // Clean up
        xmlFreeNodeList(list);
    }

    // Cleanup
    free(content);
    xmlFreeDoc(doc);
    xmlCleanupParser();
    return 0;
}