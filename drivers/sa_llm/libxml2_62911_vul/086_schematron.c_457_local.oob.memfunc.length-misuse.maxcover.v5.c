#include <klee/klee.h>
#include "schematron.c"

int main() {
    // Initialize parser context
    xmlSchematronParserCtxtPtr ctxt = (xmlSchematronParserCtxtPtr)xmlMalloc(sizeof(xmlSchematronParserCtxt));
    if (ctxt == NULL) return 0;
    memset(ctxt, 0, sizeof(xmlSchematronParserCtxt));
    
    // Initialize schema
    xmlSchematronPtr schema = (xmlSchematronPtr)xmlMalloc(sizeof(xmlSchematron));
    if (schema == NULL) {
        xmlFree(ctxt);
        return 0;
    }
    memset(schema, 0, sizeof(xmlSchematron));
    
    // Initialize pattern
    xmlSchematronPatternPtr pat = (xmlSchematronPatternPtr)xmlMalloc(sizeof(xmlSchematronPattern));
    if (pat == NULL) {
        xmlFree(ctxt);
        xmlFree(schema);
        return 0;
    }
    memset(pat, 0, sizeof(xmlSchematronPattern));
    
    // Initialize node
    xmlNodePtr node = (xmlNodePtr)xmlMalloc(sizeof(xmlNode));
    if (node == NULL) {
        xmlFree(ctxt);
        xmlFree(schema);
        xmlFree(pat);
        return 0;
    }
    memset(node, 0, sizeof(xmlNode));
    
    // Create symbolic context and report strings
    #define STR_SIZE 10
    xmlChar context[STR_SIZE];
    xmlChar report[STR_SIZE];
    klee_make_symbolic(context, STR_SIZE, "context");
    klee_make_symbolic(report, STR_SIZE, "report");
    context[STR_SIZE-1] = '\0';
    report[STR_SIZE-1] = '\0';
    
    // Call the target function
    xmlSchematronRulePtr result = xmlSchematronAddRule(ctxt, schema, pat, node, context, report);
    
    // Assertion for potential vulnerability at line 457
    // Check if the allocated rule structure was properly initialized
    if (result != NULL) {
        klee_assert(result->node == node);
        klee_assert(result->context == context);
        klee_assert(result->report == report);
    }
    
    // Cleanup
    if (result != NULL) xmlFree(result);
    xmlFree(node);
    xmlFree(pat);
    xmlFree(schema);
    xmlFree(ctxt);
    
    return 0;
}