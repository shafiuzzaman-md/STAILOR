#include "klee/klee.h"
#include <libxml/parser.h>
#include <libxml/tree.h>
#include <string.h>

#define CHUNK 4096

typedef struct {
    char *buffer;
    char *current;
    int instate;
    size_t len;
    size_t rlen;
    size_t curlen;
    size_t maxlen;
    char filling[CHUNK];
} testlimits_state;

int main(void) {
    testlimits_state state;
    char buffer_sym[CHUNK];
    char current_sym[CHUNK];
    char filling_sym[CHUNK];

    klee_make_symbolic(&state.instate, sizeof(state.instate), "instate");
    klee_make_symbolic(&state.len, sizeof(state.len), "len");
    klee_make_symbolic(&state.rlen, sizeof(state.rlen), "rlen");
    klee_make_symbolic(&state.curlen, sizeof(state.curlen), "curlen");
    klee_make_symbolic(&state.maxlen, sizeof(state.maxlen), "maxlen");

    klee_assume(state.instate == 2);
    klee_assume(state.len < state.rlen);
    klee_assume(state.len > 0);
    klee_assume(state.len <= CHUNK);
    klee_assume(state.rlen <= CHUNK);

    state.buffer = buffer_sym;
    state.current = current_sym;
    memcpy(state.filling, filling_sym, CHUNK);

    if (state.instate == 2) {
        if (state.len >= state.rlen) {
            state.len = state.rlen;
            state.rlen = 0;
            memcpy(state.buffer, state.current, state.len);
            state.instate = 3;
            state.curlen = 0;
        } else {
            klee_assert(0 && "SAILR_REACH_ASSERT");
            memcpy(state.buffer, state.current, state.len);
            state.rlen -= state.len;
            state.current += state.len;
        }
    } else if (state.instate == 1) {
        if (state.len > CHUNK) state.len = CHUNK;
        memcpy(state.buffer, &state.filling[0], state.len);
        state.curlen += state.len;
        if (state.curlen >= state.maxlen) {
            state.curlen = 0;
        }
    }

    return 0;
}