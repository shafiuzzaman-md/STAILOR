#include <klee/klee.h>
#include "runtest.c"

int main() {
    const char *filename = "test_input.txt";
    const char *result = "test_output.txt";
    const char *err = NULL;
    int options = 0;
    
    klee_make_symbolic(&options, sizeof(options), "options");
    
    int res = automataTest(filename, result, err, options);
    
    return 0;
}