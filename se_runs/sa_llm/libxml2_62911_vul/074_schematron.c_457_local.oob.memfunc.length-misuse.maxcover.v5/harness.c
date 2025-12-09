#include <libxml/xmlmemory.h>
#include <libxml/parser.h>
#include <libxml/schematron.h>
#include <string.h>
#include "klee/klee.h"

int main(void) {
    xmlSchematronParserCtxtPtr ctxt;
    xmlSchematronPtr schema;
    xmlNodePtr node;
    xmlChar *context, *pattern, *report;
    xmlSchematronRulePtr rule;

    ctxt = xmlSchematronNewParserCtxt("test.sch");
    if (ctxt == NULL) {
        return 0;
    }

    schema = xmlSchematronNewDocParserCtxt(ctxt, NULL);
    if (schema == NULL) {
        xmlSchematronFreeParserCtxt(ctxt);
        return 0;
    }

    klee_make_symbolic(&node, sizeof(node), "node");
    klee_make_symbolic(&context, sizeof(context), "context");
    klee_make_symbolic(&pattern, sizeof(pattern), "pattern");
    klee_make_symbolic(&report, sizeof(report), "report");

    klee_assume(node != NULL);
    klee_assume(context != NULL);
    klee_assume(pattern != NULL);
    klee_assume(report != NULL);

    rule = xmlSchematronParseRule(ctxt, schema, node, context, pattern, report);
    if (rule != NULL) {
        klee_assert(0 && "SAILR_REACH_ASSERT");
    }

    xmlSchematronFree(schema);
    xmlSchematronFreeParserCtxt(ctxt);
    return 0;
}