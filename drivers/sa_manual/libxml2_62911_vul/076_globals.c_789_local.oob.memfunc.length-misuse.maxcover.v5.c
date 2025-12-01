#include <klee/klee.h>
#include "globals.h"

int main() {
    xmlGlobalState *gs = malloc(sizeof(xmlGlobalState));
    if (gs == NULL) return -1;
    
    klee_make_symbolic(gs, sizeof(xmlGlobalState), "gs");
    
    xmlInitGlobalState(gs);
    
    klee_assert(1);
    
    free(gs);
    return 0;
}