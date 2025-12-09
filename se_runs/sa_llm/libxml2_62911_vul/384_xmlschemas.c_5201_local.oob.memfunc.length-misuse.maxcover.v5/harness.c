#include <libxml/xmlschemas.h>
#include <libxml/xmlschemastypes.h>
#include <libxml/xmlmemory.h>
#include <string.h>
#include <klee/klee.h>

int main(void) {
    xmlSchemaParserCtxtPtr pctxt = xmlSchemaNewParserCtxt("test.xsd");
    if (pctxt == NULL) {
        return 0;
    }

    xmlSchemaRedefPtr ret = (xmlSchemaRedefPtr) xmlMalloc(sizeof(xmlSchemaRedef));
    if (ret == NULL) {
        xmlSchemaFreeParserCtxt(pctxt);
        return 0;
    }

    klee_assert(0 && "SAILR_REACH_ASSERT");
    memset(ret, 0, sizeof(xmlSchemaRedef));

    xmlSchemaFreeParserCtxt(pctxt);
    xmlFree(ret);
    return 0;
}