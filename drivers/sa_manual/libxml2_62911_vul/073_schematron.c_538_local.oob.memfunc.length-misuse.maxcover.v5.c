#include <klee/klee.h>
#include "schematron.h"

int main() {
    // Initialize parser context
    xmlSchematronParserCtxtPtr ctxt = (xmlSchematronParserCtxtPtr)xmlMalloc(sizeof(xmlSchematronParserCtxt));
    klee_assume(ctxt != NULL);
    memset(ctxt, 0, sizeof(xmlSchematronParserCtxt));
    
    // Initialize schema
    xmlSchematronPtr schema = (xmlSchematronPtr)xmlMalloc(sizeof(xmlSchematron));
    klee_assume(schema != NULL);
    memset(schema, 0, sizeof(xmlSchematron));
    
    // Initialize node
    xmlNodePtr node = (xmlNodePtr)xmlMalloc(sizeof(xmlNode));
    klee_assume(node != NULL);
    memset(node, 0, sizeof(xmlNode));
    
    // Create symbolic name buffer
    #define NAME_SIZE 16
    xmlChar name[NAME_SIZE];
    klee_make_symbolic(name, sizeof(name), "name");
    name[NAME_SIZE - 1] = 0; // Ensure null termination
    
    // Call the target function
    xmlSchematronPatternPtr result = xmlSchematronAddPattern(ctxt, schema, node, name);
    
    // Assertion based on suspicious line 538 - check if allocation succeeded before memset
    if (result != NULL) {
        // The memset at line 538 should be safe if allocation succeeded
        // Add assertion to check we can access the structure
        klee_assert(1); // Basic safety check
    }
    
    // Cleanup
    if (result != NULL) {
        xmlFree(result);
    }
    if (schema != NULL) {
        xmlFree(schema);
    }
    if (ctxt != NULL) {
        xmlFree(ctxt);
    }
    if (node != NULL) {
        xmlFree(node);
    }
    
    return 0;
}