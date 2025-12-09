#include <libxml/parser.h>
#include <libxml/tree.h>
#include <klee/klee.h>

int main(void) {
    // Symbolic input for comment content
    char content[256];
    klee_make_symbolic(content, sizeof(content), "content");
    // Ensure null-termination for safety
    content[255] = '\0';

    // Create a parser context to ensure libxml2 is initialized
    xmlDocPtr doc = xmlReadMemory("<root/>", 7, "noname.xml", NULL, 0);
    if (doc == NULL) {
        return 1;
    }

    // Call xmlNewComment which internally calls the target function
    // xmlNewComment is a public API that leads to the vulnerable line
    xmlNodePtr comment_node = xmlNewComment((const xmlChar *)content);

    // Place reachability assertion near the vulnerable memset call
    // The target line is inside xmlNewComment, so we assert after the call
    // to indicate the path was reached.
    if (comment_node != NULL) {
        klee_assert(0 && "SAILR_REACH_ASSERT");
        // Clean up
        xmlFreeNode(comment_node);
    }

    // Clean up
    xmlFreeDoc(doc);
    xmlCleanupParser();

    return 0;
}