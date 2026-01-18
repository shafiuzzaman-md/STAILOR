// [STAILOR] Auto-converted for OSS-Fuzz Verification (C Mode)
#include <stdint.h>
#include <stddef.h>
#include <stdlib.h>
#include <string.h>
#include <assert.h>
#include <stdio.h>

/* --- Safe Macro Shims --- */
#define klee_assert(x) assert(x)
#define BUG_ASSERT(x) assert(x)
#define REACH_ASSERT()
#define klee_assume(x)

/* --- Globals --- */
/* --- Global Constants --- */
#ifndef BUG_ASSERT
// #define klee_assert(!(cond) && "BUG_ASSERT")
#endif
#ifndef REACH_ASSERT
// #define klee_assert(0 && "REACH_ASSERT")
#endif


/* --- Embedded Helpers --- */
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


/* --- Harness Preamble --- */
/* --- Harness --- */


/* --- Fuzzer Entrypoint --- */
int LLVMFuzzerTestOneInput(const uint8_t *Data, size_t Size) {
    size_t _consumed = 0;

    /* Create a document */
    xmlDocPtr doc = xmlNewDoc("1.0");
    if (!(doc != 0)) return 0;
    
    /* Allocate version string */
    char version_buf[1024];
#ifdef __KLEE__
    /* mapped version_buf */
    if (Size < _consumed + sizeof(version_buf)) return 0;
    memcpy(version_buf, Data + _consumed, sizeof(version_buf));
    _consumed += sizeof(version_buf);
    version_buf[sizeof(version_buf)-1] = '\0';
#else
    strcpy(version_buf, "1.0");
#endif
    
    /* Set version */
    xmlDocSetVersion(doc, version_buf);
    if (!(doc->version != 0)) return 0;
    
    /* Call xmlFreeDoc */
    extern void xmlFreeDoc(xmlDoc *cur);
    xmlFreeDoc(doc);
    
    /* If we reach here, UAF didn't crash */
    
    
    return 0;

}