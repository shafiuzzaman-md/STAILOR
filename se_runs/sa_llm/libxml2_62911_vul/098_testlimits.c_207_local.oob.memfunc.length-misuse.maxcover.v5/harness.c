#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <libxml/xmlreader.h>
#include "klee/klee.h"

#define CHUNK 4096

typedef struct {
    const char *start;
    const char *end;
} HugeTest;

static HugeTest hugeTests[] = {
    {"<root>", "</root>"},
    {NULL, NULL}
};

static char filling[CHUNK];
static int curlen = 0;
static int maxlen = 0;
static int currentTest = 0;
static int instate = 0;
static int rlen = 0;
static const char *current = NULL;

int main(void) {
    int len;
    char buffer[CHUNK * 2];

    klee_make_symbolic(&len, sizeof(len), "len");
    klee_make_symbolic(&instate, sizeof(instate), "instate");
    klee_make_symbolic(&curlen, sizeof(curlen), "curlen");
    klee_make_symbolic(&maxlen, sizeof(maxlen), "maxlen");
    klee_make_symbolic(&currentTest, sizeof(currentTest), "currentTest");

    klee_assume(len >= 0);
    klee_assume(curlen >= 0);
    klee_assume(maxlen >= 0);
    klee_assume(currentTest >= 0 && currentTest < 1);

    if (instate == 1) {
        if (len > CHUNK) len = CHUNK;
        klee_assert(0 && "SAILR_REACH_ASSERT");
        memcpy(buffer, &filling[0], len);
        curlen += len;
        if (curlen >= maxlen) {
            rlen = strlen(hugeTests[currentTest].end);
            current = hugeTests[currentTest].end;
            instate = 2;
        } else {
            if (curlen > 0) {
                fprintf(stderr, ".");
            }
        }
    }

    return 0;
}