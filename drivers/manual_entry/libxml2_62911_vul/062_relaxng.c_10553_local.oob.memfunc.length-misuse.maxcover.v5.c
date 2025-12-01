#include <klee/klee.h>
#include "relaxng.h"
#include "tree.h"
#include "valid.h"

int main() {
    xmlRelaxNGValidCtxtPtr ctxt;
    xmlDocPtr doc;
    
    klee_make_symbolic(&ctxt, sizeof(ctxt), "ctxt");
    klee_make_symbolic(&doc, sizeof(doc), "doc");
    
    xmlRelaxNGValidateDocument(ctxt, doc);
    
    return 0;
}