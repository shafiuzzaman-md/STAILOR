#include <klee/klee.h>
#include "testchar.c"

int main() {
    // Initialize symbolic data buffer
    char data[5];
    klee_make_symbolic(data, sizeof(data), "data");
    
    // Call the test function
    return testCharRanges();
}