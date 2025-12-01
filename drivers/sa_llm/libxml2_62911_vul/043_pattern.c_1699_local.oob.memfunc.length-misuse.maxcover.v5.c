#include <klee/klee.h>
#include "pattern.c"

int main() {
    xmlStreamCompPtr stream_comp = (xmlStreamCompPtr) xmlMalloc(sizeof(xmlStreamComp));
    if (stream_comp == NULL) return 0;
    
    klee_make_symbolic(stream_comp, sizeof(xmlStreamComp), "stream_comp");
    
    xmlStreamCtxtPtr ctxt = xmlNewStreamCtxt(stream_comp);
    
    if (ctxt != NULL) {
        klee_assert(ctxt->states != NULL);
    }
    
    if (stream_comp != NULL) xmlFree(stream_comp);
    if (ctxt != NULL) xmlFreeStreamCtxt(ctxt);
    
    return 0;
}