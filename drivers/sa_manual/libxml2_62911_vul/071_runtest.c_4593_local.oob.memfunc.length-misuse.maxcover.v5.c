#include <klee/klee.h>
#include "runtest.c"

int main() {
    const char* filename;
    const char* result;
    const char* err;
    int options = 0;
    
    // Make symbolic inputs for the function parameters
    klee_make_symbolic(&filename, sizeof(filename), "filename");
    klee_make_symbolic(&result, sizeof(result), "result");
    klee_make_symbolic(&err, sizeof(err), "err");
    
    // Call the target function
    int res = regexpTest(filename, result, err, options);
    
    return res;
}