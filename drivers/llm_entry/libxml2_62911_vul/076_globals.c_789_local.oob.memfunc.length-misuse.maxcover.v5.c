#include <klee/klee.h>
#include "globals.h"

int main() {
    xmlGlobalState gs;
    
    klee_make_symbolic(&gs, sizeof(xmlGlobalState), "gs");
    
    xmlInitGlobalState(&gs);
    
    return 0;
}