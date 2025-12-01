#include <klee/klee.h>
#include "pattern.c"

int main() {
    xmlStreamCompPtr stream_comp = (xmlStreamCompPtr) klee_make_symbolic(sizeof(xmlStreamComp), 0, "stream_comp");
    klee_assume(stream_comp != NULL);
    
    xmlStreamCtxtPtr ctxt = xmlNewStreamCtxt(stream_comp);
    
    if (ctxt != NULL) {
        klee_assert(ctxt->states != NULL);
    }
    
    return 0;
}