#include <libxml/xmlschemas.h>
#include <libxml/parser.h>
#include <libxml/tree.h>
#include <string.h>
#include <klee/klee.h>

int main(void) {
    xmlSchemaParserCtxtPtr ctxt;
    xmlSchemaIDCPtr ret;
    const xmlChar *name, *nsName;
    xmlSchemaIDCType category;
    xmlNodePtr node;

    ctxt = xmlSchemaNewParserCtxt("test.xsd");
    if (ctxt == NULL) {
        return 0;
    }

    klee_make_symbolic(&name, sizeof(name), "name");
    klee_make_symbolic(&nsName, sizeof(nsName), "nsName");
    klee_make_symbolic(&category, sizeof(category), "category");
    klee_make_symbolic(&node, sizeof(node), "node");

    ret = (xmlSchemaIDCPtr) xmlMalloc(sizeof(xmlSchemaIDC));
    if (ret == NULL) {
        xmlSchemaPErrMemory(ctxt, "allocating an identity-constraint definition", NULL);
        xmlSchemaFreeParserCtxt(ctxt);
        return 0;
    }

    klee_assert(0 && "SAILR_REACH_ASSERT");
    memset(ret, 0, sizeof(xmlSchemaIDC));

    ret->targetNamespace = nsName;
    ret->name = name;
    ret->type = category;
    ret->node = node;

    xmlFree(ret);
    xmlSchemaFreeParserCtxt(ctxt);
    return 0;
}