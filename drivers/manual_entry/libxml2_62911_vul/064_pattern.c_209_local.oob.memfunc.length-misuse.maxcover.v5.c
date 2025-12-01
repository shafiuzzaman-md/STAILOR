#include <klee/klee.h>
#include "pattern.c"

int main() {
    xmlPatternPtr result = xmlNewPattern();
    
    if (result != NULL) {
        xmlFreePattern(result);
    }
    
    return 0;
}