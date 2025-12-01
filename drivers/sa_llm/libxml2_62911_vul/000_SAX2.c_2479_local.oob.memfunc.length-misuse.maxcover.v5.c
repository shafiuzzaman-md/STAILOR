#include <klee/klee.h>
#include "SAX2.c"
#include "parserInternals.h"
#include "tree.h"

int main() {
    xmlParserCtxtPtr ctxt;
    xmlChar *ch;
    int len;
    xmlNodePtr lastChild;

    ctxt = xmlCreateMemoryParserCtxt("", 0);
    if (ctxt == NULL) return 1;

    klee_make_symbolic(&len, sizeof(len), "len");
    klee_assume(len >= 0);
    klee_assume(len < 1024);

    ch = (xmlChar *)malloc(len + 1);
    klee_make_symbolic(ch, len, "ch");
    if (len > 0) ch[len] = 0;

    ctxt->node = xmlNewNode(NULL, BAD_CAST "test");
    if (ctxt->node == NULL) return 1;

    lastChild = xmlNewTextLen(ch, len);
    if (lastChild == NULL) return 1;

    ctxt->node->children = lastChild;
    ctxt->node->last = lastChild;
    lastChild->parent = ctxt->node;
    lastChild->doc = ctxt->myDoc;
    ctxt->nodelen = len;
    ctxt->nodemem = len + 1;

    lastChild->type = XML_TEXT_NODE;
    lastChild->name = xmlStringText;

    if (lastChild->content == (xmlChar *)&(lastChild->properties)) {
        lastChild->content = xmlStrdup(lastChild->content);
        lastChild->properties = NULL;
    }

    if (ctxt->nodelen + len >= ctxt->nodemem) {
        int size = ctxt->nodemem > INT_MAX - len ? INT_MAX : ctxt->nodemem + len;
        size = size > INT_MAX / 2 ? INT_MAX : size * 2;
        xmlChar *newbuf = (xmlChar *)xmlRealloc(lastChild->content, size);
        if (newbuf != NULL) {
            ctxt->nodemem = size;
            lastChild->content = newbuf;
        }
    }

    klee_assert(ctxt->nodelen + len < ctxt->nodemem);
    memcpy(&lastChild->content[ctxt->nodelen], ch, len);

    xmlFreeParserCtxt(ctxt);
    free(ch);
    return 0;
}