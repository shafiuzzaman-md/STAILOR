#include <klee/klee.h>
#include "nanohttp.c"

int main() {
    const char* URL;
    klee_make_symbolic(&URL, sizeof(URL), "URL");
    
    xmlNanoHTTPCtxtPtr ctxt = xmlNanoHTTPNewCtxt(URL);
    
    if (ctxt != NULL) {
        klee_assert(ctxt->fd != INVALID_SOCKET || ctxt->ContentLength >= -1);
        xmlNanoHTTPFreeCtxt(ctxt);
    }
    
    return 0;
}