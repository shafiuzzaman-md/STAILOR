#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <zlib.h>
#include "klee/klee.h"

/* Minimal definitions to satisfy libxml2 xzlib internals */
typedef struct {
    unsigned char *next;
    unsigned have;
    unsigned char *out;
    unsigned pos;
    unsigned raw;
    int how;
    int direct;
} xz_state;

typedef struct {
    xz_state *state;
    z_stream *strm;
} xz_file;

/* Simulate the function containing the target line */
static int __libxml2_xzread(xz_file *file) {
    xz_state *state = file->state;
    z_stream *strm = file->strm;

    /* Doing raw i/o, save start of raw data for seeking, copy any leftover
     * input to output -- this assumes that the output buffer is larger than
     * the input buffer, which also assures space for gzungetc() */
    state->raw = state->pos;
    state->next = state->out;
    if (strm->avail_in) {
        /* Target line 522 */
        klee_assert(0 && "SAILR_REACH_ASSERT");
        memcpy(state->next + state->have, strm->next_in, strm->avail_in);
        state->have += strm->avail_in;
        strm->avail_in = 0;
    }
    state->how = 1; /* COPY */
    state->direct = 1;
    return 0;
}

int main(void) {
    xz_state state;
    z_stream strm;
    xz_file file;

    /* Initialize state */
    state.have = 0;
    state.pos = 0;
    state.raw = 0;
    state.how = 0;
    state.direct = 0;

    /* Allocate and make symbolic output buffer */
    unsigned out_size = 4096;
    state.out = (unsigned char *)malloc(out_size);
    klee_make_symbolic(state.out, out_size, "state_out");
    state.next = NULL;

    /* Allocate and make symbolic input buffer */
    unsigned in_size = 2048;
    unsigned char *next_in_buf = (unsigned char *)malloc(in_size);
    klee_make_symbolic(next_in_buf, in_size, "next_in_buf");
    strm.next_in = next_in_buf;

    /* Make avail_in symbolic, but ensure it's within bounds */
    klee_make_symbolic(&strm.avail_in, sizeof(strm.avail_in), "avail_in");
    /* Constrain avail_in to be <= in_size and <= (out_size - state.have) to avoid trivial OOB */
    if (strm.avail_in > in_size) {
        strm.avail_in = in_size;
    }
    if (strm.avail_in > out_size - state.have) {
        strm.avail_in = out_size - state.have;
    }

    /* Link structures */
    file.state = &state;
    file.strm = &strm;

    /* Call the target function */
    __libxml2_xzread(&file);

    /* Cleanup */
    free(state.out);
    free(next_in_buf);

    return 0;
}