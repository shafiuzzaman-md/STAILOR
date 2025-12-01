#include <klee/klee.h>
#include "tree.h"
#include "parser.h"

int main() {
    xmlNodePtr node;
    xmlNodePtr resNode;
    xmlDocPtr destDoc;
    xmlDocPtr sourceDoc;
    xmlDOMWrapCtxtPtr ctxt;

    klee_make_symbolic(&node, sizeof(node), "node");
    klee_make_symbolic(&resNode, sizeof(resNode), "resNode");
    klee_make_symbolic(&destDoc, sizeof(destDoc), "destDoc");
    klee_make_symbolic(&sourceDoc, sizeof(sourceDoc), "sourceDoc");
    klee_make_symbolic(&ctxt, sizeof(ctxt), "ctxt");

    xmlDOMWrapCloneNode(ctxt, sourceDoc, node, destDoc, &resNode, 0, 0);

    return 0;
}