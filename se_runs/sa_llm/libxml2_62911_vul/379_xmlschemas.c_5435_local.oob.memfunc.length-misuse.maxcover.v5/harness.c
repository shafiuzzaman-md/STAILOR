#include <libxml/xmlschemas.h>
#include <libxml/parser.h>
#include <libxml/parserInternals.h>
#include <klee/klee.h>

int main(void) {
    xmlSchemaParserCtxtPtr ctxt;
    xmlSchemaModelGroupPtr ret;
    xmlNodePtr node;
    xmlSchemaTypeType type;

    ctxt = xmlSchemaNewParserCtxt("test.xsd");
    if (ctxt == NULL) {
        return 0;
    }

    klee_make_symbolic(&type, sizeof(type), "type");
    klee_make_symbolic(&node, sizeof(node), "node");

    ret = (xmlSchemaModelGroupPtr) xmlMalloc(sizeof(xmlSchemaModelGroup));
    if (ret == NULL) {
        xmlSchemaPErrMemory(ctxt, "allocating model group component", NULL);
        xmlSchemaFreeParserCtxt(ctxt);
        return 0;
    }

    klee_assert(0 && "SAILR_REACH_ASSERT");
    memset(ret, 0, sizeof(xmlSchemaModelGroup));
    ret->type = type;
    ret->node = node;
    WXS_ADD_LOCAL(ctxt, ret);
    if ((type == XML_SCHEMA_TYPE_SEQUENCE) || (type == XML_SCHEMA_TYPE_CHOICE)) {
        WXS_ADD_PENDING(ctxt, ret);
    }

    xmlFree(ret);
    xmlSchemaFreeParserCtxt(ctxt);
    return 0;
}