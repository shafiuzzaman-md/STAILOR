#include <klee/klee.h>
#include "schematron.h"
#include "parser.h"

int main() {
    xmlSchematronParserCtxtPtr ctxt;
    xmlSchematronPtr schema;
    xmlNodePtr node;
    xmlChar* name;

    ctxt = (xmlSchematronParserCtxtPtr)xmlMalloc(sizeof(xmlSchematronParserCtxt));
    if (ctxt != NULL) {
        klee_make_symbolic(ctxt, sizeof(xmlSchematronParserCtxt), "ctxt");
    }

    schema = (xmlSchematronPtr)xmlMalloc(sizeof(xmlSchematron));
    if (schema != NULL) {
        klee_make_symbolic(schema, sizeof(xmlSchematron), "schema");
    }

    node = (xmlNodePtr)xmlMalloc(sizeof(xmlNode));
    if (node != NULL) {
        klee_make_symbolic(node, sizeof(xmlNode), "node");
    }

    name = (xmlChar*)xmlMalloc(16);
    if (name != NULL) {
        klee_make_symbolic(name, 16, "name");
        name[15] = 0;
    }

    xmlSchematronAddPattern(ctxt, schema, node, name);

    if (ctxt != NULL) xmlFree(ctxt);
    if (schema != NULL) xmlFree(schema);
    if (node != NULL) xmlFree(node);
    if (name != NULL) xmlFree(name);

    return 0;
}