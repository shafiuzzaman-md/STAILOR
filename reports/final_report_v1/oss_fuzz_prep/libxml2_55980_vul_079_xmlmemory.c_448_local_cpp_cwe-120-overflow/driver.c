#include <stddef.h>
#include <assert.h>
#include <stdbool.h>

#ifndef BUG_ASSERT
#define BUG_ASSERT(cond) klee_assert(!(cond) && "BUG_ASSERT")
#endif
#ifndef REACH_ASSERT
#define REACH_ASSERT() klee_assert(0 && "REACH_ASSERT")
#endif

/* --- Global Constants --- */
#define TEST_ALLOC_SIZE 256
#define OVERFLOW_SIZE 512
#define RESERVE_SIZE 32  /* approximate header size */

/* --- Stub Functions --- */
#ifdef __KLEE__
#include <klee/klee.h>
#else
#include <stdio.h>
#include <stdlib.h>
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

/* Stub for xmlMallocBreakpoint using macro redirection */
void stub_xmlMallocBreakpoint(void) {}
#define xmlMallocBreakpoint stub_xmlMallocBreakpoint

/* Stub for xmlGenericError */
void stub_xmlGenericError(void *ctx, const char *msg, ...) {}
#define xmlGenericError stub_xmlGenericError

/* Stub for xmlMemoryDump */
void stub_xmlMemoryDump(void) {}
#define xmlMemoryDump stub_xmlMemoryDump

/* Stub for xmlNewMutex */
void* stub_xmlNewMutex(void) { return (void*)0xdeadbeef; }
#define xmlNewMutex stub_xmlNewMutex

/* Stub for xmlMutexLock */
void stub_xmlMutexLock(void *mutex) {}
#define xmlMutexLock stub_xmlMutexLock

/* Stub for xmlMutexUnlock */
void stub_xmlMutexUnlock(void *mutex) {}
#define xmlMutexUnlock stub_xmlMutexUnlock

/* --- Embedded Functions --- */
/* Helper to create a corrupted memory block */
#include <stdint.h>
#include <string.h>
typedef struct memnod {
    unsigned int   mh_tag;
    unsigned int   mh_type;
    unsigned long  mh_number;
    size_t         mh_size;
    struct memnod *mh_next;
    struct memnod *mh_prev;
    const char    *mh_file;
    unsigned int   mh_line;
} MEMHDR;

#define MEMTAG 0x5aa5U
#define HDR_2_CLIENT(a) ((void *) (((char *) (a)) + RESERVE_SIZE))

static void* create_corrupted_block(void) {
    /* Allocate enough space for header + client area */
    size_t total = RESERVE_SIZE + TEST_ALLOC_SIZE;
    char *raw = malloc(total);
    if (!raw) return NULL;
    
    /* Set up header */
    MEMHDR *hdr = (MEMHDR*)raw;
    hdr->mh_tag = MEMTAG;
    hdr->mh_type = 1; /* MALLOC_TYPE */
    hdr->mh_number = 1;
    hdr->mh_size = OVERFLOW_SIZE; /* Larger than actual allocation! */
    hdr->mh_next = NULL;
    hdr->mh_prev = NULL;
    hdr->mh_file = NULL;
    hdr->mh_line = 0;
    
    /* Return client pointer */
    return HDR_2_CLIENT(hdr);
}

/* --- Harness --- */
#include <stdlib.h>
#include <string.h>

/* Forward declarations for libxml functions */
extern void xmlInitMemory(void);
extern void* xmlMallocLoc(size_t size, const char *file, int line);
extern void xmlMemFree(void *ptr);

#ifndef BUG_ASSERT
#ifdef __KLEE__
#define klee_assert(!(cond) && "BUG_ASSERT")
#else
#define if (cond) { abort(); }
#endif
#endif

#ifndef REACH_ASSERT
#ifdef __KLEE__
#define klee_assert(0 && "REACH_ASSERT")
#else
#define abort()
#endif
#endif

int main(int argc, char **argv) {
    /* Initialize memory subsystem */
    xmlInitMemory();
    
    /* Create a corrupted memory block with mh_size > actual allocation */
    void *ptr = create_corrupted_block();
    if (!ptr) return 1;
    
    /* Call xmlMemFree - this should trigger buffer overflow in memset */
    xmlMemFree(ptr);
    
    /* If we reach here, the overflow didn't cause a crash */
     /* Safe landing */
    
    
    return 0;
}