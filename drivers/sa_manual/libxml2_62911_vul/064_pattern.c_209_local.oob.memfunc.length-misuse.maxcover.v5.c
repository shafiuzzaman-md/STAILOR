#include <klee/klee.h>
#include "pattern.c"

int main() {
    xmlPatternPtr pattern = xmlNewPattern();
    
    if (pattern != NULL) {
        klee_assert(pattern->maxStep >= 0);
        klee_assert(pattern->steps != NULL);
        xmlFreePattern(pattern);
    }
    
    return 0;
}