#include "klee/klee.h"
#include <stdlib.h>
#include <string.h>

#define SORT_TYPE int
#define SORT_CMP(x, y) ((x) > (y) ? 1 : ((x) < (y) ? -1 : 0))

void TIM_SORT(SORT_TYPE *dst, const size_t size) {
    size_t minrun = 32;
    size_t curr = 0;
    size_t A = 0, B = 0;
    SORT_TYPE *storage = NULL;

    if (size < 2) return;

    if (size < minrun) {
        minrun = size;
    }

    storage = (SORT_TYPE *)malloc(minrun * sizeof(SORT_TYPE));
    if (!storage) return;

    while (curr < size) {
        size_t run_len = 1;
        while (curr + run_len < size && run_len < minrun) {
            run_len++;
        }

        if (curr + run_len > size) {
            run_len = size - curr;
        }

        if (run_len < minrun) {
            size_t force_len = minrun < size - curr ? minrun : size - curr;
            run_len = force_len;
        }

        if (curr + run_len >= size) {
            break;
        }

        A = run_len;
        B = (curr + A + minrun < size) ? minrun : size - (curr + A);
        if (B == 0) break;

        if (A > 0 && B > 0) {
            if (A >= B) {
                memcpy(storage, &dst[curr], A * sizeof(SORT_TYPE));
                size_t i = 0, j = curr + A, k = curr;
                while (k < curr + A + B) {
                    if (i < A && j < curr + A + B) {
                        if (SORT_CMP(storage[i], dst[j]) <= 0) {
                            dst[k++] = storage[i++];
                        } else {
                            dst[k++] = dst[j++];
                        }
                    } else if (i < A) {
                        dst[k++] = storage[i++];
                    } else {
                        break;
                    }
                }
            } else {
                memcpy(storage, &dst[curr + A], B * sizeof(SORT_TYPE));
                size_t i = B, j = curr + A, k = curr + A + B;
                klee_assert(0 && "SAILR_REACH_ASSERT");
                while (k > curr) {
                    k--;
                    if ((i > 0) && (j > curr)) {
                        if (SORT_CMP(dst[j - 1], storage[i - 1]) > 0) {
                            dst[k] = dst[--j];
                        } else {
                            dst[k] = storage[--i];
                        }
                    } else if (i > 0) {
                        dst[k] = storage[--i];
                    } else {
                        dst[k] = dst[--j];
                    }
                }
            }
        }

        curr += run_len;
        if (curr >= size) break;
    }

    free(storage);
}

int main(void) {
    size_t size;
    klee_make_symbolic(&size, sizeof(size), "size");
    if (size == 0 || size > 1024) size = 1024;

    SORT_TYPE *dst = (SORT_TYPE *)malloc(size * sizeof(SORT_TYPE));
    if (!dst) return 0;

    klee_make_symbolic(dst, size * sizeof(SORT_TYPE), "dst");

    TIM_SORT(dst, size);

    free(dst);
    return 0;
}