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
        ctxt->errNo = XML_RELAXNG_OK;
        ctxt->state = NULL;
        ctxt->states = NULL;
        ctxt->idref = klee_range(0, 2, "idref");
        ctxt->error = NULL;
        ctxt->warning = NULL;
        ctxt->userData = NULL;
    }
    
    if (schema != NULL) {
        schema->topgrammar = grammar;
    }
    
    if (grammar != NULL) {
        grammar->start = NULL;
    }
    
    xmlRelaxNGValidateDocument(ctxt, doc);
    
    return 0;
}