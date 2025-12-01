#include <klee/klee.h>
#include "HTMLparser.h"
#include "HTMLtree.h"
#include "entities.h"
#include "parser.h"
#include "parserInternals.h"

int main() {
    htmlParserCtxtPtr ctxt;
    
    klee_make_symbolic(&ctxt, sizeof(ctxt), "ctxt");
    
    htmlNewInputStream(ctxt);
    
    return 0;
}