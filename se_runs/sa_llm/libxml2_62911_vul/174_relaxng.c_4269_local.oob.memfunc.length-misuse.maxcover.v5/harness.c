#include <libxml/xmlmemory.h>
#include <libxml/parser.h>
#include <libxml/relaxng.h>
#include <string.h>
#include "klee/klee.h"

int main(void) {
    xmlRelaxNGParserCtxtPtr parserCtxt;
    xmlRelaxNGPtr schema;
    xmlRelaxNGValidCtxtPtr validCtxt;
    xmlRelaxNGValidStatePtr state;
    xmlRelaxNGPartitionPtr partitions;
    int nbgroups;
    xmlRelaxNGDefinePtr *groups;

    klee_make_symbolic(&nbgroups, sizeof(nbgroups), "nbgroups");
    klee_assume(nbgroups >= 0);

    groups = (xmlRelaxNGDefinePtr *)xmlMalloc(sizeof(xmlRelaxNGDefinePtr) * nbgroups);
    if (groups == NULL) return 0;
    for (int i = 0; i < nbgroups; i++) {
        groups[i] = NULL;
    }

    parserCtxt = xmlRelaxNGNewParserCtxt("dummy.rng");
    if (parserCtxt == NULL) {
        xmlFree(groups);
        return 0;
    }

    schema = xmlRelaxNGParse(parserCtxt);
    if (schema == NULL) {
        xmlRelaxNGFreeParserCtxt(parserCtxt);
        xmlFree(groups);
        return 0;
    }

    validCtxt = xmlRelaxNGNewValidCtxt(schema);
    if (validCtxt == NULL) {
        xmlRelaxNGFree(schema);
        xmlRelaxNGFreeParserCtxt(parserCtxt);
        xmlFree(groups);
        return 0;
    }

    state = xmlRelaxNGCopyValidState(validCtxt);
    if (state == NULL) {
        xmlRelaxNGFreeValidCtxt(validCtxt);
        xmlRelaxNGFree(schema);
        xmlRelaxNGFreeParserCtxt(parserCtxt);
        xmlFree(groups);
        return 0;
    }

    partitions = (xmlRelaxNGPartitionPtr)xmlMalloc(sizeof(xmlRelaxNGPartition));
    if (partitions == NULL) {
        xmlRelaxNGFreeValidState(state);
        xmlRelaxNGFreeValidCtxt(validCtxt);
        xmlRelaxNGFree(schema);
        xmlRelaxNGFreeParserCtxt(parserCtxt);
        xmlFree(groups);
        return 0;
    }

    klee_assert(0 && "SAILR_REACH_ASSERT");
    memset(partitions, 0, sizeof(xmlRelaxNGPartition));

    xmlFree(partitions);
    xmlRelaxNGFreeValidState(state);
    xmlRelaxNGFreeValidCtxt(validCtxt);
    xmlRelaxNGFree(schema);
    xmlRelaxNGFreeParserCtxt(parserCtxt);
    xmlFree(groups);
    return 0;
}