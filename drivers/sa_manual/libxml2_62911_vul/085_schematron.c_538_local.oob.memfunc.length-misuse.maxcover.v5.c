#include <klee/klee.h>
#include "schematron.h"

int main() {
    xmlSchematronParserCtxtPtr ctxt;
    xmlSchematronPtr schema;
    xmlNodePtr node;
    xmlChar *name;
    
    klee_make_symbolic(&ctxt, sizeof(ctxt), "ctxt");
    klee_make_symbolic(&schema, sizeof(schema), "schema");
    klee_make_symbolic(&node, sizeof(node), "node");
    klee_make_symbolic(&name, sizeof(name), "name");
    
    xmlSchematronAddPattern(ctxt, schema, node, name);
    
    return 0;
}