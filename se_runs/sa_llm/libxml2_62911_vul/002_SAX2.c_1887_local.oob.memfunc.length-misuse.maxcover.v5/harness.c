#include <libxml/parser.h>
#include <libxml/tree.h>
#include <string.h>
#include <klee/klee.h>

int main(void) {
    xmlParserCtxtPtr ctxt;
    xmlAttrPtr ret;
    const xmlChar *localname;
    xmlNsPtr namespace;

    ctxt = xmlCreateParserCtxt();
    if (ctxt == NULL) {
        return 0;
    }

    klee_make_symbolic(&localname, sizeof(localname), "localname");
    klee_make_symbolic(&namespace, sizeof(namespace), "namespace");

    ctxt->freeAttrs = (xmlAttrPtr) malloc(sizeof(xmlAttr));
    if (ctxt->freeAttrs == NULL) {
        xmlFreeParserCtxt(ctxt);
        return 0;
    }
    ctxt->freeAttrs->next = NULL;
    ctxt->freeAttrsNr = 1;

    ctxt->node = (xmlNodePtr) malloc(sizeof(xmlNode));
    ctxt->myDoc = xmlNewDoc((const xmlChar *)"1.0");
    ctxt->dictNames = 0;

    ret = ctxt->freeAttrs;
    ctxt->freeAttrs = ret->next;
    ctxt->freeAttrsNr--;
    klee_assert(0 && "SAILR_REACH_ASSERT");
    memset(ret, 0, sizeof(xmlAttr));

    ret->type = XML_ATTRIBUTE_NODE;
    ret->parent = ctxt->node;
    ret->doc = ctxt->myDoc;
    ret->ns = namespace;
    if (ctxt->dictNames)
        ret->name = localname;

    free(ctxt->freeAttrs);
    free(ctxt->node);
    xmlFreeDoc(ctxt->myDoc);
    xmlFreeParserCtxt(ctxt);
    return 0;
}