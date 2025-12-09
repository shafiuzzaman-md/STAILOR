#include "klee/klee.h"
#include <libxml/xmlmemory.h>
#include <libxml/nanohttp.h>
#include <string.h>

int main(void) {
    char url[256];
    klee_make_symbolic(url, sizeof(url), "url");
    url[255] = '\0';

    xmlNanoHTTPCtxtPtr ctxt = xmlNanoHTTPNewCtxt(url);
    if (ctxt != NULL) {
        klee_assert(0 && "SAILR_REACH_ASSERT");
        xmlNanoHTTPFreeCtxt(ctxt);
    }
    return 0;
}