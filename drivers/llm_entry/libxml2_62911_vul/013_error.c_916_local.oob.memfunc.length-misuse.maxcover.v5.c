#include <klee/klee.h>
#include "error.c"

int main() {
    xmlError err;
    
    // Initialize symbolic fields that might be freed in xmlResetError
    klee_make_symbolic(&err.message, sizeof(err.message), "err_message");
    klee_make_symbolic(&err.file, sizeof(err.file), "err_file");
    klee_make_symbolic(&err.str1, sizeof(err.str1), "err_str1");
    klee_make_symbolic(&err.str2, sizeof(err.str2), "err_str2");
    klee_make_symbolic(&err.str3, sizeof(err.str3), "err_str3");
    
    // Set a non-OK error code to ensure the reset path is taken
    err.code = 1;  // Non-zero error code
    
    xmlResetError(&err);
    
    return 0;
}