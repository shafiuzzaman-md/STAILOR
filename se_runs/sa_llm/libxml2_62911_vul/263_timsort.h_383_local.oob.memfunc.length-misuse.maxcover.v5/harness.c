#include "klee/klee.h"
#include <stdlib.h>
#include <string.h>

#define SORT_TYPE int
#define SORT_CMP(x, y) ((x) - (y))
#define MIN(a, b) ((a) < (b) ? (a) : (b))

typedef struct {
    size_t start;
    size_t length;
} TIM_SORT_RUN_T;

typedef struct {
    SORT_TYPE *storage;
    size_t alloc;
} TEMP_STORAGE_T;

#define TIM_SORT_RESIZE(store, size) \
    do { \
        if ((store)->alloc < (size)) { \
            (store)->storage = realloc((store)->storage, (size) * sizeof(SORT_TYPE)); \
            (store)->alloc = (size); \
        } \
    } while (0)

static void timsort_merge_lo(SORT_TYPE *dst, const TIM_SORT_RUN_T *stack, size_t stack_curr, TEMP_STORAGE_T *store, size_t A, size_t B) {
    const size_t curr = stack[stack_curr - 2].start;
    SORT_TYPE *storage;
    size_t i, j, k;
    TIM_SORT_RESIZE(store, MIN(A, B));
    storage = store->storage;

    if (A < B) {
        klee_assert(0 && "SAILR_REACH_ASSERT");
        memcpy(storage, &dst[curr], A * sizeof(SORT_TYPE));
        i = 0;
        j = curr + A;

        for (k = curr; k < curr + A + B; k++) {
            if ((i < A) && (j < curr + A + B)) {
                if (SORT_CMP(storage[i], dst[j]) <= 0) {
                    dst[k] = storage[i++];
                } else {
                    dst[k] = dst[j++];
                }
            } else if (i < A) {
                dst[k] = storage[i++];
            } else {
                dst[k] = dst[j++];
            }
        }
    }
}

int main(void) {
    size_t stack_curr;
    size_t A, B;
    SORT_TYPE *dst;
    TIM_SORT_RUN_T *stack;
    TEMP_STORAGE_T store = {NULL, 0};

    klee_make_symbolic(&stack_curr, sizeof(stack_curr), "stack_curr");
    klee_make_symbolic(&A, sizeof(A), "A");
    klee_make_symbolic(&B, sizeof(B), "B");

    klee_assume(stack_curr >= 2);
    size_t array_size = 1024;
    dst = malloc(array_size * sizeof(SORT_TYPE));
    klee_make_symbolic(dst, array_size * sizeof(SORT_TYPE), "dst");

    stack = malloc(stack_curr * sizeof(TIM_SORT_RUN_T));
    for (size_t i = 0; i < stack_curr; i++) {
        klee_make_symbolic(&stack[i].start, sizeof(stack[i].start), "stack_start");
        klee_make_symbolic(&stack[i].length, sizeof(stack[i].length), "stack_length");
        klee_assume(stack[i].start < array_size);
        klee_assume(stack[i].start + stack[i].length <= array_size);
    }

    size_t curr_idx = stack_curr - 2;
    size_t curr_start = stack[curr_idx].start;
    size_t curr_len = stack[curr_idx].length;
    size_t next_len = stack[curr_idx + 1].length;

    klee_assume(A == curr_len);
    klee_assume(B == next_len);
    klee_assume(curr_start + A + B <= array_size);

    timsort_merge_lo(dst, stack, stack_curr, &store, A, B);

    free(dst);
    free(stack);
    free(store.storage);
    return 0;
}