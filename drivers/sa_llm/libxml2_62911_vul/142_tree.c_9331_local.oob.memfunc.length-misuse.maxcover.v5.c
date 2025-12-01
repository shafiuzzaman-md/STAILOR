#include <klee/klee.h>
#include "tree.h"
#include "parser.h"

int main() {
    xmlDocPtr sourceDoc = (xmlDocPtr)xmlMalloc(sizeof(xmlDoc));
    xmlDocPtr destDoc = (xmlDocPtr)xmlMalloc(sizeof(xmlDoc));
    xmlNodePtr node = (xmlNodePtr)xmlMalloc(sizeof(xmlNode));
    xmlNodePtr resNode = NULL;
    xmlDOMWrapCtxtPtr ctxt = NULL;

    klee_make_symbolic(sourceDoc, sizeof(xmlDoc), "sourceDoc");
    klee_make_symbolic(destDoc, sizeof(xmlDoc), "destDoc");
    klee_make_symbolic(node, sizeof(xmlNode), "node");

    if (sourceDoc) {
        sourceDoc->dict = xmlDictCreate();
    }
    if (destDoc) {
        destDoc->dict = xmlDictCreate();
    }
    if (node) {
        node->type = XML_ELEMENT_NODE;
        node->doc = sourceDoc;
        node->name = NULL;
        node->parent = NULL;
        node->children = NULL;
        node->last = NULL;
        node->next = NULL;
        node->prev = NULL;
        node->properties = NULL;
        node->ns = NULL;
        node->content = NULL;
        node->properties = NULL;
    }

    int result = xmlDOMWrapCloneNode(ctxt, sourceDoc, node, destDoc, &resNode, 0, 0);

    klee_assert(result != -1);

    if (sourceDoc && sourceDoc->dict) xmlDictFree(sourceDoc->dict);
    if (destDoc && destDoc->dict) xmlDictFree(destDoc->dict);
    if (sourceDoc) xmlFree(sourceDoc);
    if (destDoc) xmlFree(destDoc);
    if (node) xmlFree(node);

    return 0;
}