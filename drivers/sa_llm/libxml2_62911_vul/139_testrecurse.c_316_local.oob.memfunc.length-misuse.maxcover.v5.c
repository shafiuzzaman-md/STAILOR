#include <klee/klee.h>
#include "testrecurse.h"

#define MAX_NODES 1000

static char *current = NULL;
static int rlen = 0;
static int curseg = 0;
static struct hugeDoc *hugeDocParts = NULL;

struct hugeDoc {
    const char *URL;
    const char *start;
    const char *segment;
    const char *finish;
};

static struct hugeDoc hugeDocTable[] = {
    {"test://huge", "start", "segment", "finish"},
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
            current = hugeDocParts->finish;
        } else {
            current = hugeDocParts->segment;
        }
        rlen = strlen(current);
    } else {
        memcpy(buffer, current, len);
        klee_assert(len <= rlen);
        rlen -= len;
        current += len;
    }
    return (len);
}

static void *hugeOpen(const char * URI) {
    int i;

    if (URI == NULL)
        return(NULL);

    for (i = 0; hugeDocTable[i].URL; i++) {
        if (strcmp(URI, hugeDocTable[i].URL) == 0) {
            hugeDocParts = hugeDocTable + i;
            curseg = 0;
            current = hugeDocParts->start;
            rlen = strlen(current);
            return((void *) current);
        }
    }

    return(NULL);
}

static int hugeClose(void * context) {
    if (context == NULL) return(-1);
    return(0);
}

int main() {
    char buffer[1024];
    int len;
    void *context;

    klee_make_symbolic(&len, sizeof(len), "len");
    klee_assume(len >= 0);
    klee_assume(len < 1024);

    context = hugeOpen("test://huge");
    if (context == NULL) return 1;

    int result = hugeRead(context, buffer, len);
    
    hugeClose(context);
    return 0;
}