#include <libxml/xmlschemas.h>
#include <libxml/xmlmemory.h>
#include <libxml/parser.h>
#include <libxml/tree.h>
#include <string.h>
#include <klee/klee.h>

int main(void) {
    xmlSchemaParserCtxtPtr pctxt;
    const xmlChar *name;
    const xmlChar *nsName;
    xmlNodePtr node;
    xmlSchemaAttributeGroupPtr ret;

    pctxt = xmlSchemaNewParserCtxt("test.xsd");
    if (pctxt == NULL) {
        return 0;
    }

    klee_make_symbolic(&name, sizeof(name), "name");
    klee_make_symbolic(&nsName, sizeof(nsName), "nsName");
    klee_make_symbolic(&node, sizeof(node), "node");

    ret = (xmlSchemaAttributeGroupPtr) xmlMalloc(sizeof(xmlSchemaAttributeGroup));
    if (ret == NULL) {
        xmlSchemaFreeParserCtxt(pctxt);
        return 0;
    }

    klee_assert(0 && "SAILR_REACH_ASSERT");
    memset(ret, 0, sizeof(xmlSchemaAttributeGroup));

    xmlFree(ret);
    xmlSchemaFreeParserCtxt(pctxt);
    return 0;
}