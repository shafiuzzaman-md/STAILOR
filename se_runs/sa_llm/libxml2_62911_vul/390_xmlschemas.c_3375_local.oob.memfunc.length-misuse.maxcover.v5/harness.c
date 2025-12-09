#include <libxml/xmlschemas.h>
#include <libxml/parser.h>
#include <libxml/tree.h>
#include <string.h>
#include <klee/klee.h>

extern void SAILR_ASSERT(int condition);

int main(void) {
    xmlSchemaParserCtxtPtr ctxt;
    xmlNodePtr node;
    xmlSchemaAnnotPtr annot;

    ctxt = xmlSchemaNewParserCtxt("test.xsd");
    if (ctxt == NULL) {
        return 0;
    }

    node = xmlNewNode(NULL, (const xmlChar *)"test");
    if (node == NULL) {
        xmlSchemaFreeParserCtxt(ctxt);
        return 0;
    }

    klee_make_symbolic(&ctxt->annotation, sizeof(ctxt->annotation), "annotation");

    annot = xmlSchemaParseAnnotation(ctxt, node);
    if (annot != NULL) {
        klee_assert(0 && "SAILR_REACH_ASSERT");
        xmlFree(annot);
    }

    xmlFreeNode(node);
    xmlSchemaFreeParserCtxt(ctxt);
    return 0;
}