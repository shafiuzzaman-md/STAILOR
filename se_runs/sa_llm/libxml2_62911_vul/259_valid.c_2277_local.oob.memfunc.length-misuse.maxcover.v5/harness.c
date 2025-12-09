#include <libxml/parser.h>
#include <libxml/tree.h>
#include <libxml/valid.h>
#include <libxml/xmlerror.h>
#include <string.h>
#include "klee/klee.h"

int main(void) {
    xmlParserCtxtPtr ctxt;
    xmlElementContentPtr content;
    const xmlChar *name;
    const xmlChar *SystemID;
    const xmlChar *PublicID;
    xmlNotationPtr ret;

    ctxt = xmlCreateParserCtxt();
    if (ctxt == NULL) {
        return 0;
    }

    klee_make_symbolic(&name, sizeof(name), "name");
    klee_make_symbolic(&SystemID, sizeof(SystemID), "SystemID");
    klee_make_symbolic(&PublicID, sizeof(PublicID), "PublicID");

    ret = (xmlNotationPtr) xmlMalloc(sizeof(xmlNotation));
    if (ret == NULL) {
        xmlVErrMemory(ctxt, "malloc failed");
        xmlFreeParserCtxt(ctxt);
        return 0;
    }

    klee_assert(0 && "SAILR_REACH_ASSERT");
    memset(ret, 0, sizeof(xmlNotation));

    ret->name = xmlStrdup(name);
    if (SystemID != NULL)
        ret->SystemID = xmlStrdup(SystemID);
    if (PublicID != NULL)
        ret->PublicID = xmlStrdup(PublicID);

    xmlFree(ret);
    xmlFreeParserCtxt(ctxt);
    return 0;
}