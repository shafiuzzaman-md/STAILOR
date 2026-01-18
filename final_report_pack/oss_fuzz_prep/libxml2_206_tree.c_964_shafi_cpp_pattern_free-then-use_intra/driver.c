#include <stddef.h>
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
#ifndef BUG_ASSERT
#define klee_assert(!(cond) && "BUG_ASSERT")
#endif
#ifndef REACH_ASSERT
#define klee_assert(0 && "REACH_ASSERT")
#endif

/* --- Stub Functions --- */
#ifdef __KLEE__
#include <klee/klee.h>
#else
#include <stdlib.h>
#include <string.h>
#include <sys/mman.h>
#include <unistd.h>
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

/* Stub xmlFree */
void stub_xmlFree(void *ptr) {
    /* Do nothing */
}
#define xmlFree stub_xmlFree

/* Stub xmlFreeNodeList */
void stub_xmlFreeNodeList(void *ptr) {
    /* Do nothing */
}
#define xmlFreeNodeList stub_xmlFreeNodeList

/* Stub xmlFreeNsList */
void stub_xmlFreeNsList(void *ptr) {
    /* Do nothing */
}
#define xmlFreeNsList stub_xmlFreeNsList

/* Stub xmlFreeDtd */
void stub_xmlFreeDtd(void *ptr) {
    /* Do nothing */
}
#define xmlFreeDtd stub_xmlFreeDtd

/* Stub xmlFreeIDTable */
void stub_xmlFreeIDTable(void *ptr) {
    /* Do nothing */
}
#define xmlFreeIDTable stub_xmlFreeIDTable

/* Stub xmlFreeRefTable */
void stub_xmlFreeRefTable(void *ptr) {
    /* Do nothing */
}
#define xmlFreeRefTable stub_xmlFreeRefTable

/* Stub xmlUnlinkNodeInternal */
void stub_xmlUnlinkNodeInternal(void *ptr) {
    /* Do nothing */
}
#define xmlUnlinkNodeInternal stub_xmlUnlinkNodeInternal

/* Stub xmlDictFree */
void stub_xmlDictFree(void *ptr) {
    /* Do nothing */
}
#define xmlDictFree stub_xmlDictFree

/* Stub xmlGetEntityFromDtd */
void* stub_xmlGetEntityFromDtd(void *dtd, void *name) {
    return 0;
}
#define xmlGetEntityFromDtd stub_xmlGetEntityFromDtd

/* Stub xmlGetParameterEntityFromDtd */
void* stub_xmlGetParameterEntityFromDtd(void *dtd, void *name) {
    return 0;
}
#define xmlGetParameterEntityFromDtd stub_xmlGetParameterEntityFromDtd

/* --- Embedded Functions --- */
/* Minimal xmlDoc struct definition */
typedef struct _xmlDoc xmlDoc;
typedef xmlDoc *xmlDocPtr;
struct _xmlDoc {
    void *dict;
    void *ids;
    void *refs;
    void *extSubset;
    void *intSubset;
    void *children;
    void *oldNs;
    char *name;
    char *version;
    char *encoding;
    char *URL;
};

/* Stub xmlNewDoc */
xmlDocPtr stub_xmlNewDoc(const char *version) {
    xmlDocPtr doc = (xmlDocPtr)malloc(sizeof(xmlDoc));
    if (!doc) return 0;
    memset(doc, 0, sizeof(xmlDoc));
    if (version) {
        doc->version = strdup(version);
    }
    return doc;
}
#define xmlNewDoc stub_xmlNewDoc

/* Stub xmlDocSetVersion */
void stub_xmlDocSetVersion(xmlDocPtr doc, const char *version) {
    if (doc && version) {
        if (doc->version) free(doc->version);
        doc->version = strdup(version);
    }
}
#define xmlDocSetVersion stub_xmlDocSetVersion

/* --- Harness --- */
int main(int argc, char **argv) {
    /* Create a document */
    xmlDocPtr doc = xmlNewDoc("1.0");
    klee_assume(doc != 0);
    
    /* Allocate version string */
    char version_buf[1024];
#ifdef __KLEE__
    klee_make_symbolic(version_buf, sizeof(version_buf), "version_buf");
    version_buf[sizeof(version_buf)-1] = '\0';
#else
    strcpy(version_buf, "1.0");
#endif
    
    /* Set version */
    xmlDocSetVersion(doc, version_buf);
    klee_assume(doc->version != 0);
    
    /* Call xmlFreeDoc */
    extern void xmlFreeDoc(xmlDoc *cur);
    xmlFreeDoc(doc);
    
    /* If we reach here, UAF didn't crash */
    
    
    return 0;
}