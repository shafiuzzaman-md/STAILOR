#include "klee/klee.h"
#include <libxml/relaxng.h>
#include <libxml/xmlmemory.h>
#include <string.h>

int main(void) {
    xmlRelaxNGValidState *state;
    xmlRelaxNGValidState *ret;

    state = (xmlRelaxNGValidState *)xmlMalloc(sizeof(xmlRelaxNGValidState));
    if (state == NULL) {
        return 0;
    }
    memset(state, 0, sizeof(xmlRelaxNGValidState));

    klee_make_symbolic(&state->maxAttrs, sizeof(state->maxAttrs), "maxAttrs");
    klee_make_symbolic(&state->nbAttrs, sizeof(state->nbAttrs), "nbAttrs");

    if (state->nbAttrs > 0) {
        state->attrs = (xmlAttrPtr *)xmlMalloc(state->maxAttrs * sizeof(xmlAttrPtr));
        if (state->attrs == NULL) {
            xmlFree(state);
            return 0;
        }
        klee_make_symbolic(state->attrs, state->maxAttrs * sizeof(xmlAttrPtr), "attrs");
    } else {
        state->attrs = NULL;
    }

    ret = (xmlRelaxNGValidState *)xmlMalloc(sizeof(xmlRelaxNGValidState));
    if (ret == NULL) {
        if (state->attrs != NULL) {
            xmlFree(state->attrs);
        }
        xmlFree(state);
        return 0;
    }
    memset(ret, 0, sizeof(xmlRelaxNGValidState));

    xmlAttrPtr *attrs = ret->attrs;
    int maxAttrs = ret->maxAttrs;

    klee_assert(0 && "SAILR_REACH_ASSERT");
    memcpy(ret, state, sizeof(xmlRelaxNGValidState));

    ret->attrs = attrs;
    ret->maxAttrs = maxAttrs;

    if (state->nbAttrs > 0) {
        if (ret->attrs == NULL) {
            ret->maxAttrs = state->maxAttrs;
            ret->attrs = (xmlAttrPtr *) xmlMalloc(ret->maxAttrs * sizeof(xmlAttrPtr));
        }
    }

    if (state->attrs != NULL) {
        xmlFree(state->attrs);
    }
    xmlFree(state);
    if (ret->attrs != NULL) {
        xmlFree(ret->attrs);
    }
    xmlFree(ret);

    return 0;
}