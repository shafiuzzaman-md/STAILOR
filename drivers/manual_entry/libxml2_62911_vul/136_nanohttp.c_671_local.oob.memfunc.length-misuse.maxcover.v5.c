#include <klee/klee.h>
#include "nanohttp.h"

int main() {
    xmlNanoHTTPCtxt ctxt;
    char line_buf[1024];
    
    klee_make_symbolic(&ctxt, sizeof(ctxt), "ctxt");
    klee_make_symbolic(line_buf, sizeof(line_buf), "line_buf");
    
    xmlNanoHTTPScanAnswer(&ctxt, line_buf);
    
    return 0;
}