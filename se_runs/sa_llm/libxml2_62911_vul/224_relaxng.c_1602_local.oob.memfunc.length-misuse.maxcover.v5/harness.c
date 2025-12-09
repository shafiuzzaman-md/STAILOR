#include "klee/klee.h"
#include <libxml/relaxng.h>
#include <libxml/xmlmemory.h>
#include <libxml/parser.h>
#include <string.h>

int main(void) {
    xmlRelaxNGParserCtxtPtr ctxt;
    xmlDocPtr doc;
    const char *URL;
    size_t URL_len;

    ctxt = xmlRelaxNGNewParserCtxt("test.rng");
    if (ctxt == NULL) {
        return 0;
    }

    doc = xmlNewDoc(BAD_CAST "1.0");
    if (doc == NULL) {
        xmlRelaxNGFreeParserCtxt(ctxt);
        return 0;
    }

    URL_len = 10;
    URL = (const char *)malloc(URL_len + 1);
    if (URL == NULL) {
        xmlFreeDoc(doc);
        xmlRelaxNGFreeParserCtxt(ctxt);
        return 0;
    }
    klee_make_symbolic((void *)URL, URL_len + 1, "URL");
    ((char *)URL)[URL_len] = '\0';

    xmlRelaxNGIncludePtr ret = (xmlRelaxNGIncludePtr) xmlMalloc(sizeof(xmlRelaxNGInclude));
    if (ret == NULL) {
        xmlRngPErrMemory(ctxt, "allocating include\n");
        xmlFreeDoc(doc);
        free((void *)URL);
        xmlRelaxNGFreeParserCtxt(ctxt);
        return 0;
    }

    klee_assert(0 && "SAILR_REACH_ASSERT");
    memset(ret, 0, sizeof(xmlRelaxNGInclude));
    ret->doc = doc;
    ret->href = xmlStrdup(URL);
    ret->next = ctxt->includes;
    ctxt->includes = ret;

    free((void *)URL);
    xmlFreeDoc(doc);
    xmlRelaxNGFreeParserCtxt(ctxt);
    return 0;
}