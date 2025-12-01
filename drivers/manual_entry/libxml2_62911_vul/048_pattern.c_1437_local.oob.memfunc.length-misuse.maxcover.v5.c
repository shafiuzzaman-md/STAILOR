#include <klee/klee.h>
#include "pattern.c"

int main() {
    int size;
    klee_make_symbolic(&size, sizeof(size), "size");
    
    xmlStreamCompPtr result = xmlNewStreamComp(size);
    
    if (result != NULL) {
        xmlFreeStreamComp(result);
    }
    
    return 0;
}