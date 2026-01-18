#include <stddef.h>
#include <string.h>
#include <stdlib.h>
#include <stdint.h>
#include <assert.h>
#include <stdbool.h>
#include <stdio.h>

#ifndef BUG_ASSERT
#define BUG_ASSERT(cond) klee_assert(!(cond) && "BUG_ASSERT")
#endif
#ifndef REACH_ASSERT
#define REACH_ASSERT() klee_assert(0 && "REACH_ASSERT")
#endif

/* --- Global Constants --- */
#ifndef __KLEE__
#include <sys/mman.h>
#include <unistd.h>
#endif

/* --- Stub Functions --- */
/* Stub for xmlGetEntityFromDtd */
static void* stub_xmlGetEntityFromDtd(const void *dtd, const void *name) {
    return NULL;
}
#define xmlGetEntityFromDtd stub_xmlGetEntityFromDtd

/* Stub for xmlGetParameterEntityFromDtd */
static void* stub_xmlGetParameterEntityFromDtd(const void *dtd, const void *name) {
    return NULL;
}
#define xmlGetParameterEntityFromDtd stub_xmlGetParameterEntityFromDtd

/* Stub for xmlNewPropInternal */
static void* stub_xmlNewPropInternal(void *node, const void *name, const void *value) {
    return NULL;
}
#define xmlNewPropInternal stub_xmlNewPropInternal

/* Stub for xmlNewElem */
static void* stub_xmlNewElem(void *doc, const void *name) {
    return NULL;
}
#define xmlNewElem stub_xmlNewElem

/* Stub for xmlNewEntityRef */
static void* stub_xmlNewEntityRef(void *doc, void *name) {
    return NULL;
}
#define xmlNewEntityRef stub_xmlNewEntityRef

/* Stub for xmlNodeSetDoc */
static void* stub_xmlNodeSetDoc(void *node, void *doc) {
    return NULL;
}
#define xmlNodeSetDoc stub_xmlNodeSetDoc

/* Stub for xmlTextAddContent */
static void* stub_xmlTextAddContent(void *node, const void *content) {
    return NULL;
}
#define xmlTextAddContent stub_xmlTextAddContent

/* Stub for xmlInsertProp */
static void* stub_xmlInsertProp(void *node, void *prev, const void *name, const void *value) {
    return NULL;
}
#define xmlInsertProp stub_xmlInsertProp

/* Stub for xmlInsertNode */
static void* stub_xmlInsertNode(void *prev, void *cur) {
    return NULL;
}
#define xmlInsertNode stub_xmlInsertNode

/* Stub for xmlCopyPropInternal */
static void* stub_xmlCopyPropInternal(void *target, void *source) {
    return NULL;
}
#define xmlCopyPropInternal stub_xmlCopyPropInternal

/* Stub for xmlGetLineNoInternal */
static int stub_xmlGetLineNoInternal(const void *node) {
    return 0;
}
#define xmlGetLineNoInternal stub_xmlGetLineNoInternal

/* Stub for xmlNodeSetContentInternal */
static void* stub_xmlNodeSetContentInternal(void *node, const void *content) {
    return NULL;
}
#define xmlNodeSetContentInternal stub_xmlNodeSetContentInternal

/* Stub for xmlNewXmlNs */
static void* stub_xmlNewXmlNs(void *doc, const void *href, const void *prefix) {
    return NULL;
}
#define xmlNewXmlNs stub_xmlNewXmlNs

/* Stub for xmlTreeEnsureXMLDecl */
static void* stub_xmlTreeEnsureXMLDecl(void *doc) {
    return NULL;
}
#define xmlTreeEnsureXMLDecl stub_xmlTreeEnsureXMLDecl

/* Stub for xmlNsInScope */
static int stub_xmlNsInScope(const void *node, const void *ns) {
    return 0;
}
#define xmlNsInScope stub_xmlNsInScope

/* Stub for xmlNewReconciledNs */
static void* stub_xmlNewReconciledNs(void *tree, void *ns) {
    return NULL;
}
#define xmlNewReconciledNs stub_xmlNewReconciledNs

/* Stub for xmlGrowNsCache */
static int stub_xmlGrowNsCache(void *cache) {
    return 0;
}
#define xmlGrowNsCache stub_xmlGrowNsCache

/* Stub for xmlGetPropNodeInternal */
static void* stub_xmlGetPropNodeInternal(const void *node, const void *name, const void *nsName, int useDTD) {
    return NULL;
}
#define xmlGetPropNodeInternal stub_xmlGetPropNodeInternal

/* Stub for xmlGetPropNodeValueInternal */
static void* stub_xmlGetPropNodeValueInternal(const void *prop) {
    return NULL;
}
#define xmlGetPropNodeValueInternal stub_xmlGetPropNodeValueInternal

/* Stub for xmlDOMWrapNsMapAddItem */
static void* stub_xmlDOMWrapNsMapAddItem(void **map, int *size, void *oldNs, void *newNs) {
    return NULL;
}
#define xmlDOMWrapNsMapAddItem stub_xmlDOMWrapNsMapAddItem

/* Stub for xmlDOMWrapStoreNs */
static void* stub_xmlDOMWrapStoreNs(void *doc, void *ns) {
    return NULL;
}
#define xmlDOMWrapStoreNs stub_xmlDOMWrapStoreNs

/* Stub for xmlTreeNSListLookupByPrefix */
static void* stub_xmlTreeNSListLookupByPrefix(const void *list, const void *prefix) {
    return NULL;
}
#define xmlTreeNSListLookupByPrefix stub_xmlTreeNSListLookupByPrefix

/* Stub for xmlDOMWrapNSNormGatherInScopeNs */
static void* stub_xmlDOMWrapNSNormGatherInScopeNs(void *node, void **list) {
    return NULL;
}
#define xmlDOMWrapNSNormGatherInScopeNs stub_xmlDOMWrapNSNormGatherInScopeNs

/* Stub for xmlDOMWrapNSNormAddNsMapItem2 */
static void* stub_xmlDOMWrapNSNormAddNsMapItem2(void **map, int *size, void *oldNs, void *newNs, int depth) {
    return NULL;
}
#define xmlDOMWrapNSNormAddNsMapItem2 stub_xmlDOMWrapNSNormAddNsMapItem2

/* Stub for xmlSearchNsByNamespaceStrict */
static void* stub_xmlSearchNsByNamespaceStrict(const void *node, const void *href, int *isEqual) {
    return NULL;
}
#define xmlSearchNsByNamespaceStrict stub_xmlSearchNsByNamespaceStrict

/* Stub for xmlSearchNsByPrefixStrict */
static void* stub_xmlSearchNsByPrefixStrict(const void *node, const void *prefix, int *isEqual) {
    return NULL;
}
#define xmlSearchNsByPrefixStrict stub_xmlSearchNsByPrefixStrict

/* Stub for xmlDOMWrapNSNormDeclareNsForced */
static void* stub_xmlDOMWrapNSNormDeclareNsForced(void *doc, void *elem, const void *href, const void *prefix) {
    return NULL;
}
#define xmlDOMWrapNSNormDeclareNsForced stub_xmlDOMWrapNSNormDeclareNsForced

/* Stub for xmlDOMWrapNSNormAcquireNormalizedNs */
static void* stub_xmlDOMWrapNSNormAcquireNormalizedNs(void *doc, void *elem, void *oldNs, int depth) {
    return NULL;
}
#define xmlDOMWrapNSNormAcquireNormalizedNs stub_xmlDOMWrapNSNormAcquireNormalizedNs

/* Stub for xmlDOMWrapAdoptBranch */
static void* stub_xmlDOMWrapAdoptBranch(void *doc, void *node, void *parent, int options) {
    return NULL;
}
#define xmlDOMWrapAdoptBranch stub_xmlDOMWrapAdoptBranch

/* Stub for xmlDOMWrapAdoptAttr */
static void* stub_xmlDOMWrapAdoptAttr(void *doc, void *attr, void *parent) {
    return NULL;
}
#define xmlDOMWrapAdoptAttr stub_xmlDOMWrapAdoptAttr

#ifndef __KLEE__
void* strict_alloc(size_t size) {
    size_t page_size = sysconf(_SC_PAGESIZE);
    size_t num_pages = (size + page_size - 1) / page_size + 1;
    size_t total_size = num_pages * page_size;
    char* base = mmap(NULL, total_size, PROT_READ|PROT_WRITE, MAP_PRIVATE|MAP_ANONYMOUS, -1, 0);
    if (base == MAP_FAILED) return NULL;
    char* guard = base + (num_pages - 1) * page_size;
    mprotect(guard, page_size, PROT_NONE);
    return guard - size;
}
#endif

/* --- Embedded Functions --- */
/* No embedded functions needed */

/* --- Harness --- */
#include <libxml/tree.h>
#include <libxml/xmlmemory.h>
#include <klee/klee.h>

#ifndef BUG_ASSERT
#define klee_assert(!(cond) && "BUG_ASSERT")
#endif
#ifndef REACH_ASSERT
#define klee_assert(0 && "REACH_ASSERT")
#endif

int main(int argc, char **argv) {
    /* Create a document */
    xmlDocPtr doc = xmlNewDoc((const xmlChar*)"1.0");
    if (doc == NULL) {
        return 0;
    }
    
    /* Create a namespace node */
    xmlNsPtr ns = xmlNewNs(NULL, (const xmlChar*)"http://example.com", (const xmlChar*)"ex");
    if (ns == NULL) {
        xmlFreeDoc(doc);
        return 0;
    }
    
    /* Add namespace to document's oldNs list */
    doc->oldNs = ns;
    
    /* Free the document - this should trigger UAF when accessing oldNs */
    xmlFreeDoc(doc);
    
    /* If execution reaches here, the UAF crash did NOT happen */
    
    
    
    return 0;
}