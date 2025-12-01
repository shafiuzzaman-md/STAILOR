#include <klee/klee.h>
#include "schematron.c"

int main() {
    xmlSchematronParserCtxtPtr ctxt;
    xmlSchematronTestType type;
    xmlSchematronRulePtr rule;
    xmlNodePtr node;
    xmlChar *test;
    xmlChar *report;

    klee_make_symbolic(&ctxt, sizeof(ctxt), "ctxt");
    klee_make_symbolic(&type, sizeof(type), "type");
    klee_make_symbolic(&rule, sizeof(rule), "rule");
    klee_make_symbolic(&node, sizeof(node), "node");

    test = (xmlChar *)malloc(256);
    report = (xmlChar *)malloc(256);
    klee_make_symbolic(test, 256, "test");
    klee_make_symbolic(report, 256, "report");

    xmlSchematronAddTest(ctxt, type, rule, node, test, report);

    free(test);
    free(report);
    return 0;
}