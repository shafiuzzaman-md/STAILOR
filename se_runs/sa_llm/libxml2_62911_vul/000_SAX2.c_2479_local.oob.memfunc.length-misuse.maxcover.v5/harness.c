#include <libxml/parser.h>
#include <libxml/tree.h>
#include <klee/klee.h>

int main(void) {
    xmlParserCtxtPtr ctxt;
    xmlDocPtr doc;
    xmlNodePtr node, lastChild;
    xmlChar *ch;
    int len, nodelen, nodemem, size;
    int coalesceText;

    ctxt = xmlCreatePushParserCtxt(NULL, NULL, NULL, 0, NULL);
    if (ctxt == NULL) return 1;

    doc = xmlNewDoc(BAD_CAST "1.0");
    if (doc == NULL) {
        xmlFreeParserCtxt(ctxt);
        return 1;
    }
    node = xmlNewNode(NULL, BAD_CAST "root");
    if (node == NULL) {
        xmlFreeDoc(doc);
        xmlFreeParserCtxt(ctxt);
        return 1;
    }
    xmlDocSetRootElement(doc, node);
    ctxt->myDoc = doc;
    ctxt->node = node;

    lastChild = xmlNewText(BAD_CAST "");
    if (lastChild == NULL) {
        xmlFreeDoc(doc);
        xmlFreeParserCtxt(ctxt);
        return 1;
    }
    xmlAddChild(node, lastChild);
    ctxt->nodelen = 0;
    ctxt->nodemem = 0;
    lastChild->content = (xmlChar *)xmlMalloc(1);
    if (lastChild->content == NULL) {
        xmlFreeDoc(doc);
        xmlFreeParserCtxt(ctxt);
        return 1;
    }
    lastChild->content[0] = 0;

    klee_make_symbolic(&len, sizeof(len), "len");
    klee_assume(len >= 0);
    klee_make_symbolic(&nodelen, sizeof(nodelen), "nodelen");
    klee_assume(nodelen >= 0);
    klee_make_symbolic(&nodemem, sizeof(nodemem), "nodemem");
    klee_assume(nodemem >= 0);
    klee_make_symbolic(&size, sizeof(size), "size");
    klee_assume(size >= 0);
    klee_make_symbolic(&coalesceText, sizeof(coalesceText), "coalesceText");

    ctxt->nodelen = nodelen;
    ctxt->nodemem = nodemem;

    ch = (xmlChar *)xmlMalloc(len + 1);
    if (ch == NULL) {
        xmlFreeDoc(doc);
        xmlFreeParserCtxt(ctxt);
        return 1;
    }
    klee_make_symbolic(ch, len + 1, "ch");
    ch[len] = 0;

    if (ctxt->nodemem - ctxt->nodelen < len) {
        if (size < ctxt->nodelen + len + 1) {
            size = ctxt->nodelen + len + 1;
        }
        xmlChar *newbuf = (xmlChar *)xmlRealloc(lastChild->content, size);
        if (newbuf == NULL) {
            xmlFree(ch);
            xmlFreeDoc(doc);
            xmlFreeParserCtxt(ctxt);
            return 1;
        }
        ctxt->nodemem = size;
        lastChild->content = newbuf;
    }

    klee_assert(0 && "SAILR_REACH_ASSERT");
    memcpy(&lastChild->content[ctxt->nodelen], ch, len);
    ctxt->nodelen += len;
    lastChild->content[ctxt->nodelen] = 0;

    xmlFree(ch);
    xmlFreeDoc(doc);
    xmlFreeParserCtxt(ctxt);
    return 0;
}