#ifndef SAILR_ASSERT
#define SAILR_ASSERT(cond) klee_assert((cond) && "SAILR_VULN_ASSERT")
#endif

#include <stdlib.h>
#include <string.h>
#include "klee/klee.h"

/* Minimal definitions to compile the target code */
typedef int SORT_TYPE;
#define MIN(a, b) ((a) < (b) ? (a) : (b))

/* Stub for TIM_SORT_RESIZE macro */
typedef struct {
    SORT_TYPE *storage;
    size_t size;
} TIM_SORT_STORE_T;

#define TIM_SORT_RESIZE(store, new_size) do { \
    if ((store)->size < (new_size)) { \
        (store)->storage = malloc((new_size) * sizeof(SORT_TYPE)); \
        (store)->size = (new_size); \
    } \
} while (0)

/* Stub for SORT_CMP macro */
#define SORT_CMP(a, b) ((a) - (b))

/* Function prototype from timsort.h */
void merge_lo(SORT_TYPE *dst, TIM_SORT_STORE_T *store, 
              size_t A, size_t B, size_t *stack, size_t stack_curr);

/* Main harness */
int main(void) {
    /* Symbolic variables for the merge parameters */
    size_t A, B;
    size_t stack_curr;
    size_t stack[3];  /* Need at least 3 elements for stack_curr-2 to be valid */
    SORT_TYPE *dst;
    TIM_SORT_STORE_T store = {NULL, 0};
    
    /* Make inputs symbolic */
    klee_make_symbolic(&A, sizeof(A), "A");
    klee_make_symbolic(&B, sizeof(B), "B");
    klee_make_symbolic(&stack_curr, sizeof(stack_curr), "stack_curr");
    klee_make_symbolic(stack, sizeof(stack), "stack");
    
    /* Assume constraints to reach the vulnerable line */
    klee_assume(A > 0);  /* Need positive A for memcpy */
    klee_assume(B > 0);  /* Need positive B for merge */
    klee_assume(A < B);  /* Required to enter the if block at line 382 */
    klee_assume(stack_curr >= 2);  /* Need valid stack[stack_curr - 2] */
    
    /* Assume stack[stack_curr - 2].start is within bounds for dst allocation */
    size_t curr = stack[stack_curr - 2];
    size_t dst_size = curr + A + B;  /* Maximum index needed */
    
    /* Allocate destination buffer */
    dst = malloc(dst_size * sizeof(SORT_TYPE));
    klee_assume(dst != NULL);
    
    /* Initialize store */
    store.storage = NULL;
    store.size = 0;
    
    /* Call the function that contains the target line */
    merge_lo(dst, &store, A, B, stack, stack_curr);
    
    /* Vulnerability assertion: check that memcpy won't overflow */
    /* The memcpy copies A elements from &dst[curr], so we need:
       1. curr + A <= dst_size (no read overflow from dst)
       2. A <= store.size (no write overflow to storage)
    */
    SAILR_ASSERT(curr + A <= dst_size && A <= store.size);
    
    /* Reachability assertion */
    klee_assert(0 && "SAILR_REACH_ASSERT");
    
    /* Cleanup */
    free(dst);
    if (store.storage) free(store.storage);
    
    return 0;
}

/* Implementation of merge_lo function (simplified to reach target line) */
void merge_lo(SORT_TYPE *dst, TIM_SORT_STORE_T *store, 
              size_t A, size_t B, size_t *stack, size_t stack_curr) {
    const size_t curr = stack[stack_curr - 2];
    SORT_TYPE *storage;
    size_t i, j, k;
    
    /* This will trigger the TIM_SORT_RESIZE macro */
    TIM_SORT_RESIZE(store, MIN(A, B));
    storage = store->storage;
    
    /* left merge - this is the if block containing the target line */
    if (A < B) {
        /* TARGET LINE 383: memcpy(storage, &dst[curr], A * sizeof(SORT_TYPE)); */
        memcpy(storage, &dst[curr], A * sizeof(SORT_TYPE));
        /* The rest of the function is not needed for reachability */
    }
}