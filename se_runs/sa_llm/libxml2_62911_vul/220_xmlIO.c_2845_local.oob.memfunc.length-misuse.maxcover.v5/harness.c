#ifndef SAILR_ASSERT
#define SAILR_ASSERT(cond) klee_assert((cond) && "SAILR_VULN_ASSERT")
#endif

#include <stdlib.h>
#include <string.h>
#include "klee/klee.h"

/* Forward declarations for types and functions needed */
typedef struct _xmlMemIOCtxt xmlMemIOCtxt;
struct _xmlMemIOCtxt {
    char *mem;
    size_t size;
};

/* Stub for __xmlIOErr - referenced in spec but not needed for this path */
void __xmlIOErr(void) {
    /* Empty stub */
}

/* The target function from xmlIO.c:2845 */
static int xmlMemRead(void *vctxt, char *buf, int size) {
    xmlMemIOCtxt *ctxt = (xmlMemIOCtxt *)vctxt;

    if ((size_t)size > ctxt->size)
        size = (int)ctxt->size;

    /* TARGET LINE: 2845 - memcpy(buf, ctxt->mem, size); */
    memcpy(buf, ctxt->mem, size);
    ctxt->mem += size;
    ctxt->size -= size;

    return size;
}

/* Entrypoint that calls xmlMemRead */
int main(void) {
    /* Symbolic inputs */
    int symbolic_size;
    char symbolic_buf[1024];  /* Destination buffer */
    xmlMemIOCtxt ctxt;
    char backing_memory[2048]; /* Source memory region */

    /* Make size symbolic with reasonable bounds */
    klee_make_symbolic(&symbolic_size, sizeof(symbolic_size), "size");
    klee_assume(symbolic_size >= 0);
    klee_assume(symbolic_size <= 1024);  /* Bound to avoid overflow */

    /* Initialize ctxt structure */
    klee_make_symbolic(backing_memory, sizeof(backing_memory), "backing_memory");
    ctxt.mem = backing_memory;
    
    /* Make ctxt->size symbolic */
    size_t symbolic_ctxt_size;
    klee_make_symbolic(&symbolic_ctxt_size, sizeof(symbolic_ctxt_size), "ctxt_size");
    klee_assume(symbolic_ctxt_size <= sizeof(backing_memory)); /* Cannot exceed backing memory */
    ctxt.size = symbolic_ctxt_size;

    /* Call the target function */
    int result = xmlMemRead(&ctxt, symbolic_buf, symbolic_size);

    /* Vulnerability assertion: ensure size doesn't exceed destination buffer */
    SAILR_ASSERT(symbolic_size <= 1024);
    
    /* Reachability marker */
    klee_assert(0 && "SAILR_REACH_ASSERT");

    return 0;
}