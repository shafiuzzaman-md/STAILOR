#include "klee/klee.h"
#include <libxml/parser.h>
#include <libxml/tree.h>
#include <string.h>

int main(void) {
    xmlDocPtr doc;
    xmlNodePtr node;
    const xmlChar* name;
    const xmlChar* content;

    // Initialize libxml2
    xmlInitParser();

    // Make symbolic inputs for the function parameters
    // We need to simulate a call to xmlNewPI, which is the likely function containing line 2146.
    // xmlNewPI signature: xmlNodePtr xmlNewPI(const xmlChar *name, const xmlChar *content);
    // It also uses a doc from context? Actually xmlNewPI is defined in tree.c and takes (const xmlChar *name, const xmlChar *content).
    // But the snippet shows 'doc' variable, so maybe it's xmlNewDocPI? Let's check: The code around line 2146 is from xmlNewDocPI.
    // Indeed, xmlNewDocPI signature: xmlNodePtr xmlNewDocPI(xmlDocPtr doc, const xmlChar *name, const xmlChar *content);
    // So we need a doc, name, and content.

    // Create a symbolic doc (actually we need a concrete doc pointer but can have symbolic internal fields).
    // We'll create a real doc with xmlNewDoc.
    doc = xmlNewDoc(NULL);
    if (doc == NULL) {
        return 0;
    }

    // Make name and content symbolic strings.
    // We'll allocate buffers and make their contents symbolic.
    #define MAX_SYM_LEN 100
    char name_buf[MAX_SYM_LEN];
    char content_buf[MAX_SYM_LEN];
    klee_make_symbolic(name_buf, sizeof(name_buf), "name_buf");
    klee_make_symbolic(content_buf, sizeof(content_buf), "content_buf");
    // Ensure null-termination for safety (libxml expects C strings).
    name_buf[MAX_SYM_LEN-1] = '\0';
    content_buf[MAX_SYM_LEN-1] = '\0';
    name = (const xmlChar*)name_buf;
    content = (const xmlChar*)content_buf;

    // Call xmlNewDocPI, which should lead to the target line.
    node = xmlNewDocPI(doc, name, content);

    // If node is created, we reach the memset at line 2146.
    // Place reachability assertion.
    if (node != NULL) {
        // We have reached the vulnerable line.
        klee_assert(0 && "SAILR_REACH_ASSERT");
        // No SAILR_ASSERT provided, so we don't add one.
    }

    // Cleanup
    xmlFreeDoc(doc);
    xmlCleanupParser();
    return 0;
}