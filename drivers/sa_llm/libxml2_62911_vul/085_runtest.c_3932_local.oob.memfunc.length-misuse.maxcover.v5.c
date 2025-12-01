#include <klee/klee.h>
#include "runtest.c"

int main() {
    char filename[500];
    klee_make_symbolic(filename, sizeof(filename), "filename");
    
    // Ensure null-terminated string
    filename[sizeof(filename)-1] = '\0';
    
    // Call the vulnerable function
    int result = patternTest(filename, NULL, NULL, 0);
    
    return 0;
}