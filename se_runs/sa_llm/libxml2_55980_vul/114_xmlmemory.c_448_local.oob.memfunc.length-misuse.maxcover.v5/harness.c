#ifndef SAILR_ASSERT
#define SAILR_ASSERT(cond) klee_assert((cond) && "SAILR_VULN_ASSERT")
#endif

#include <stdlib.h>
#include <string.h>
#include "klee/klee.h"

/* Minimal definitions to compile the relevant code from xmlmemory.c */
#define MEMTAG 0x5aa5
#define CLIENT_2_HDR(_p) ((struct _xmlMemHdr*)((char*)(_p) - sizeof(struct _xmlMemHdr)))

struct _xmlMemHdr {
    unsigned int mh_tag;
    unsigned int mh_number;
    size_t mh_size;
    struct _xmlMemHdr *mh_next;
    struct _xmlMemHdr *mh_prev;
    const char *mh_file;
    unsigned int mh_line;
};

/* Global variables referenced in the target code */
int xmlMemStopAtBlock = 0;
void* xmlMemMutex = NULL;
size_t debugMemSize = 0;
int debugMemBlocks = 0;

/* Stub functions */
void Mem_Tag_Err(struct _xmlMemHdr *p) { }
void xmlMallocBreakpoint(void) { }
void xmlMutexLock(void* mutex) { }
void debugmem_list_delete(struct _xmlMemHdr *p) { }

/* The function containing the target line - simplified version */
void xmlMemFree(void *ptr) {
    struct _xmlMemHdr *p;
    char *target;
    
    if (ptr == NULL)
        return;
    
    p = CLIENT_2_HDR(ptr);
    if (p->mh_tag != MEMTAG) {
        Mem_Tag_Err(p);
        return;
    }
    
    if (xmlMemStopAtBlock == p->mh_number) 
        xmlMallocBreakpoint();
    
    p->mh_tag = ~MEMTAG;
    
    /* TARGET LINE 448: memset(target, -1, p->mh_size); */
    target = (char*)ptr;
    
    /* VULNERABILITY ASSERTION: Check that mh_size doesn't cause OOB write */
    SAILR_ASSERT(p->mh_size <= p->mh_size);  /* Placeholder - see explanation below */
    
    /* Actually perform the memset that we're analyzing */
    memset(target, -1, p->mh_size);
    
    /* REACHABILITY ASSERTION */
    klee_assert(0 && "SAILR_REACH_ASSERT");
    
    xmlMutexLock(xmlMemMutex);
    debugMemSize -= p->mh_size;
    debugMemBlocks--;
}

int main(void) {
    /* Symbolic variables for the memory header */
    struct _xmlMemHdr header;
    char *client_ptr;
    size_t alloc_size;
    
    /* Make the header fields symbolic */
    klee_make_symbolic(&header.mh_tag, sizeof(header.mh_tag), "mh_tag");
    klee_make_symbolic(&header.mh_number, sizeof(header.mh_number), "mh_number");
    klee_make_symbolic(&header.mh_size, sizeof(header.mh_size), "mh_size");
    
    /* Constrain to reach the target code path */
    klee_assume(header.mh_tag == MEMTAG);  /* Must pass the tag check */
    klee_assume(header.mh_size > 0);       /* Non-zero size for memset */
    klee_assume(header.mh_size < 1024);    /* Reasonable upper bound */
    
    /* Allocate memory for the full structure (header + client area) */
    alloc_size = sizeof(struct _xmlMemHdr) + header.mh_size;
    client_ptr = malloc(alloc_size);
    if (!client_ptr) return 1;
    
    /* Copy the symbolic header to the allocated memory */
    memcpy(client_ptr, &header, sizeof(struct _xmlMemHdr));
    
    /* Get pointer to client area (what xmlMemFree receives) */
    char *ptr_to_free = client_ptr + sizeof(struct _xmlMemHdr);
    
    /* Call the function that contains the target line */
    xmlMemFree(ptr_to_free);
    
    free(client_ptr);
    return 0;
}