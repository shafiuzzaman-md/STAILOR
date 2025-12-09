#include "klee/klee.h"
#include <libxml/HTMLparser.h>
#include <libxml/parser.h>
#include <libxml/parserInternals.h>

int main(void) {
    htmlParserCtxtPtr ctxt;
    const htmlSAXHandler *sax;
    void *userData;

    ctxt = (htmlParserCtxtPtr) malloc(sizeof(htmlParserCtxt));
    if (ctxt == NULL) {
        return 0;
    }

    klee_make_symbolic(&sax, sizeof(sax), "sax");
    klee_make_symbolic(&userData, sizeof(userData), "userData");

    int result = htmlInitParserCtxt(ctxt, sax, userData);

    klee_assert(0 && "SAILR_REACH_ASSERT");

    if (ctxt->dict != NULL) {
        xmlDictFree(ctxt->dict);
    }
    free(ctxt);

    return 0;
}