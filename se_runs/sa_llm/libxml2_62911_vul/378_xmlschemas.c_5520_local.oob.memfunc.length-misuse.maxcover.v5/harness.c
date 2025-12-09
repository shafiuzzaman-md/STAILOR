#include "klee/klee.h"
#include <libxml/xmlschemas.h>
#include <libxml/xmlmemory.h>
#include <libxml/parser.h>
#include <libxml/tree.h>
#include <string.h>

int main(void) {
    xmlSchemaParserCtxtPtr ctxt;
    xmlSchemaModelGroupDefPtr ret;
    const xmlChar *name;
    const xmlChar *nsName;
    xmlNodePtr node;

    ctxt = xmlSchemaNewParserCtxt("test.xsd");
    if (ctxt == NULL) {
        return 0;
    }

    klee_make_symbolic(&name, sizeof(name), "name");
    klee_make_symbolic(&nsName, sizeof(nsName), "nsName");
    klee_make_symbolic(&node, sizeof(node), "node");

    ret = (xmlSchemaModelGroupDefPtr) xmlMalloc(sizeof(xmlSchemaModelGroupDef));
    if (ret == NULL) {
        xmlSchemaPErrMemory(ctxt, "adding group", NULL);
        xmlSchemaFreeParserCtxt(ctxt);
        return 0;
    }

    klee_assert(0 && "SAILR_REACH_ASSERT");
    memset(ret, 0, sizeof(xmlSchemaModelGroupDef));
    ret->name = name;
    ret->type = XML_SCHEMA_TYPE_GROUP;
    ret->node = node;
    ret->targetNamespace = nsName;

    xmlFree(ret);
    xmlSchemaFreeParserCtxt(ctxt);
    return 0;
}