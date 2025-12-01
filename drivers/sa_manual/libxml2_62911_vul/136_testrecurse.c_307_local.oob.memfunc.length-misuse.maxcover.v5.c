#include <klee/klee.h>
#include "testrecurse.h"

#define MAX_NODES 1000

static char *current;
static int rlen;
static int curseg;
static hugeDoc *hugeDocParts;

int main() {
    char buffer[1024];
    int len;
    
    klee_make_symbolic(&len, sizeof(len), "len");
    klee_assume(len >= 0);
    klee_assume(len < 1024);
    
    current = "test_data";
    rlen = strlen(current);
    curseg = 0;
    
    int result = hugeRead(NULL, buffer, len);
    
    klee_assert(len <= rlen);
    
    return 0;
}