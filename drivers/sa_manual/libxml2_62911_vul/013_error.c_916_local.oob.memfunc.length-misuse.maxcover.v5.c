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
    
    // Set error code to ensure we go through the reset path
    err.code = XML_ERR_INTERNAL_ERROR;
    
    xmlResetError(&err);
    
    // Assertion for the memset at line 916 - check that the error struct was properly reset
    // This verifies the memset operation completed without issues
    klee_assert(err.code == XML_ERR_OK);
    
    return 0;
}