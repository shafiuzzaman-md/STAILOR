#include <klee/klee.h>
#include "schematron.c"

int main() {
    xmlSchematronParserCtxtPtr ctxt;
    xmlSchematronRulePtr rule;
    xmlNodePtr node;
    xmlChar *test;
    xmlSchematronTestType type = XML_SCHEMATRON_TEST_ASSERT;
    xmlChar *report = NULL;

    klee_make_symbolic(&ctxt, sizeof(ctxt), "ctxt");
    klee_make_symbolic(&rule, sizeof(rule), "rule");
    klee_make_symbolic(&node, sizeof(node), "node");
    klee_make_symbolic(&test, sizeof(test), "test");

    if (ctxt != NULL && rule != NULL && node != NULL && test != NULL) {
        xmlXPathCompExprPtr comp = xmlXPathCtxtCompile(ctxt->xctxt, test);
        if (comp != NULL) {
            xmlSchematronTestPtr ret = (xmlSchematronTestPtr) xmlMalloc(sizeof(xmlSchematronTest));
            if (ret != NULL) {
                klee_assert(ret != NULL);
                memset(ret, 0, sizeof(xmlSchematronTest));
                ret->type = type;
                ret->node = node;
                ret->test = test;
                ret->comp = comp;
                ret->report = report;
                ret->next = NULL;
                if (rule->tests == NULL) {
                    rule->tests = ret;
                } else {
                    xmlSchematronTestPtr prev = rule->tests;
                    while (prev->next != NULL)
                         prev = prev->next;
                    prev->next = ret;
                }
            }
        }
    }

    return 0;
}