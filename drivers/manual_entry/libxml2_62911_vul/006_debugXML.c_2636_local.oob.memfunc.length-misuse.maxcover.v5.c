#include <klee/klee.h>
#include "debugXML.c"
#include "tree.h"
#include "valid.h"
#include "xmlmemory.h"
#include "parser.h"

int main() {
    xmlShellCtxtPtr ctxt;
    char *dtd;
    xmlNodePtr node1, node2;
    
    klee_make_symbolic(&ctxt, sizeof(ctxt), "ctxt");
    klee_make_symbolic(&dtd, sizeof(dtd), "dtd");
    klee_make_symbolic(&node1, sizeof(node1), "node1");
    klee_make_symbolic(&node2, sizeof(node2), "node2");
    
    xmlShellValidate(ctxt, dtd, node1, node2);
    
    return 0;
}