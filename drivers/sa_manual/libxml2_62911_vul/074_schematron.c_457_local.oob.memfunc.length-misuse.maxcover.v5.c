#include <klee/klee.h>
#include "schematron.h"
#include "dict.h"
#include "pattern.h"
#include "xpath.h"

int main() {
    // Initialize parser context
    xmlSchematronParserCtxtPtr ctxt = (xmlSchematronParserCtxtPtr)xmlMalloc(sizeof(xmlSchematronParserCtxt));
    klee_assume(ctxt != NULL);
    memset(ctxt, 0, sizeof(xmlSchematronParserCtxt));
    
    // Initialize dictionary
    ctxt->dict = xmlDictCreate();
    klee_assume(ctxt->dict != NULL);
    
    // Initialize schema
    xmlSchematronPtr schema = (xmlSchematronPtr)xmlMalloc(sizeof(xmlSchematron));
    klee_assume(schema != NULL);
    memset(schema, 0, sizeof(xmlSchematron));
    
    // Initialize pattern
    xmlSchematronPatternPtr pat = (xmlSchematronPatternPtr)xmlMalloc(sizeof(xmlSchematronPattern));
    klee_assume(pat != NULL);
    memset(pat, 0, sizeof(xmlSchematronPattern));
    
    // Initialize node
    xmlNodePtr node = (xmlNodePtr)xmlMalloc(sizeof(xmlNode));
    klee_assume(node != NULL);
    memset(node, 0, sizeof(xmlNode));
    
    // Create symbolic context and report strings
    #define STR_SIZE 10
    xmlChar context[STR_SIZE];
    xmlChar report[STR_SIZE];
    klee_make_symbolic(context, sizeof(context), "context");
    klee_make_symbolic(report, sizeof(report), "report");
    
    // Ensure context is null-terminated
    context[STR_SIZE-1] = '\0';
    report[STR_SIZE-1] = '\0';
    
    // Call the target function
    xmlSchematronRulePtr result = xmlSchematronAddRule(ctxt, schema, pat, node, context, report);
    
    // Assertion for potential vulnerability at line 457
    // Check if the allocated rule structure was properly initialized
    if (result != NULL) {
        // The memset at line 457 should zero out the entire structure
        // We can check that some fields are properly initialized
        klee_assert(result->node == node);
        klee_assert(result->context == context);
        klee_assert(result->report == report);
        klee_assert(result->next == NULL);
        klee_assert(result->lets == NULL);
        klee_assert(result->patnext == NULL);
    }
    
    // Cleanup
    if (result != NULL) xmlFree(result);
    if (schema != NULL) xmlFree(schema);
    if (pat != NULL) xmlFree(pat);
    if (node != NULL) xmlFree(node);
    if (ctxt->dict != NULL) xmlDictFree(ctxt->dict);
    if (ctxt != NULL) xmlFree(ctxt);
    
    return 0;
}