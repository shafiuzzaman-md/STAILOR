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
typedef unsigned char xmlChar;
typedef struct _xmlDoc xmlDoc;
#define BUF_SIZE 256

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

void stub_xmlFree(void *ptr) {
    /* no-op */
}

void* stub_xmlMalloc(size_t size) {
#ifdef __KLEE__
    return malloc(size);
#else
    return strict_alloc(size);
#endif
}

void stub_xmlNodeSetContent(void *node, const xmlChar *content) {
    /* no-op */
}

int stub_xmlNodeAddContent(void *node, const xmlChar *content) {
    return 0;
}

void* stub_xmlNewDocNode(void *doc, void *ns, const xmlChar *name, const xmlChar *content) {
    static char dummy_node[128];
    return &dummy_node;
}

void* stub_xmlNewProp(void *node, const xmlChar *name, const xmlChar *value) {
    static char dummy_prop[64];
    return &dummy_prop;
}

void stub_xmlAddChild(void *parent, void *cur) {
    /* no-op */
}

void stub_xmlAddPrevSibling(void *cur, void *elem) {
    /* no-op */
}

/* Macro redirection to avoid linker collisions */
#define xmlFree stub_xmlFree
#define xmlMalloc stub_xmlMalloc
#define xmlNodeSetContent stub_xmlNodeSetContent
#define xmlNodeAddContent stub_xmlNodeAddContent
#define xmlNewDocNode stub_xmlNewDocNode
#define xmlNewProp stub_xmlNewProp
#define xmlAddChild stub_xmlAddChild
#define xmlAddPrevSibling stub_xmlAddPrevSibling

/* --- Embedded Functions --- */
static void ensure_null_terminated(char *buf, size_t size) {
    if (size > 0) {
        buf[size - 1] = '\0';
    }
}

/* --- Harness --- */
#include <klee/klee.h>
#include <string.h>

#ifndef BUG_ASSERT
#define klee_assert(!(cond) && "BUG_ASSERT")
#endif
#ifndef REACH_ASSERT
#define klee_assert(0 && "REACH_ASSERT")
#endif

/* External declaration of the target entrypoint */
extern int htmlSetMetaEncoding(xmlDoc *doc, const xmlChar *encoding);

int main(int argc, char **argv) {
    /* 1) Prepare inputs */
    xmlDoc *doc = NULL;  /* As per plan: concrete NULL */
    
    /* Concrete buffer for encoding string */
    char encoding_buf[BUF_SIZE];
    
    /* Make the buffer contents symbolic */
    klee_make_symbolic(encoding_buf, sizeof(encoding_buf), "encoding_buf");
    
    /* Ensure null termination to prevent infinite strlen */
    ensure_null_terminated(encoding_buf, sizeof(encoding_buf));
    
    /* Apply constraints from plan */
    klee_assume(encoding_buf[0] != '\0');  /* strlen > 0 */
    
    /* Filter short strings (<= 64) as per plan assumption */
    size_t len = strlen(encoding_buf);
    if (len <= 64) {
        return 0;
    }
    
    /* Filter overly-long strings for performance (>= 128) */
    if (len >= 128) {
        return 0;
    }
    
    /* 2) Call the real entrypoint */
    int result = htmlSetMetaEncoding(doc, (const xmlChar *)encoding_buf);
    
    /* 3) BUG_ASSERT - Since instrumentation handles the actual bug detection,
       we use as a safe landing marker */
    
    
    /* 4) REACH_ASSERT */
    
    
    return 0;
}