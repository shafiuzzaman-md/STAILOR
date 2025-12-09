#include <libxml/xmlschemas.h>
#include <libxml/parser.h>
#include <libxml/tree.h>
#include <string.h>
#include "klee/klee.h"

int main(void) {
    xmlSchemaParserCtxtPtr pctxt;
    xmlNodePtr node;
    xmlSchemaAttributeUsePtr ret;

    pctxt = xmlSchemaNewParserCtxt("test.xsd");
    if (pctxt == NULL) {
        return 0;
    }

    node = xmlNewNode(NULL, (const xmlChar *)"test");
    if (node == NULL) {
        xmlSchemaFreeParserCtxt(pctxt);
        return 0;
    }

    ret = (xmlSchemaAttributeUsePtr) xmlMalloc(sizeof(xmlSchemaAttributeUse));
    if (ret == NULL) {
        xmlSchemaPErrMemory(pctxt, "allocating attribute", NULL);
        xmlSchemaFreeParserCtxt(pctxt);
        xmlFreeNode(node);
        return 0;
    }

    klee_assert(0 && "SAILR_REACH_ASSERT");
    memset(ret, 0, sizeof(xmlSchemaAttributeUse));
    ret->type = XML_SCHEMA_TYPE_ATTRIBUTE_USE;
    ret->node = node;

    WXS_ADD_LOCAL(pctxt, ret);

    xmlFree(ret);
    xmlSchemaFreeParserCtxt(pctxt);
    xmlFreeNode(node);
    return 0;
}