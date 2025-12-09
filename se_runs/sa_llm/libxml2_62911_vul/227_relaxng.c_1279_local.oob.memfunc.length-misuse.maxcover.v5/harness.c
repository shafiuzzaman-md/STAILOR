#include <libxml/xmlmemory.h>
#include <libxml/relaxng.h>
#include <string.h>
#include "klee/klee.h"

int main(void) {
    xmlRelaxNGValidCtxtPtr ctxt;
    xmlRelaxNGValidStatePtr state, ret;

    ctxt = (xmlRelaxNGValidCtxtPtr)xmlMalloc(sizeof(xmlRelaxNGValidCtxt));
    if (!ctxt) return 0;
    memset(ctxt, 0, sizeof(xmlRelaxNGValidCtxt));

    state = (xmlRelaxNGValidStatePtr)xmlMalloc(sizeof(xmlRelaxNGValidState));
    if (!state) {
        xmlFree(ctxt);
        return 0;
    }
    memset(state, 0, sizeof(xmlRelaxNGValidState));

    klee_make_symbolic(&state->nbAttrs, sizeof(state->nbAttrs), "nbAttrs");
    klee_make_symbolic(&state->maxAttrs, sizeof(state->maxAttrs), "maxAttrs");
    klee_make_symbolic(&state->attrs, sizeof(state->attrs), "attrs");

    if (state->nbAttrs > 0) {
        if (state->maxAttrs < state->nbAttrs) {
            state->maxAttrs = state->nbAttrs;
        }
        state->attrs = (xmlRelaxNGAttrPtr)xmlMalloc(state->nbAttrs * sizeof(xmlRelaxNGAttr));
        if (!state->attrs) {
            xmlFree(state);
            xmlFree(ctxt);
            return 0;
        }
        klee_make_symbolic(state->attrs, state->nbAttrs * sizeof(xmlRelaxNGAttr), "attr_data");
    }

    ret = xmlRelaxNGCopyValidState(ctxt, state);
    if (ret) {
        klee_assert(0 && "SAILR_REACH_ASSERT");
        xmlFree(ret->attrs);
        xmlFree(ret);
    }

    if (state->attrs) xmlFree(state->attrs);
    xmlFree(state);
    xmlFree(ctxt);
    return 0;
}