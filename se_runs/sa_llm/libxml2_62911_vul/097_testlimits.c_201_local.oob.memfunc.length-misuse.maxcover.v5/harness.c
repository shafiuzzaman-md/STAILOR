#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <libxml/xmlreader.h>
#include "klee/klee.h"

#define CHUNK 4096

int main(void) {
    char *buffer;
    char *current;
    int len, rlen, instate, curlen, maxlen;
    char filling[CHUNK];

    buffer = malloc(CHUNK);
    if (!buffer) return 1;
    current = malloc(CHUNK);
    if (!current) return 1;

    klee_make_symbolic(&len, sizeof(len), "len");
    klee_make_symbolic(&rlen, sizeof(rlen), "rlen");
    klee_make_symbolic(&instate, sizeof(instate), "instate");
    klee_make_symbolic(&curlen, sizeof(curlen), "curlen");
    klee_make_symbolic(&maxlen, sizeof(maxlen), "maxlen");
    klee_make_symbolic(current, CHUNK, "current");
    klee_make_symbolic(filling, CHUNK, "filling");

    if (len < 0) len = 0;
    if (rlen < 0) rlen = 0;
    if (curlen < 0) curlen = 0;
    if (maxlen < 0) maxlen = 0;
    if (instate < 0) instate = 0;
    if (instate > 3) instate = 3;

    if (instate == 2) {
        if (len >= rlen) {
            len = rlen;
            rlen = 0;
            memcpy(buffer, current, len);
            instate = 3;
            curlen = 0;
        } else {
            klee_assert(0 && "SAILR_REACH_ASSERT");
            memcpy(buffer, current, len);
            rlen -= len;
            current += len;
        }
    } else if (instate == 1) {
        if (len > CHUNK) len = CHUNK;
        memcpy(buffer, &filling[0], len);
        curlen += len;
        if (curlen >= maxlen) {
            curlen = maxlen;
        }
    }

    free(buffer);
    free(current);
    return 0;
}