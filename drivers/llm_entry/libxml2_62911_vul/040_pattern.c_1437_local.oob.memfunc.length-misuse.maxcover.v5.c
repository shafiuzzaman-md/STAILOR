#include <klee/klee.h>
#include "pattern.c"

int main() {
    int size;
    klee_make_symbolic(&size, sizeof(size), "size");
    
    xmlNewStreamComp(size);
    return 0;
}