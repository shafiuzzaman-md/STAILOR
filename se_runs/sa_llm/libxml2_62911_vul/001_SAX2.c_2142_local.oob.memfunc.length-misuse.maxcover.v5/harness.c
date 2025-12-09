#include <libxml/parser.h>
#include <libxml/tree.h>
#include <string.h>
#include <klee/klee.h>

int main(void) {
    xmlParserCtxtPtr ctxt;
    xmlNodePtr ret;
    const xmlChar *localname;
    int lname;
    xmlDictPtr dict;

    ctxt = xmlCreateParserCtxt();
    if (ctxt == NULL) {
        return 1;
    }

    ctxt->myDoc = xmlNewDoc(BAD_CAST "1.0");
    if (ctxt->myDoc == NULL) {
        xmlFreeParserCtxt(ctxt);
        return 1;
    }

    dict = xmlDictCreate();
    if (dict == NULL) {
        xmlFreeDoc(ctxt->myDoc);
        xmlFreeParserCtxt(ctxt);
        return 1;
    }
    ctxt->dict = dict;

    klee_make_symbolic(&ctxt->dictNames, sizeof(ctxt->dictNames), "dictNames");
    klee_make_symbolic(&localname, sizeof(localname), "localname");
    klee_make_symbolic(&lname, sizeof(lname), "lname");

    ctxt->freeElemsNr = 1;
    ctxt->freeElems = (xmlNodePtr) malloc(sizeof(xmlNode));
    if (ctxt->freeElems == NULL) {
        xmlDictFree(dict);
        xmlFreeDoc(ctxt->myDoc);
        xmlFreeParserCtxt(ctxt);
        return 1;
    }
    ctxt->freeElems->next = NULL;

    ret = ctxt->freeElems;
    ctxt->freeElems = ret->next;
    ctxt->freeElemsNr--;

    klee_assert(0 && "SAILR_REACH_ASSERT");
    memset(ret, 0, sizeof(xmlNode));

    ret->doc = ctxt->myDoc;
    ret->type = XML_ELEMENT_NODE;

    if (ctxt->dictNames)
        ret->name = localname;
    else {
        if (lname == 0)
            ret->name = xmlStrdup(localname);
    }

    free(ret);
    xmlDictFree(dict);
    xmlFreeDoc(ctxt->myDoc);
    xmlFreeParserCtxt(ctxt);
    return 0;
}