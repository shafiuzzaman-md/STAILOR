#include <klee/klee.h>
#include "testchar.c"

int main() {
    klee_make_symbolic(testCharRanges, sizeof(testCharRanges), "testCharRanges");
    int result = testCharRanges();
    return result;
}