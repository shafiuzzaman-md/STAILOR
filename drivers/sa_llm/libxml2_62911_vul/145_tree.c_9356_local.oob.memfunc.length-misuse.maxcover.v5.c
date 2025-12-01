#include <klee/klee.h>
#include "tree.h"
#include "parser.h"

int main() {
    xmlDocPtr sourceDoc;
    xmlDocPtr destDoc;
    xmlNodePtr node;
    xmlNodePtr destParent;
    xmlDOMWrapCtxtPtr ctxt;
    xmlNodePtr resNode;
    int options;

    klee_make_symbolic(&sourceDoc, sizeof(sourceDoc), "sourceDoc");
    klee_make_symbolic(&destDoc, sizeof(destDoc), "destDoc");
    klee_make_symbolic(&node, sizeof(node), "node");
    klee_make_symbolic(&destParent, sizeof(destParent), "destParent");
    klee_make_symbolic(&ctxt, sizeof(ctxt), "ctxt");
    klee_make_symbolic(&resNode, sizeof(resNode), "resNode");
    klee_make_symbolic(&options, sizeof(options), "options");

    int result = xmlDOMWrapCloneNode(ctxt, sourceDoc, node, destDoc, destParent, &resNode, options);

    return 0;
}