#include <libxml/parser.h>
#include <libxml/tree.h>
#include <klee/klee.h>

int main(void) {
    xmlParserCtxtPtr ctxt;
    xmlNodePtr ret;
    int freeElemsNr;
    int dictNames;
    char *str;
    int len;

    ctxt = xmlCreateParserCtxt();
    if (ctxt == NULL) {
        return 0;
    }

    klee_make_symbolic(&freeElemsNr, sizeof(freeElemsNr), "freeElemsNr");
    klee_make_symbolic(&dictNames, sizeof(dictNames), "dictNames");
    klee_make_symbolic(&len, sizeof(len), "len");

    if (freeElemsNr > 0) {
        ctxt->freeElemsNr = freeElemsNr;
        ret = (xmlNodePtr) ctxt->freeElems;
        ctxt->freeElems = ctxt->freeElems->next;
        ctxt->freeElemsNr--;
    } else {
        ret = (xmlNodePtr) xmlMalloc(sizeof(xmlNode));
    }

    if (ret == NULL) {
        xmlErrMemory(ctxt, "xmlSAX2Characters");
        xmlFreeParserCtxt(ctxt);
        return 0;
    }

    klee_assert(0 && "SAILR_REACH_ASSERT");
    memset(ret, 0, sizeof(xmlNode));

    if (ctxt->dictNames) {
        xmlChar cur;
        str = (char *)xmlMalloc(len + 1);
        if (str) {
            klee_make_symbolic(str, len + 1, "str");
            str[len] = '\0';
            cur = str[len];
        }
    }

    xmlFreeParserCtxt(ctxt);
    if (ret) {
        xmlFree(ret);
    }
    return 0;
}