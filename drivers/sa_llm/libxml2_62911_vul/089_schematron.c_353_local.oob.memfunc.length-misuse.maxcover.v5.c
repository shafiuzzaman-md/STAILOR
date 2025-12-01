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
        xmlSchematronTestPtr ret = (xmlSchematronTestPtr) xmlMalloc(sizeof(xmlSchematronTest));
        if (ret != NULL) {
            klee_assert(ret != NULL);
            memset(ret, 0, sizeof(xmlSchematronTest));
        }
    }

    return 0;
}