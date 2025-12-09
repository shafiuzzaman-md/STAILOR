#include "klee/klee.h"
#include <libxml/nanohttp.h>
#include <string.h>
#include <stdlib.h>

int main(void) {
    xmlNanoHTTPCtxtPtr ctxt = xmlNanoHTTPNewCtxt();
    if (ctxt == NULL) return 0;

    ctxt->inlen = 65000;
    ctxt->in = (char*)malloc(ctxt->inlen);
    if (ctxt->in == NULL) {
        xmlNanoHTTPFreeCtxt(ctxt);
        return 0;
    }

    klee_make_symbolic(ctxt->in, ctxt->inlen, "in_buffer");

    int XML_NANO_HTTP_CHUNK = 4096;
    int max_offset = ctxt->inlen - XML_NANO_HTTP_CHUNK;

    int symbolic_inrptr_offset;
    klee_make_symbolic(&symbolic_inrptr_offset, sizeof(symbolic_inrptr_offset), "inrptr_offset");
    klee_assume(symbolic_inrptr_offset >= 0);
    klee_assume(symbolic_inrptr_offset <= max_offset);
    ctxt->inrptr = ctxt->in + symbolic_inrptr_offset;

    int symbolic_inptr_offset;
    klee_make_symbolic(&symbolic_inptr_offset, sizeof(symbolic_inptr_offset), "inptr_offset");
    klee_assume(symbolic_inptr_offset >= symbolic_inrptr_offset);
    klee_assume(symbolic_inptr_offset <= ctxt->inlen);
    ctxt->inptr = ctxt->in + symbolic_inptr_offset;

    ctxt->content = ctxt->inrptr;

    if (ctxt->inrptr > ctxt->in + XML_NANO_HTTP_CHUNK) {
        int delta = ctxt->inrptr - ctxt->in;
        int len = ctxt->inptr - ctxt->inrptr;

        klee_assert(0 && "SAILR_REACH_ASSERT");
        memmove(ctxt->in, ctxt->inrptr, len);
        ctxt->inrptr -= delta;
        ctxt->content -= delta;
        ctxt->inptr -= delta;
    }

    free(ctxt->in);
    xmlNanoHTTPFreeCtxt(ctxt);
    return 0;
}