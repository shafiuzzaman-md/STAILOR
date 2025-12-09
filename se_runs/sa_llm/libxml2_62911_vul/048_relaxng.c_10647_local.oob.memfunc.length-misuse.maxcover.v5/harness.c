#include <libxml/xmlmemory.h>
#include <libxml/relaxng.h>
#include <string.h>
#include "klee/klee.h"

int main(void) {
    xmlRelaxNGParserCtxtPtr parserCtxt;
    xmlRelaxNGPtr schema = NULL;
    xmlRelaxNGValidCtxtPtr validCtxt;

    // Create a parser context with symbolic input
    char xml_buffer[1024];
    klee_make_symbolic(xml_buffer, sizeof(xml_buffer), "xml_buffer");
    // Ensure null termination for safety
    xml_buffer[sizeof(xml_buffer)-1] = '\0';

    parserCtxt = xmlRelaxNGNewMemParserCtxt(xml_buffer, sizeof(xml_buffer)-1);
    if (parserCtxt == NULL) {
        return 0;
    }

    // Parse to obtain a schema (may be NULL)
    schema = xmlRelaxNGParse(parserCtxt);
    xmlRelaxNGFreeParserCtxt(parserCtxt);

    // Call the function that leads to the target line
    validCtxt = xmlRelaxNGNewValidCtxt(schema);
    // The target line 10647 is inside xmlRelaxNGNewValidCtxt
    // Place reachability assertion after the call to indicate the path was taken
    if (validCtxt != NULL) {
        klee_assert(0 && "SAILR_REACH_ASSERT");
        // Clean up
        xmlRelaxNGFreeValidCtxt(validCtxt);
    }

    if (schema != NULL) {
        xmlRelaxNGFree(schema);
    }

    return 0;
}