#include <klee/klee.h>
#include "schematron.c"
#include "schematron.h"
#include "parser.h"
#include "tree.h"
#include "dict.h"
#include "xpath.h"

int main() {
    xmlSchematronParserCtxtPtr ctxt;
    xmlSchematronPtr schema;
    xmlSchematronPatternPtr pat;
    xmlNodePtr node;
    xmlChar *context;
    xmlChar *report;

    // Initialize parser context
    ctxt = xmlSchematronNewParserCtxt(NULL);
    if (ctxt == NULL) return 1;

    // Initialize schema
    schema = xmlSchematronNew();
    if (schema == NULL) {
        xmlSchematronFreeParserCtxt(ctxt);
        return 1;
    }

    // Initialize pattern
    pat = xmlSchematronAddPattern(ctxt, schema, NULL, (xmlChar*)"test_pattern");
    if (pat == NULL) {
        xmlSchematronFree(schema);
        xmlSchematronFreeParserCtxt(ctxt);
        return 1;
    }

    // Create a dummy node
    node = xmlNewNode(NULL, (xmlChar*)"test");

    // Make symbolic inputs for context and report
    char context_buf[100];
    char report_buf[100];
    klee_make_symbolic(context_buf, sizeof(context_buf), "context_buf");
    klee_make_symbolic(report_buf, sizeof(report_buf), "report_buf");
    context = (xmlChar*)context_buf;
    report = (xmlChar*)report_buf;

    // Call the target function
    xmlSchematronAddRule(ctxt, schema, pat, node, context, report);

    // Cleanup
    if (node) xmlFreeNode(node);
    if (schema) xmlSchematronFree(schema);
    if (ctxt) xmlSchematronFreeParserCtxt(ctxt);

    return 0;
}