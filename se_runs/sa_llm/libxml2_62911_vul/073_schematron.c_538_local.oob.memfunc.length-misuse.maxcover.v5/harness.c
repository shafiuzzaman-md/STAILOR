#include "klee/klee.h"
#include <libxml/xmlmemory.h>
#include <libxml/tree.h>
#include <libxml/schematron.h>

extern void SAILR_ASSERT(int condition);

int main(void) {
    xmlSchematronParserCtxtPtr ctxt;
    xmlSchematronPtr schema;
    xmlNodePtr node;
    const xmlChar* name;

    ctxt = xmlSchematronNewParserCtxt("test");
    if (ctxt == NULL) return 0;

    schema = xmlSchematronNewParserCtxt("dummy")->schematron;
    if (schema == NULL) {
        xmlSchematronFreeParserCtxt(ctxt);
        return 0;
    }

    node = xmlNewNode(NULL, (const xmlChar*)"test");
    if (node == NULL) {
        xmlSchematronFreeParserCtxt(ctxt);
        xmlSchematronFree(schema);
        return 0;
    }

    name = (const xmlChar*)"patternName";

    klee_make_symbolic(&ctxt, sizeof(ctxt), "ctxt");
    klee_make_symbolic(&schema, sizeof(schema), "schema");
    klee_make_symbolic(&node, sizeof(node), "node");
    klee_make_symbolic(&name, sizeof(name), "name");

    if ((ctxt == NULL) || (schema == NULL) || (node == NULL) || (name == NULL)) {
        if (node) xmlFreeNode(node);
        if (schema) xmlSchematronFree(schema);
        if (ctxt) xmlSchematronFreeParserCtxt(ctxt);
        return 0;
    }

    xmlSchematronPatternPtr ret = (xmlSchematronPatternPtr) xmlMalloc(sizeof(xmlSchematronPattern));
    if (ret == NULL) {
        xmlSchematronPErrMemory(ctxt, "allocating schema pattern", node);
        xmlFreeNode(node);
        xmlSchematronFree(schema);
        xmlSchematronFreeParserCtxt(ctxt);
        return 0;
    }

    klee_assert(0 && "SAILR_REACH_ASSERT");
    memset(ret, 0, sizeof(xmlSchematronPattern));

    ret->name = name;
    ret->next = NULL;
    if (schema->patterns == NULL) {
        schema->patterns = ret;
    } else {
        xmlSchematronPatternPtr prev = schema->patterns;
        while (prev->next != NULL) {
            prev = prev->next;
        }
        prev->next = ret;
    }

    xmlFree(ret);
    xmlFreeNode(node);
    xmlSchematronFree(schema);
    xmlSchematronFreeParserCtxt(ctxt);
    return 0;
}