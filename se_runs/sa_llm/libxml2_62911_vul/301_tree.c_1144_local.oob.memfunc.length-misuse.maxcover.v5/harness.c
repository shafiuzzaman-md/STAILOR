#include <libxml/parser.h>
#include <libxml/tree.h>
#include <klee/klee.h>

int main(void) {
    // Symbolic input for the version string
    char version[100];
    klee_make_symbolic(version, sizeof(version), "version");
    // Ensure it's null-terminated for safety
    version[sizeof(version) - 1] = '\0';

    // Create a new XML document with the symbolic version
    xmlDocPtr doc = xmlNewDoc((const xmlChar *)version);

    // If doc is NULL, the allocation failed and we didn't reach line 1144.
    // If doc is not NULL, we reached the target line (memset call inside xmlNewDoc).
    if (doc != NULL) {
        // Place reachability marker
        klee_assert(0 && "SAILR_REACH_ASSERT");
        // Clean up
        xmlFreeDoc(doc);
    }

    // General cleanup
    xmlCleanupParser();
    return 0;
}