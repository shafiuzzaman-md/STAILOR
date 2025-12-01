#include <klee/klee.h>
#include "globals.h"

int main() {
    xmlGlobalState *gs = malloc(sizeof(xmlGlobalState));
    if (gs == NULL) {
        return -1;
    }
    
    memset(gs, 0, sizeof(xmlGlobalState));
    
    klee_make_symbolic(&gs->gs_xmlLastError, sizeof(xmlError), "gs_xmlLastError");
    
    xmlInitGlobalState(gs);
    
    klee_assert(1);
    
    free(gs);
    return 0;
}