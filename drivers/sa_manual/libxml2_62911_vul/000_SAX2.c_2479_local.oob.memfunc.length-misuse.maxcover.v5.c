#include <klee/klee.h>
#include "SAX2.h"
#include "parser.h"
#include "tree.h"

int main() {
    // Initialize parser context
    xmlParserCtxtPtr ctxt = xmlCreateMemoryParserCtxt("", 0);
    if (ctxt == NULL) return 1;

    // Initialize node structure
    xmlNodePtr node = xmlNewNode(NULL, (const xmlChar*)"test");
    if (node == NULL) return 1;
    ctxt->node = node;

    // Initialize last child with text node
    xmlNodePtr lastChild = xmlNewText((const xmlChar*)"");
    if (lastChild == NULL) return 1;
    node->children = lastChild;
    node->last = lastChild;
    lastChild->parent = node;
    lastChild->doc = ctxt->myDoc;

    // Set up initial state for the vulnerable path
    ctxt->nodelen = 0;
    ctxt->nodemem = 10;  // Small initial buffer to trigger realloc
    lastChild->type = XML_TEXT_NODE;
    lastChild->name = xmlStringText;

    // Make content buffer symbolic
    char content_buf[100];
    klee_make_symbolic(content_buf, sizeof(content_buf), "content_buf");
    lastChild->content = (xmlChar*)content_buf;

    // Make input data symbolic
    char ch_buf[100];
    int len;
    klee_make_symbolic(ch_buf, sizeof(ch_buf), "ch_buf");
    klee_make_symbolic(&len, sizeof(len), "len");

    // Call the target function
    xmlSAX2Text(ctxt, (const xmlChar*)ch_buf, len, XML_TEXT_NODE);

    // Assertion for the vulnerable memcpy at line 2479
    if (lastChild != NULL && lastChild->content != NULL) {
        klee_assert(ctxt->nodelen + len <= ctxt->nodemem);
    }

    // Cleanup
    xmlFreeNode(node);
    xmlFreeParserCtxt(ctxt);
    return 0;
}