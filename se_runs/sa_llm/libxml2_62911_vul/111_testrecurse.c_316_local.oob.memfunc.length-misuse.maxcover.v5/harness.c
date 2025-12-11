#ifndef SAILR_ASSERT
#define SAILR_ASSERT(cond) klee_assert((cond) && "SAILR_VULN_ASSERT")
#endif

#include <stdlib.h>
#include <string.h>
#include "klee/klee.h"

typedef struct {
    char *segment;
} HugeDocParts;

char buffer[1024];
char *current;
int len;
int rlen;
HugeDocParts *hugeDocParts;

void target_function(void) {
    if (hugeDocParts != NULL && hugeDocParts->segment != NULL) {
        current = hugeDocParts->segment;
        rlen = strlen(current);
    } else {
        memcpy(buffer, current, len);
        rlen -= len;
        current += len;
    }
}

int main(void) {
    hugeDocParts = malloc(sizeof(HugeDocParts));
    if (hugeDocParts == NULL) return 0;
    
    char segment_buf[1024];
    klee_make_symbolic(segment_buf, sizeof(segment_buf), "segment_buf");
    klee_assume(segment_buf[sizeof(segment_buf)-1] == '\0');
    
    hugeDocParts->segment = segment_buf;
    
    klee_make_symbolic(&len, sizeof(len), "len");
    klee_assume(len >= 0);
    klee_assume(len < sizeof(buffer));
    
    current = segment_buf;
    klee_make_symbolic(&rlen, sizeof(rlen), "rlen");
    klee_assume(rlen >= 0);
    
    target_function();
    
    SAILR_ASSERT(len <= sizeof(buffer));
    klee_assert(0 && "SAILR_REACH_ASSERT");
    
    free(hugeDocParts);
    return 0;
}