#include <libxml/parser.h>
#include <libxml/debugXML.h>
#include <libxml/xmlmemory.h>
#include <libxml/valid.h>
#include <string.h>
#include "klee/klee.h"

int main(void) {
    xmlShellCtxt ctxt_struct;
    xmlShellCtxtPtr ctxt = &ctxt_struct;
    xmlDocPtr doc;
    char dtd[256];

    // Initialize libxml2
    xmlInitParser();

    // Make symbolic inputs
    klee_make_symbolic(&ctxt_struct, sizeof(ctxt_struct), "ctxt_struct");
    klee_make_symbolic(dtd, sizeof(dtd), "dtd");

    // Ensure ctxt is not NULL (already satisfied as we use its address)
    // Create a document to avoid NULL dereference
    doc = xmlNewDoc((const xmlChar*)"1.0");
    if (!doc) {
        xmlCleanupParser();
        return 0;
    }
    ctxt->doc = doc;

    // Ensure dtd is a valid null-terminated string
    dtd[255] = '\0';

    // Call the target function
    xmlShellValidate(ctxt, dtd, NULL, NULL);

    // Reachability marker
    klee_assert(0 && "SAILR_REACH_ASSERT");

    // Cleanup
    xmlFreeDoc(doc);
    xmlCleanupParser();
    return 0;
}