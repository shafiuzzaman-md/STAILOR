#include <klee/klee.h>
#include "schematron.c"
#include "schematron.h"
#include "xmlschemas.h"
#include "xpath.h"
#include "tree.h"
#include "parser.h"

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
    
    test = (xmlChar *)klee_malloc(64);
    klee_make_symbolic(test, 64, "test");
    
    report = (xmlChar *)klee_malloc(64);
    klee_make_symbolic(report, 64, "report");

    xmlSchematronAddTest(ctxt, type, rule, node, test, report);
    
    return 0;
}