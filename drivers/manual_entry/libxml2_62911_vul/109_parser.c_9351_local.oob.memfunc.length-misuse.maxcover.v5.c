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

    xmlAttrHashInsert(ctxt, aindex, &size, name, uri, hashValue);

    return 0;
}