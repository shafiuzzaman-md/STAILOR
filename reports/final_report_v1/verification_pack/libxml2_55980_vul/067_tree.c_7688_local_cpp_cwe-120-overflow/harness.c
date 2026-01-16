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
#define XML_BUFFER_ALLOC_IO 1
typedef unsigned char xmlChar;
typedef struct _xmlBuffer xmlBuffer;
typedef xmlBuffer *xmlBufferPtr;
struct _xmlBuffer {
    xmlChar *content;		/* The buffer content UTF8 */
    xmlChar *contentIO;		/* in IO mode we may have a different base */
    unsigned int use;		/* The buffer size used */
    unsigned int size;		/* The buffer size */
    unsigned int alloc;		/* The buffer alloc type */
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

static void stub_xmlTreeErrMemory(const char *extra) {
    /* ignore */
}
#define xmlTreeErrMemory stub_xmlTreeErrMemory

static int stub_xmlBufferResize(xmlBufferPtr buf, unsigned int size) {
    /* Always fail to keep path simple */
    return 0;
}
#define xmlBufferResize stub_xmlBufferResize

/* --- Embedded Functions --- */
/* Helper to create a buffer with IO allocation */
static xmlBufferPtr create_buffer_with_io(void) {
    xmlBufferPtr buf = (xmlBufferPtr)malloc(sizeof(xmlBuffer));
    if (!buf) return NULL;
    buf->alloc = XML_BUFFER_ALLOC_IO;
    buf->size = 256; /* initial size */
    buf->use = 0;
    buf->contentIO = (xmlChar*)malloc(buf->size + 64); /* extra space for start_buf */
    if (!buf->contentIO) { free(buf); return NULL; }
    buf->content = buf->contentIO + 32; /* start_buf = 32 */
    buf->content[0] = '\0';
    return buf;
}

/* --- Harness --- */
#include <klee/klee.h>
#include <stdlib.h>
#include <string.h>
#ifndef BUG_ASSERT
#define klee_assert(!(cond) && "BUG_ASSERT")
#endif
#ifndef REACH_ASSERT
#define klee_assert(0 && "REACH_ASSERT")
#endif

extern int xmlBufferAddHead(xmlBufferPtr buf, const xmlChar *str, int len);
extern int xmlBufferAdd(xmlBufferPtr buf, const xmlChar *str, int len);
extern xmlBufferPtr xmlBufferCreate(void);

int main(int argc, char **argv) {
    /* Create buffer with IO allocation and start_buf > 0 */
    xmlBufferPtr buf = create_buffer_with_io();
    if (!buf) return 0;
    
    /* Add some data to move content pointer forward (already done via content offset) */
    /* Ensure start_buf = buf->content - buf->contentIO = 32 */
    
    /* Symbolic length: must be >0 and < start_buf to trigger vulnerable path */
    int len;
    klee_make_symbolic(&len, sizeof(len), "len");
    klee_assume(len > 0);
    if (len >= 32) return 0; /* Auto-fixed unsafe assume */  /* len < start_buf */
    if (len >= 256) return 0; /* Auto-fixed unsafe assume */ /* keep small */
    
    /* Symbolic string data */
    xmlChar str_data[256];
    klee_make_symbolic(str_data, sizeof(str_data), "str_data");
    str_data[sizeof(str_data)-1] = '\0'; /* ensure null termination */
    
    /* Filter strings to avoid path explosion */
    size_t actual_len = strlen((char*)str_data);
    if (actual_len <= 64 || actual_len >= 128) {
        free(buf->contentIO);
        free(buf);
        return 0;
    }
    
    /* Call xmlBufferAddHead to trigger vulnerable memmove */
    xmlBufferAddHead(buf, str_data, len);
    
    /* BUG_ASSERT: overflow occurs if len > buf->size */
    /* Since we cannot observe buf->size directly, rely on crash oracle */
     /* Never crashes; safe landing */
    
    /* REACH_ASSERT sentinel */
    
    
    free(buf->contentIO);
    free(buf);
    return 0;
}