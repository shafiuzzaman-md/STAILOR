#include <klee/klee.h>
#include "nanohttp.h"

int main() {
    xmlNanoHTTPCtxt ctxt;
    char line[1024];
    
    klee_make_symbolic(&ctxt, sizeof(ctxt), "ctxt");
    klee_make_symbolic(line, sizeof(line), "line");
    
    xmlNanoHTTPScanAnswer(&ctxt, line);
    
    return 0;
}