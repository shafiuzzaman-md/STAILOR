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
typedef unsigned char xmlChar;
#define MAX_BUF 256

/* --- Stub Functions --- */
#ifndef __KLEE__
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

/* Stub xmlMalloc */
void* stub_stub_stub_stub_stub_stub_xmlMalloc(size_t size) {
#ifdef __KLEE__
    return malloc(size);
#else
    return strict_alloc(size);
#endif
}
#define xmlMalloc stub_stub_stub_stub_stub_stub_xmlMalloc

/* Stub xmlRealloc */
void* stub_stub_stub_stub_stub_stub_xmlRealloc(void *ptr, size_t size) {
#ifdef __KLEE__
    return realloc(ptr, size);
#else
    if (ptr == NULL) return strict_alloc(size);
    /* For replay, just allocate new memory and copy */
    void *new_ptr = strict_alloc(size);
    if (new_ptr == NULL) return NULL;
    /* We don't know original size, but this is just a stub */
    return new_ptr;
#endif
}
#define xmlRealloc stub_stub_stub_stub_stub_stub_xmlRealloc

/* Stub xmlDictOwns */
int stub_xmlDictOwns(void *dict, const xmlChar *str) {
    return 0; /* false */
}
#define xmlDictOwns stub_xmlDictOwns

/* Stub xmlFatalErr */
void stub_xmlFatalErr(void *ctxt, int error, const char *msg) {
    /* Do nothing, don't exit */
}
#define xmlFatalErr stub_xmlFatalErr

/* Stub xmlSAX2ErrMemory */
void stub_xmlSAX2ErrMemory(void *ctxt) {
    /* Do nothing, don't exit */
}
#define xmlSAX2ErrMemory stub_xmlSAX2ErrMemory

/* Stub xmlFreeDoc */
void stub_xmlFreeDoc(void *doc) {
    /* Do nothing */
}
#define xmlFreeDoc stub_xmlFreeDoc

/* Stub xmlFreeParserCtxt */
void stub_xmlFreeParserCtxt(void *ctxt) {
    /* Do nothing */
}
#define xmlFreeParserCtxt stub_xmlFreeParserCtxt

/* --- Embedded Functions --- */
/* No embedded functions needed */

/* --- Harness --- */
#include <klee/klee.h>
#include <string.h>
#include <stdlib.h>

#ifndef BUG_ASSERT
#define klee_assert(!(cond) && "BUG_ASSERT")
#endif
#ifndef REACH_ASSERT
#define klee_assert(0 && "REACH_ASSERT")
#endif

/* Forward declarations for libxml2 functions we need */
extern void xmlSAX2StartDocument(void *ctx);
extern void xmlSAX2StartElementNs(void *ctx, const xmlChar *localname,
                                  const xmlChar *prefix, const xmlChar *URI,
                                  int nb_namespaces, const xmlChar **namespaces,
                                  int nb_attributes, int nb_defaulted,
                                  const xmlChar **attributes);
extern void xmlSAX2Characters(void *ctx, const xmlChar *ch, int len);

typedef struct _xmlParserCtxt xmlParserCtxt;
typedef xmlParserCtxt *xmlParserCtxtPtr;

typedef struct _xmlDoc xmlDoc;
typedef xmlDoc *xmlDocPtr;

typedef struct _xmlNode xmlNode;
typedef xmlNode *xmlNodePtr;

/* Minimal struct definitions to avoid linker issues */
struct _xmlParserCtxt {
    xmlDocPtr myDoc;
    xmlNodePtr node;
    xmlNodePtr lastChild;
    int nodemem;
    int nodelen;
    void *dict;
    int options;
    struct _xmlParserInput *input;
    int valid;
};

struct _xmlDoc {
    int type;
    void *children;
};

struct _xmlNode {
    int type;
    void *properties;
    void *content;
    unsigned short line;
    void *psvi;
};

struct _xmlParserInput {
    unsigned long line;
};

int main(int argc, char **argv) {
    /* Allocate parser context */
    xmlParserCtxtPtr ctxt = (xmlParserCtxtPtr)malloc(sizeof(struct _xmlParserCtxt));
    if (!ctxt) return 1;
    
    /* Initialize context fields */
    memset(ctxt, 0, sizeof(struct _xmlParserCtxt));
    
    /* Allocate document */
    ctxt->myDoc = (xmlDocPtr)malloc(sizeof(struct _xmlDoc));
    if (!ctxt->myDoc) {
        free(ctxt);
        return 1;
    }
    memset(ctxt->myDoc, 0, sizeof(struct _xmlDoc));
    
    /* Initialize lastChild to NULL - will be created by StartElementNs */
    ctxt->lastChild = NULL;
    ctxt->nodemem = 0;
    ctxt->nodelen = 0;
    ctxt->dict = NULL;
    ctxt->options = 0;
    ctxt->valid = 1;
    
    /* Allocate input for line tracking */
    ctxt->input = (struct _xmlParserInput *)malloc(sizeof(struct _xmlParserInput));
    if (ctxt->input) {
        ctxt->input->line = 1;
    }
    
    /* Initialize SAX2 */
    xmlSAX2StartDocument(ctxt);
    
    /* Create a start element to set up lastChild */
    xmlSAX2StartElementNs(ctxt, (const xmlChar *)"root", NULL, NULL, 0, NULL, 0, 0, NULL);
    
    /* Symbolic inputs */
    xmlChar ch_buf[MAX_BUF];
    int len_val;
    
    klee_make_symbolic(ch_buf, sizeof(ch_buf), "ch_buf");
    klee_make_symbolic(&len_val, sizeof(len_val), "len_val");
    
    /* Constrain length */
    klee_assume(len_val > 0);
    klee_assume(len_val < MAX_BUF);
    
    /* Null-terminate for safety */
    ch_buf[MAX_BUF - 1] = '\0';
    
    /* Filter string lengths for performance (as per plan) */
    size_t str_len = strlen((const char *)ch_buf);
    if (str_len <= 64) return 0;
    if (str_len >= 128) return 0;
    
    /* Trigger vulnerable function */
    xmlSAX2Characters(ctxt, ch_buf, len_val);
    
    /* Post-call landing marker (oracle is instrumented) */
    
    /* Cleanup */
    if (ctxt->myDoc) free(ctxt->myDoc);
    if (ctxt->input) free(ctxt->input);
    free(ctxt);
    return 0;
}