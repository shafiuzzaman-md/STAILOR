#include <klee/klee.h>
#include "debugXML.h"

int main() {
    xmlShellCtxt ctxt;
    xmlDoc doc;
    char dtd[256];
    
    klee_make_symbolic(&ctxt, sizeof(ctxt), "ctxt");
    klee_make_symbolic(&doc, sizeof(doc), "doc");
    klee_make_symbolic(dtd, sizeof(dtd), "dtd");
    
    ctxt.doc = &doc;
    
    xmlShellValidate(&ctxt, dtd, NULL, NULL);
    
    return 0;
}