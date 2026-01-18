#include <stddef.h>
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
#define BUF_SIZE 256

typedef unsigned char xmlChar;
typedef struct _xmlDoc xmlDoc;
typedef xmlDoc* xmlDocPtr;

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
#ifdef __KLEE__
void* stub_xmlMalloc(size_t size) {
    return malloc(size);
}
#else
void* stub_xmlMalloc(size_t size) {
    return strict_alloc(size);
}
#endif
#define xmlMalloc stub_xmlMalloc

/* Stub xmlFree */
void stub_xmlFree(void *ptr) {
    free(ptr);
}
#define xmlFree stub_xmlFree

/* Stub xmlNodeSetContent */
void stub_xmlNodeSetContent(void *node, const xmlChar *content) {
    /* no-op */
}
#define xmlNodeSetContent stub_xmlNodeSetContent

/* Stub xmlNodeAddContent */
int stub_xmlNodeAddContent(void *node, const xmlChar *content) {
    return 0;
}
#define xmlNodeAddContent stub_xmlNodeAddContent

/* Stub xmlNewDocNode */
void* stub_xmlNewDocNode(void *doc, void *ns, const xmlChar *name, const xmlChar *content) {
    return NULL;
}
#define xmlNewDocNode stub_xmlNewDocNode

/* Stub xmlNewProp */
void* stub_xmlNewProp(void *node, const xmlChar *name, const xmlChar *value) {
    return NULL;
}
#define xmlNewProp stub_xmlNewProp

/* Stub xmlAddChild */
void* stub_xmlAddChild(void *parent, void *cur) {
    return cur;
}
#define xmlAddChild stub_xmlAddChild

/* Stub xmlAddPrevSibling */
void* stub_xmlAddPrevSibling(void *cur, void *elem) {
    return elem;
}
#define xmlAddPrevSibling stub_xmlAddPrevSibling

/* --- Embedded Functions --- */
#include <string.h>
#include <klee/klee.h>

#ifndef BUG_ASSERT
#define klee_assert(!(cond) && "BUG_ASSERT")
#endif
#ifndef REACH_ASSERT
#define klee_assert(0 && "REACH_ASSERT")
#endif

static void ensure_null_terminated(char *buf, size_t size) {
    if (size > 0) {
        buf[size - 1] = '\0';
    }
}

/* --- Harness --- */
/* Forward declaration of the target function */
extern int htmlSetMetaEncoding(xmlDocPtr doc, const xmlChar *encoding);

int main(int argc, char **argv) {
    /* 1. Prepare inputs */
    xmlDocPtr doc = NULL;
    
    char encoding_buf[BUF_SIZE];
    klee_make_symbolic(encoding_buf, sizeof(encoding_buf), "encoding_buf");
    ensure_null_terminated(encoding_buf, sizeof(encoding_buf));
    
    /* Apply constraints from plan */
    klee_assume(encoding_buf[0] != '\0');  /* strlen > 0 */
    
    /* Filter short strings (<= 64) */
    size_t len = strlen(encoding_buf);
    if (len <= 64) return 0;
    
    /* Filter overly-long strings for performance (>= 128) */
    if (len >= 128) return 0;
    
    /* 2. Call the real entrypoint */
    int result = htmlSetMetaEncoding(doc, (const xmlChar*)encoding_buf);
    
    /* 3. BUG_ASSERT - safe landing marker */
    
    
    /* 4. REACH_ASSERT */
    
    
    return 0;
}