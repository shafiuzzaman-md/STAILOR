#include <libxml/xmlschemas.h>
#include <libxml/xmlschemastypes.h>
#include <libxml/xmlmemory.h>
#include <string.h>
#include <klee/klee.h>

int main(void) {
    xmlSchemaParserCtxtPtr pctxt;
    xmlSchemaAttributeUseProhibPtr ret;

    pctxt = xmlSchemaNewParserCtxt("test.xsd");
    if (pctxt == NULL) {
        return 0;
    }

    ret = (xmlSchemaAttributeUseProhibPtr)xmlMalloc(sizeof(xmlSchemaAttributeUseProhib));
    if (ret == NULL) {
        xmlSchemaFreeParserCtxt(pctxt);
        return 0;
    }

    klee_assert(0 && "SAILR_REACH_ASSERT");
    memset(ret, 0, sizeof(xmlSchemaAttributeUseProhib));
    ret->type = XML_SCHEMA_EXTRA_ATTR_USE_PROHIB;
    WXS_ADD_LOCAL(pctxt, ret);

    xmlSchemaFreeParserCtxt(pctxt);
    xmlFree(ret);
    return 0;
}