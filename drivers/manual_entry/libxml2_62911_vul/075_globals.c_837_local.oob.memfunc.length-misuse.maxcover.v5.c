#include <klee/klee.h>
#include "globals.h"

int main() {
    int allowFailure;
    klee_make_symbolic(&allowFailure, sizeof(allowFailure), "allowFailure");
    
    xmlNewGlobalState(allowFailure);
    return 0;
}