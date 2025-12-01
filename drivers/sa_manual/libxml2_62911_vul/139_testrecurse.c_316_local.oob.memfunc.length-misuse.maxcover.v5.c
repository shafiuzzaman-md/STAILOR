#include <klee/klee.h>
#include "testrecurse.h"

#define MAX_NODES 1000

static char *current;
static int rlen;
static int curseg;
static struct hugeDoc *hugeDocParts;

struct hugeDoc {
    const char *URL;
    const char *start;
    const char *segment;
    const char *finish;
};

static struct hugeDoc hugeDocTable[] = {
    {"test1", "start1", "segment1", "finish1"},
    {"test2", "start2", "segment2", "finish2"},
    {NULL, NULL, NULL, NULL}
};

static int hugeRead(void *context, char *buffer, int len) {
    if ((context == NULL) || (buffer == NULL) || (len < 0))
        return (-1);

    if (len >= rlen) {
        if (curseg >= MAX_NODES + 1) {
            rlen = 0;
            return(0);
        }
        len = rlen;
        rlen = 0;
        memcpy(buffer, current, len);
        curseg ++;
        if (curseg == MAX_NODES) {
            current = (char *)hugeDocParts->finish;
        } else {
            current = (char *)hugeDocParts->segment;
        }
        rlen = strlen(current);
    } else {
        memcpy(buffer, current, len);
        rlen -= len;
        current += len;
    }
    return (len);
}

int main() {
    char buffer[1024];
    int len;
    
    klee_make_symbolic(&len, sizeof(len), "len");
    klee_assume(len >= 0);
    klee_assume(len < 1024);
    
    current = (char *)hugeDocTable[0].start;
    rlen = strlen(current);
    curseg = 0;
    hugeDocParts = &hugeDocTable[0];
    
    int result = hugeRead((void *)current, buffer, len);
    
    klee_assert(len <= rlen);
    
    return 0;
}