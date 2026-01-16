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
#define XML_BUFFER_ALLOC_IO 1
typedef unsigned char xmlChar;
typedef struct _xmlBuffer xmlBuffer;
struct _xmlBuffer {
    xmlChar *content;
    xmlChar *contentIO;
    unsigned int use;
    unsigned int size;
    int alloc;
};

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

void* stub_xmlMalloc(size_t size) {
#ifdef __KLEE__
    return malloc(size);
#else
    return strict_alloc(size);
#endif
}
#define xmlMalloc stub_xmlMalloc

void* stub_xmlRealloc(void *ptr, size_t size) {
#ifdef __KLEE__
    return realloc(ptr, size);
#else
    /* For replay, we cannot safely realloc with guard pages, just use realloc */
    return realloc(ptr, size);
#endif
}
#define xmlRealloc stub_xmlRealloc

void stub_xmlFree(void *ptr) {
    free(ptr);
}
#define xmlFree stub_xmlFree

/* --- Embedded Functions --- */
#include <string.h>
static size_t stub_strlen(const char *s) {
    return strlen(s);
}
#define strlen stub_strlen

/* --- Harness --- */
#ifndef BUG_ASSERT
#define klee_assert(!(cond) && "BUG_ASSERT")
#endif
#ifndef REACH_ASSERT
#define klee_assert(0 && "REACH_ASSERT")
#endif

#include <klee/klee.h>

extern xmlBuffer* xmlBufferCreateSize(size_t size);
extern int xmlBufferAdd(xmlBuffer *buf, const xmlChar *str, int len);
extern int xmlBufferShrink(xmlBuffer *buf, unsigned int len);
extern int xmlBufferAddHead(xmlBuffer *buf, const xmlChar *str, int len);
extern void xmlBufferFree(xmlBuffer *buf);

int main(int argc, char **argv) {
    /* Create buffer with IO allocation scheme */
    xmlBuffer *buf = xmlBufferCreateSize(256);
    if (buf == NULL) return 0;
    /* Ensure alloc is IO */
    buf->alloc = XML_BUFFER_ALLOC_IO;
    
    /* Add some data to make use > 0 and content != contentIO */
    char init_data[] = "initial";
    xmlBufferAdd(buf, (const xmlChar*)init_data, sizeof(init_data)-1);
    
    /* Shrink to move content pointer forward, creating start > 0 */
    unsigned int start = 10;
    if (buf->use < start) start = buf->use;
    xmlBufferShrink(buf, start);
    
    /* Now start = buf->content - buf->contentIO > 0 */
    
    /* Symbolic source string */
    char str_buf[4096];
    klee_make_symbolic(str_buf, sizeof(str_buf), "str_buf");
    str_buf[sizeof(str_buf)-1] = '\0';
    
    /* Filter short strings (as per plan) */
    if (strlen(str_buf) <= 64) {
        xmlBufferFree(buf);
        return 0;
    }
    /* Filter overly-long strings for performance */
    if (strlen(str_buf) >= 128) {
        xmlBufferFree(buf);
        return 0;
    }
    
    /* Symbolic length */
    int len;
    klee_make_symbolic(&len, sizeof(len), "len");
    klee_assume(len > 0);
    
    /* Constraint to hit vulnerable path: len <= start */
    klee_assume(len <= (int)start);
    
    /* Also ensure len is not huge to avoid overflow in allocation stubs */
    if (len >= 4096) {
        xmlBufferFree(buf);
        return 0;
    }
    
    /* Call the vulnerable function */
    xmlBufferAddHead(buf, (const xmlChar*)str_buf, len);
    
    /* Oracle: if we reach here without crash, bug didn't happen */
    
    
    
    xmlBufferFree(buf);
    return 0;
}