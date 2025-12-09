#include <libxml/parser.h>
#include <libxml/tree.h>
#include <klee/klee.h>

int main(void) {
    xmlDocPtr doc;
    xmlDtdPtr dtd;
    xmlNodePtr root;
    xmlChar* name;
    int name_len;

    // Initialize libxml2
    xmlInitParser();

    // Create a new XML document
    doc = xmlNewDoc((const xmlChar*)"1.0");
    if (doc == NULL) {
        return 1;
    }

    // Create a root node
    root = xmlNewNode(NULL, (const xmlChar*)"root");
    if (root == NULL) {
        xmlFreeDoc(doc);
        return 1;
    }
    xmlDocSetRootElement(doc, root);

    // Make the DTD name symbolic
    name_len = 10; // Arbitrary length
    name = (xmlChar*)malloc(name_len + 1);
    klee_make_symbolic(name, name_len + 1, "name");
    name[name_len] = 0; // Ensure null termination

    // Call xmlCreateIntSubset, which internally calls xmlNewDtd
    // This should reach the target line (tree.c:940) via xmlNewDtd
    dtd = xmlCreateIntSubset(doc, name, NULL, NULL);

    // Place reachability marker near the vulnerable memset
    // The memset is inside xmlNewDtd, called by xmlCreateIntSubset
    if (dtd != NULL) {
        klee_assert(0 && "SAILR_REACH_ASSERT");
    }

    // Cleanup
    if (dtd != NULL) {
        xmlFreeDtd(dtd);
    }
    free(name);
    xmlFreeDoc(doc);
    xmlCleanupParser();

    return 0;
}