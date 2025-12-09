#include <libxml/xmlschemas.h>
#include <libxml/xmlmemory.h>
#include <libxml/parser.h>
#include <string.h>
#include "klee/klee.h"

int main(void) {
    xmlSchemaParserCtxtPtr ctxt;
    xmlSchemaTypePtr head = NULL;
    xmlSchemaSubstGroupPtr ret;

    // Initialize libxml2
    xmlInitParser();

    // Create a schema parser context
    ctxt = xmlSchemaNewParserCtxt("test.xsd");
    if (ctxt == NULL) {
        return 0;
    }

    // Make head symbolic to explore different paths
    klee_make_symbolic(&head, sizeof(head), "head");

    // Simulate the allocation and memset at line 5662
    ret = (xmlSchemaSubstGroupPtr) xmlMalloc(sizeof(xmlSchemaSubstGroup));
    if (ret == NULL) {
        xmlSchemaFreeParserCtxt(ctxt);
        return 0;
    }

    // Reachability marker for the target line
    klee_assert(0 && "SAILR_REACH_ASSERT");

    // Perform the memset from line 5662
    memset(ret, 0, sizeof(xmlSchemaSubstGroup));

    // Continue with the rest of the code to avoid early returns
    ret->head = head;
    ret->members = xmlSchemaItemListCreate();
    if (ret->members == NULL) {
        xmlSchemaSubstGroupFree(ret);
        xmlSchemaFreeParserCtxt(ctxt);
        return 0;
    }

    // Cleanup
    xmlSchemaSubstGroupFree(ret);
    xmlSchemaFreeParserCtxt(ctxt);
    xmlCleanupParser();
    return 0;
}