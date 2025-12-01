#include <klee/klee.h>
#include "testdict.c"

int main() {
    // Initialize global variables that might be used
    klee_make_symbolic(&NB_STRINGS_MAX, sizeof(NB_STRINGS_MAX), "NB_STRINGS_MAX");
    klee_make_symbolic(&NB_STRINGS_MIN, sizeof(NB_STRINGS_MIN), "NB_STRINGS_MIN");
    klee_make_symbolic(&NB_STRINGS_NS, sizeof(NB_STRINGS_NS), "NB_STRINGS_NS");
    
    // Call the test function that contains the suspicious memset
    testall_dict();
    
    return 0;
}