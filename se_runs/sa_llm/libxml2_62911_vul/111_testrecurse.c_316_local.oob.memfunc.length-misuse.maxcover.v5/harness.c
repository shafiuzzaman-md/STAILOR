#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <libxml/parser.h>
#include <klee/klee.h>

#ifndef SAILR_ASSERT
#define SAILR_ASSERT(cond) do { if (!(cond)) { klee_assert(0 && "SAILR_ASSERT_FAIL"); } } while(0)
#endif

#define MAX_NODES 100

typedef struct {
    char *segment;
    char *finish;
} hugeDocParts_t;

static char buffer[4096];
static char *current;
static int rlen;
static int curseg = 0;
static hugeDocParts_t docParts;

static int testHugeDocCallback(char *buf, int len, void *userData) {
    if (curseg == MAX_NODES) {
        current = docParts.finish;
    } else {
        current = docParts.segment;
    }
    rlen = strlen(current);
    
    if (rlen <= len) {
        memcpy(buf, current, rlen);
        return rlen;
    } else {
        memcpy(buf, current, len);
        rlen -= len;
        current += len;
        return len;
    }
}

int main(void) {
    xmlSAXHandler sax;
    memset(&sax, 0, sizeof(sax));
    
    int len;
    klee_make_symbolic(&len, sizeof(len), "len");
    klee_assume(len >= 0);
    klee_assume(len < 4096);
    
    int segment_len;
    klee_make_symbolic(&segment_len, sizeof(segment_len), "segment_len");
    klee_assume(segment_len >= 0);
    klee_assume(segment_len < 4096);
    
    docParts.segment = (char*)malloc(segment_len + 1);
    klee_make_symbolic(docParts.segment, segment_len + 1, "segment_data");
    docParts.segment[segment_len] = '\0';
    
    docParts.finish = (char*)malloc(1);
    docParts.finish[0] = '\0';
    
    curseg = 0;
    current = docParts.segment;
    rlen = strlen(current);
    
    if (rlen > len) {
        klee_assert(0 && "SAILR_REACH_ASSERT");
        memcpy(buffer, current, len);
    }
    
    free(docParts.segment);
    free(docParts.finish);
    return 0;
}