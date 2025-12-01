#include <klee/klee.h>
#include "parser.h"

int main() {
    xmlParserCtxtPtr ctxt;
    int aindex;
    unsigned size;
    const xmlChar *name;
    const xmlChar *uri;
    unsigned hashValue;

    klee_make_symbolic(&ctxt, sizeof(ctxt), "ctxt");
    klee_make_symbolic(&aindex, sizeof(aindex), "aindex");
    klee_make_symbolic(&size, sizeof(size), "size");
    klee_make_symbolic(&name, sizeof(name), "name");
    klee_make_symbolic(&uri, sizeof(uri), "uri");
    klee_make_symbolic(&hashValue, sizeof(hashValue), "hashValue");

    if (ctxt != NULL) {
        klee_make_symbolic(&ctxt->attrHash, sizeof(ctxt->attrHash), "attrHash");
        klee_make_symbolic(&ctxt->attrHashMax, sizeof(ctxt->attrHashMax), "attrHashMax");
        klee_make_symbolic(&ctxt->atts, sizeof(ctxt->atts), "atts");
        klee_make_symbolic(&ctxt->str_xml, sizeof(ctxt->str_xml), "str_xml");
        klee_make_symbolic(&ctxt->nsTab, sizeof(ctxt->nsTab), "nsTab");
    }

    xmlAttrHashInsert(ctxt, aindex, &size, name, uri, hashValue);

    return 0;
}