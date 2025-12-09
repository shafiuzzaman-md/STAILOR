#include <libxml/xmlschemas.h>
#include <libxml/xmlmemory.h>
#include <libxml/parser.h>
#include <string.h>
#include "klee/klee.h"

int main(void) {
    xmlSchemaParserCtxtPtr ctxt;
    xmlSchemaPtr schema;
    xmlSchemaBucketPtr bucket;
    const char* targetNamespace;
    int type;
    int size;

    // Initialize libxml2
    xmlInitParser();

    // Create a schema parser context
    ctxt = xmlSchemaNewParserCtxt("test.xsd");
    if (ctxt == NULL) {
        xmlCleanupParser();
        return 1;
    }

    // Make targetNamespace symbolic (can be NULL or a string)
    char ns_buf[256];
    klee_make_symbolic(ns_buf, sizeof(ns_buf), "ns_buf");
    // Ensure null-termination for safety
    ns_buf[255] = '\0';
    if (klee_range(0, 2, "ns_choice") == 0) {
        targetNamespace = NULL;
    } else {
        targetNamespace = ns_buf;
    }

    // Make type symbolic (0 for include, 1 for import, or other)
    klee_make_symbolic(&type, sizeof(type), "type");

    // Determine size based on type (mimicking the original code)
    if (type == 0) {
        size = sizeof(xmlSchemaInclude);
    } else {
        size = sizeof(xmlSchemaImport);
    }

    // Allocate the bucket
    bucket = (xmlSchemaBucketPtr) xmlMalloc(size);
    if (bucket == NULL) {
        xmlSchemaFreeParserCtxt(ctxt);
        xmlCleanupParser();
        return 2;
    }

    // Reachability marker: we are about to execute the memset on line 3633
    klee_assert(0 && "SAILR_REACH_ASSERT");

    // The vulnerable memset call
    memset(bucket, 0, size);

    // Continue with the rest of the function to avoid early exit
    bucket->targetNamespace = targetNamespace ? xmlStrdup((const xmlChar*)targetNamespace) : NULL;
    bucket->type = type;
    bucket->globals = xmlSchemaItemListCreate();
    if (bucket->globals == NULL) {
        xmlSchemaBucketFree(bucket);
        xmlSchemaFreeParserCtxt(ctxt);
        xmlCleanupParser();
        return 3;
    }
    bucket->locals = xmlSchemaItemListCreate();
    if (bucket->locals == NULL) {
        xmlSchemaBucketFree(bucket);
        xmlSchemaFreeParserCtxt(ctxt);
        xmlCleanupParser();
        return 4;
    }

    // Cleanup
    xmlSchemaBucketFree(bucket);
    xmlSchemaFreeParserCtxt(ctxt);
    xmlCleanupParser();
    return 0;
}