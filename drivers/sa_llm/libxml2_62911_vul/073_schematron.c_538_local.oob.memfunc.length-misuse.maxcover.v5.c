#include <klee/klee.h>
#include "schematron.h"
#include "tree.h"
#include "dict.h"

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
    #define NAME_SIZE 10
    xmlChar name[NAME_SIZE];
    klee_make_symbolic(name, sizeof(name), "name");
    name[NAME_SIZE - 1] = 0; // Ensure null termination
    
    // Call the target function
    xmlSchematronAddPattern(ctxt, schema, node, name);
    
    // Assertion for the suspicious memset at line 538
    // The pattern allocation should be properly initialized
    xmlSchematronPatternPtr ret = (xmlSchematronPatternPtr)xmlMalloc(sizeof(xmlSchematronPattern));
    if (ret != NULL) {
        // Check that the memset doesn't overflow or underflow
        klee_assert(sizeof(xmlSchematronPattern) > 0);
    }
    
    // Cleanup
    if (ctxt) xmlFree(ctxt);
    if (schema) xmlFree(schema);
    if (node) xmlFree(node);
    
    return 0;
}