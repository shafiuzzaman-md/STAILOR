#ifndef SAILR_ASSERT
#define SAILR_ASSERT(cond) klee_assert((cond) && "SAILR_VULN_ASSERT")
#endif

#include <stdlib.h>
#include <string.h>
#include "klee/klee.h"

#define CHUNK 4096

typedef struct {
    char *buffer;
    char *current;
    int len;
    int rlen;
    int instate;
    int curlen;
    int maxlen;
    char filling[CHUNK];
} TestContext;

void process_buffer(TestContext *ctx) {
    if (ctx->instate == 2) {
        if (ctx->len >= ctx->rlen) {
            ctx->len = ctx->rlen;
            ctx->rlen = 0;
            memcpy(ctx->buffer, ctx->current, ctx->len);
            ctx->instate = 3;
            ctx->curlen = 0;
        } else {
            SAILR_ASSERT(ctx->len <= CHUNK);
            klee_assert(0 && "SAILR_REACH_ASSERT");
            memcpy(ctx->buffer, ctx->current, ctx->len);
            ctx->rlen -= ctx->len;
            ctx->current += ctx->len;
        }
    } else if (ctx->instate == 1) {
        if (ctx->len > CHUNK) ctx->len = CHUNK;
        memcpy(ctx->buffer, &ctx->filling[0], ctx->len);
        ctx->curlen += ctx->len;
        if (ctx->curlen >= ctx->maxlen) {
            ctx->instate = 2;
        }
    }
}

int main(void) {
    TestContext ctx;
    
    ctx.buffer = malloc(CHUNK);
    ctx.current = malloc(CHUNK);
    
    klee_make_symbolic(&ctx.len, sizeof(ctx.len), "len");
    klee_make_symbolic(&ctx.rlen, sizeof(ctx.rlen), "rlen");
    klee_make_symbolic(&ctx.instate, sizeof(ctx.instate), "instate");
    klee_make_symbolic(&ctx.curlen, sizeof(ctx.curlen), "curlen");
    klee_make_symbolic(&ctx.maxlen, sizeof(ctx.maxlen), "maxlen");
    
    klee_assume(ctx.instate == 2);
    klee_assume(ctx.len >= 0 && ctx.len <= CHUNK);
    klee_assume(ctx.rlen >= 0 && ctx.rlen <= CHUNK);
    klee_assume(ctx.len < ctx.rlen);
    
    process_buffer(&ctx);
    
    free(ctx.buffer);
    free(ctx.current);
    
    return 0;
}