#include <klee/klee.h>
#include "tree.h"
#include "parser.h"
#include "dict.h"

int main() {
    xmlDocPtr sourceDoc;
    xmlDocPtr destDoc;
    xmlNodePtr node;
    xmlNodePtr resNode;
    xmlDOMWrapCtxtPtr ctxt;

    klee_make_symbolic(&sourceDoc, sizeof(sourceDoc), "sourceDoc");
    klee_make_symbolic(&destDoc, sizeof(destDoc), "destDoc");
    klee_make_symbolic(&node, sizeof(node), "node");
    klee_make_symbolic(&resNode, sizeof(resNode), "resNode");
    klee_make_symbolic(&ctxt, sizeof(ctxt), "ctxt");

    int result = xmlDOMWrapCloneNode(ctxt, sourceDoc, node, destDoc, &resNode, 1, 0);
    
    return 0;
}