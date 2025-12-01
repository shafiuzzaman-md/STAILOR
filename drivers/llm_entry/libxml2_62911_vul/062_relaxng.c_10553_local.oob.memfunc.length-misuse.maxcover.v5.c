#include <klee/klee.h>
#include "relaxng.h"
#include "tree.h"
#include "valid.h"

int main() {
    xmlRelaxNGValidCtxtPtr ctxt;
    xmlDocPtr doc;
    xmlRelaxNGPtr schema;
    xmlRelaxNGGrammarPtr grammar;
    
    klee_make_symbolic(&ctxt, sizeof(ctxt), "ctxt");
    klee_make_symbolic(&doc, sizeof(doc), "doc");
    klee_make_symbolic(&schema, sizeof(schema), "schema");
    klee_make_symbolic(&grammar, sizeof(grammar), "grammar");
    
    if (ctxt != NULL) {
        ctxt->schema = schema;
        if (schema != NULL) {
            schema->topgrammar = grammar;
        }
    }
    
    xmlRelaxNGValidateDocument(ctxt, doc);
    
    return 0;
}