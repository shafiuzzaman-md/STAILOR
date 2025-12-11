#ifndef SAILR_ASSERT
#define SAILR_ASSERT(cond) klee_assert((cond) && "SAILR_VULN_ASSERT")
#endif

#include <stdlib.h>
#include <string.h>
#include "klee/klee.h"

#define MAX_NODES 100

typedef struct {
    char *segment;
    char *finish;
} hugeDocParts_t;

typedef struct {
    char *buffer;
    char *current;
    int curseg;
    int len;
    int rlen;
    hugeDocParts_t *hugeDocParts;
} context_t;

static context_t ctx;

void initialize_context(void) {
    ctx.buffer = malloc(1024);
    ctx.current = malloc(1024);
    ctx.hugeDocParts = malloc(sizeof(hugeDocParts_t));
    ctx.hugeDocParts->segment = malloc(1024);
    ctx.hugeDocParts->finish = malloc(1024);
    
    klee_make_symbolic(ctx.buffer, 1024, "buffer");
    klee_make_symbolic(ctx.current, 1024, "current");
    klee_make_symbolic(ctx.hugeDocParts->segment, 1024, "segment");
    klee_make_symbolic(ctx.hugeDocParts->finish, 1024, "finish");
    
    klee_make_symbolic(&ctx.len, sizeof(ctx.len), "len");
    klee_make_symbolic(&ctx.rlen, sizeof(ctx.rlen), "rlen");
    klee_make_symbolic(&ctx.curseg, sizeof(ctx.curseg), "curseg");
}

void cleanup_context(void) {
    free(ctx.buffer);
    free(ctx.current);
    free(ctx.hugeDocParts->segment);
    free(ctx.hugeDocParts->finish);
    free(ctx.hugeDocParts);
}

int main(void) {
    initialize_context();
    
    klee_assume(ctx.rlen >= 0);
    klee_assume(ctx.len >= 0);
    klee_assume(ctx.curseg >= 0);
    klee_assume(ctx.curseg < MAX_NODES);
    
    if (ctx.rlen == 0) {
        ctx.rlen = 0;
        cleanup_context();
        return 0;
    }
    
    ctx.len = ctx.rlen;
    ctx.rlen = 0;
    
    SAILR_ASSERT(ctx.len <= 1024);
    klee_assert(0 && "SAILR_REACH_ASSERT");
    
    memcpy(ctx.buffer, ctx.current, ctx.len);
    
    ctx.curseg++;
    if (ctx.curseg == MAX_NODES) {
        ctx.current = ctx.hugeDocParts->finish;
    } else {
        ctx.current = ctx.hugeDocParts->segment;
    }
    
    cleanup_context();
    return 0;
}