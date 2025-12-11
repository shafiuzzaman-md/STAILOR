#ifndef SAILR_ASSERT
#define SAILR_ASSERT(cond) klee_assert((cond) && "SAILR_VULN_ASSERT")
#endif

#include <stdlib.h>
#include <string.h>
#include "klee/klee.h"

/* Minimal stubs for libxml2 structures and functions needed to reach target */
typedef struct {
    unsigned long mh_number;
    unsigned long mh_size;
    unsigned int mh_tag;
} MEMHDR;

static unsigned long debugMemSize = 0;
static unsigned long debugMemBlocks = 0;
static unsigned long xmlMemStopAtBlock = 0;

void Mem_Tag_Err(MEMHDR *p) { (void)p; }
void xmlMallocBreakpoint(void) { }
void xmlMutexLock(void *mutex) { (void)mutex; }
void debugmem_list_delete(MEMHDR *p) { (void)p; }

/* Entrypoint function that leads to the target line */
void xmlFreeLoc(void *ptr, const char *file, int line) {
    (void)file; (void)line;
    
    if (!ptr) return;
    
    MEMHDR *p = (MEMHDR*)((char*)ptr - sizeof(MEMHDR));
    
    if (p->mh_tag == ~0U) {
        Mem_Tag_Err(p);
        return;
    }
    
    if (xmlMemStopAtBlock == p->mh_number) xmlMallocBreakpoint();
    
    p->mh_tag = ~0U;
    
    /* TARGET LINE: 412 - memset(target, -1, p->mh_size); */
    char *target = (char*)ptr;
    
    /* VULNERABILITY ASSERTION: Ensure mh_size doesn't cause OOB write */
    SAILR_ASSERT(p->mh_size <= debugMemSize);
    
    /* REACHABILITY MARKER */
    klee_assert(0 && "SAILR_REACH_ASSERT");
    
    memset(target, -1, p->mh_size);
    
    xmlMutexLock(&xmlMemMutex);
    debugMemSize -= p->mh_size;
    debugMemBlocks--;
#ifdef MEM_LIST
    debugmem_list_delete(p);
#endif
}

/* Helper function that allocates memory with header */
void* xmlMallocLoc(size_t size, const char *file, int line) {
    (void)file; (void)line;
    
    if (size == 0) return NULL;
    
    MEMHDR *p = malloc(sizeof(MEMHDR) + size);
    if (!p) return NULL;
    
    p->mh_number = debugMemBlocks;
    p->mh_size = size;
    p->mh_tag = 0x12345678;
    
    debugMemSize += size;
    debugMemBlocks++;
    
    return (char*)p + sizeof(MEMHDR);
}

int main(void) {
    /* Symbolic variables for controlling execution */
    size_t alloc_size;
    unsigned long stop_at_block;
    
    klee_make_symbolic(&alloc_size, sizeof(alloc_size), "alloc_size");
    klee_make_symbolic(&stop_at_block, sizeof(stop_at_block), "stop_at_block");
    
    /* Assume reasonable bounds for symbolic variables */
    klee_assume(alloc_size > 0 && alloc_size < 1024*1024);  /* Reasonable allocation size */
    klee_assume(stop_at_block < 100);  /* Reasonable block number */
    
    /* Initialize global state */
    debugMemSize = 0;
    debugMemBlocks = 0;
    xmlMemStopAtBlock = stop_at_block;
    
    /* Create allocation that will be freed */
    void *ptr = xmlMallocLoc(alloc_size, "test.c", 123);
    if (!ptr) return 0;
    
    /* Set up conditions to reach the target line */
    MEMHDR *p = (MEMHDR*)((char*)ptr - sizeof(MEMHDR));
    
    /* Ensure we don't take the early error path */
    klee_assume(p->mh_tag != ~0U);
    
    /* Ensure we hit the xmlMallocBreakpoint condition if needed */
    if (xmlMemStopAtBlock == p->mh_number) {
        /* This path also reaches target */
    }
    
    /* Free the memory - this should reach target line 412 */
    xmlFreeLoc(ptr, "test.c", 123);
    
    /* Clean up */
    free(p);
    
    return 0;
}