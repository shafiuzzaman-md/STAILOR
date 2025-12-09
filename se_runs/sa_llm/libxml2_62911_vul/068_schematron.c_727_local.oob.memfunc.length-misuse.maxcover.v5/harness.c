#include "klee/klee.h"
#include <libxml/parser.h>
#include <libxml/schematron.h>
#include <libxml/xmlmemory.h>

int main(void) {
    xmlDocPtr doc;
    xmlSchematronParserCtxtPtr parserCtxt;
    xmlSchematronPtr schematron;

    // Initialize libxml2
    xmlInitParser();

    // Create a symbolic XML document
    char xml_data[1024];
    klee_make_symbolic(xml_data, sizeof(xml_data), "xml_data");
    // Ensure null termination for safety
    xml_data[sizeof(xml_data)-1] = '\0';

    doc = xmlReadMemory(xml_data, sizeof(xml_data)-1, "noname.xml", NULL, 0);
    if (doc == NULL) {
        // If document creation fails, we cannot proceed to target line
        xmlCleanupParser();
        return 0;
    }

    // Create parser context - this calls xmlSchematronNewParserCtxt
    parserCtxt = xmlSchematronNewParserCtxt("noname.xml");
    if (parserCtxt == NULL) {
        xmlFreeDoc(doc);
        xmlCleanupParser();
        return 0;
    }

    // The target line 727 is inside xmlSchematronNewParserCtxtDoc
    // Let's call that function directly
    schematron = xmlSchematronNewParserCtxtDoc(doc);
    if (schematron != NULL) {
        // If we reach here, the target memset at line 727 was executed
        // Place reachability assertion
        klee_assert(0 && "SAILR_REACH_ASSERT");
        
        // Clean up
        xmlSchematronFree(schematron);
    }

    // Cleanup
    xmlSchematronFreeParserCtxt(parserCtxt);
    xmlFreeDoc(doc);
    xmlCleanupParser();

    return 0;
}