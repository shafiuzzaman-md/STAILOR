#include <klee/klee.h>
#include "schematron.c"

int main() {
    xmlSchematronParserCtxtPtr ctxt;
    xmlSchematronPtr schema;
    xmlSchematronPatternPtr pat;
    xmlNodePtr node;
    xmlChar context[256];
    xmlChar report[256];

    klee_make_symbolic(&ctxt, sizeof(ctxt), "ctxt");
    klee_make_symbolic(&schema, sizeof(schema), "schema");
    klee_make_symbolic(&pat, sizeof(pat), "pat");
    klee_make_symbolic(&node, sizeof(node), "node");
    klee_make_symbolic(context, sizeof(context), "context");
    klee_make_symbolic(report, sizeof(report), "report");

    xmlSchematronAddRule(ctxt, schema, pat, node, context, report);
    
    return 0;
}