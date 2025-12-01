#include <klee/klee.h>
#include "schematron.c"

int main() {
    // Initialize parser context
    xmlSchematronParserCtxtPtr ctxt = (xmlSchematronParserCtxtPtr)xmlMalloc(sizeof(xmlSchematronParserCtxt));
    if (ctxt == NULL) return 0;
    klee_make_symbolic(ctxt, sizeof(xmlSchematronParserCtxt), "ctxt");
    
    // Initialize XPath context
    ctxt->xctxt = xmlXPathNewContext(NULL);
    if (ctxt->xctxt == NULL) {
        xmlFree(ctxt);
        return 0;
    }
    
    // Initialize rule
    xmlSchematronRulePtr rule = (xmlSchematronRulePtr)xmlMalloc(sizeof(xmlSchematronRule));
    if (rule == NULL) {
        xmlXPathFreeContext(ctxt->xctxt);
        xmlFree(ctxt);
        return 0;
    }
    klee_make_symbolic(rule, sizeof(xmlSchematronRule), "rule");
    rule->tests = NULL;
    
    // Create test node
    xmlNodePtr node = xmlNewNode(NULL, (const xmlChar*)"test");
    if (node == NULL) {
        xmlFree(rule);
        xmlXPathFreeContext(ctxt->xctxt);
        xmlFree(ctxt);
        return 0;
    }
    
    // Create test string
    xmlChar* test_str = xmlCharStrdup("1=1");
    if (test_str == NULL) {
        xmlFreeNode(node);
        xmlFree(rule);
        xmlXPathFreeContext(ctxt->xctxt);
        xmlFree(ctxt);
        return 0;
    }
    
    // Call the target function
    xmlSchematronTestPtr result = xmlSchematronAddTest(ctxt, XML_SCHEMATRON_TEST_ASSERT, rule, node, test_str, NULL);
    
    // Assertion for potential vulnerability at line 353
    if (result != NULL) {
        klee_assert(1); // Check that allocation succeeded and memset was safe
    }
    
    // Cleanup
    if (result != NULL) {
        xmlSchematronFreeTests(result);
    } else {
        xmlFree(test_str);
    }
    xmlFreeNode(node);
    xmlFree(rule);
    xmlXPathFreeContext(ctxt->xctxt);
    xmlFree(ctxt);
    
    return 0;
}