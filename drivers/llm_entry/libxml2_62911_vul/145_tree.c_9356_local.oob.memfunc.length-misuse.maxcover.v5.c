#include <klee/klee.h>
#include "tree.h"
#include "parser.h"

int main() {
    xmlDocPtr destDoc;
    xmlNodePtr node;
    xmlNodePtr destParent;
    xmlDocPtr sourceDoc;
    xmlDOMWrapCtxtPtr ctxt;
    int options;
    xmlNodePtr resNode;
    int result;

    klee_make_symbolic(&destDoc, sizeof(destDoc), "destDoc");
    klee_make_symbolic(&node, sizeof(node), "node");
    klee_make_symbolic(&destParent, sizeof(destParent), "destParent");
    klee_make_symbolic(&sourceDoc, sizeof(sourceDoc), "sourceDoc");
    klee_make_symbolic(&ctxt, sizeof(ctxt), "ctxt");
    klee_make_symbolic(&options, sizeof(options), "options");
    klee_make_symbolic(&resNode, sizeof(resNode), "resNode");

    result = xmlDOMWrapCloneNode(destDoc, node, destParent, &destParent, sourceDoc, ctxt, options, &resNode);
    
    return 0;
}