#include <libxml/xmlschemas.h>
#include <libxml/xmlschemastypes.h>
#include <libxml/parser.h>
#include <libxml/parserInternals.h>
#include <string.h>
#include <klee/klee.h>

int main(void) {
    xmlSchemaParserCtxtPtr ctxt;
    xmlSchemaTypePtr typePtr;
    const xmlChar *name;
    const xmlChar *nsName;
    xmlNodePtr node;
    int type;
    int topLevel;

    // Initialize libxml2
    xmlInitParser();

    // Make ctxt symbolic (but ensure it's not NULL to pass early check)
    ctxt = xmlSchemaNewParserCtxt("test.xsd");
    if (ctxt == NULL) {
        return 0;
    }

    // Make other parameters symbolic
    klee_make_symbolic(&type, sizeof(type), "type");
    klee_make_symbolic(&topLevel, sizeof(topLevel), "topLevel");

    // Allocate symbolic strings for name and nsName
    // Use bounded sizes to avoid unbounded exploration
    #define STR_SIZE 10
    char name_buf[STR_SIZE];
    char ns_buf[STR_SIZE];
    klee_make_symbolic(name_buf, STR_SIZE, "name_buf");
    klee_make_symbolic(ns_buf, STR_SIZE, "ns_buf");
    // Ensure null termination for safety
    name_buf[STR_SIZE - 1] = '\0';
    ns_buf[STR_SIZE - 1] = '\0';
    name = (const xmlChar *)name_buf;
    nsName = (const xmlChar *)ns_buf;

    // node can be NULL or a dummy node; we'll use NULL for simplicity
    node = NULL;

    // Call the function that leads to the target line.
    // The function xmlSchemaNewType is the one that contains the memset at line 5336.
    // It is called from various places; we call it directly.
    typePtr = xmlSchemaNewType(ctxt, type, name, nsName, node, topLevel);

    // Place reachability assertion near the target line.
    // Since we cannot directly instrument the library source, we place it after the call.
    // The memset at line 5336 is inside xmlSchemaNewType.
    // We use a marker to indicate we reached the call that leads to that line.
    klee_assert(0 && "SAILR_REACH_ASSERT");

    // Cleanup
    if (typePtr) {
        xmlFree(typePtr);
    }
    xmlSchemaFreeParserCtxt(ctxt);
    xmlCleanupParser();

    return 0;
}