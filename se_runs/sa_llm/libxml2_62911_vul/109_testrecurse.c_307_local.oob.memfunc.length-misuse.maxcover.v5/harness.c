#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <libxml/parser.h>
#include <libxml/tree.h>
#include "klee/klee.h"

#define MAX_NODES 100

typedef struct {
    char *segment;
    char *finish;
} hugeDocParts_t;

static char buffer[4096];
static char *current;
static int curseg = 0;
static size_t len = 0;
static size_t rlen = 0;

static hugeDocParts_t parts;

int main(void) {
    klee_make_symbolic(&len, sizeof(len), "len");
    klee_make_symbolic(&rlen, sizeof(rlen), "rlen");
    klee_make_symbolic(&curseg, sizeof(curseg), "curseg");

    klee_assume(len >= 0);
    klee_assume(rlen >= 0);
    klee_assume(curseg >= 0);

    parts.segment = malloc(1024);
    parts.finish = malloc(1024);
    klee_make_symbolic(parts.segment, 1024, "segment");
    klee_make_symbolic(parts.finish, 1024, "finish");

    current = parts.segment;

    if (len >= rlen) {
        if (curseg >= MAX_NODES + 1) {
            rlen = 0;
            return 0;
        }
        len = rlen;
        rlen = 0;
        klee_assert(0 && "SAILR_REACH_ASSERT");
        memcpy(buffer, current, len);
        curseg++;
        if (curseg == MAX_NODES) {
            current = parts.finish;
        } else {
            current = parts.segment;
        }
        rlen = strlen(current);
    }

    free(parts.segment);
    free(parts.finish);
    return 0;
}