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

    ctxt = xmlCreateParserCtxt();
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

    lastChild = xmlNewText(BAD_CAST "");
    if (lastChild == NULL) {
        xmlFreeDoc(doc);
        xmlFreeParserCtxt(ctxt);
        return 1;
    }
    xmlAddChild(node, lastChild);

    klee_make_symbolic(&len, sizeof(len), "len");
    klee_assume(len >= 0);
    klee_make_symbolic(&nodelen, sizeof(nodelen), "nodelen");
    klee_assume(nodelen >= 0);
    klee_make_symbolic(&nodemem, sizeof(nodemem), "nodemem");
    klee_assume(nodemem >= 0);
    klee_make_symbolic(&size, sizeof(size), "size");
    klee_assume(size >= 0);
    klee_make_symbolic(&coalesceText, sizeof(coalesceText), "coalesceText");

    ctxt->node = node;
    ctxt->nodelen = nodelen;
    ctxt->nodemem = nodemem;

    ch = (xmlChar *)malloc((len + 1) * sizeof(xmlChar));
    if (ch == NULL) {
        xmlFreeDoc(doc);
        xmlFreeParserCtxt(ctxt);
        return 1;
    }
    klee_make_symbolic(ch, (len + 1) * sizeof(xmlChar), "ch");
    ch[len] = 0;

    if (lastChild->type == XML_TEXT_NODE && lastChild->content != NULL &&
        ctxt->nodemem == 0 && size > 0) {
        lastChild->content = (xmlChar *)malloc(size * sizeof(xmlChar));
        if (lastChild->content == NULL) {
            free(ch);
            xmlFreeDoc(doc);
            xmlFreeParserCtxt(ctxt);
            return 1;
        }
        ctxt->nodemem = size;
    }

    if (lastChild->type == XML_TEXT_NODE && lastChild->content != NULL &&
        ctxt->nodemem > 0 && (ctxt->nodelen + len + 1) > ctxt->nodemem) {
        xmlChar *newbuf = (xmlChar *)xmlRealloc(lastChild->content, size);
        if (newbuf == NULL) {
            free(ch);
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

    free(ch);
    xmlFreeDoc(doc);
    xmlFreeParserCtxt(ctxt);
    return 0;
}