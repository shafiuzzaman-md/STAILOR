#include <klee/klee.h>
#include "globals.h"

int main() {
    int allowFailure;
    klee_make_symbolic(&allowFailure, sizeof(allowFailure), "allowFailure");
    
    xmlGlobalStatePtr result = xmlNewGlobalState(allowFailure);
    
    if (result != NULL) {
        klee_assert(result->initialized == 1);
    }
    
    return 0;
}