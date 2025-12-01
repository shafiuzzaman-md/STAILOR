#include <klee/klee.h>
#include "pattern.h"

int main() {
    xmlPatternPtr pattern = xmlNewPattern();
    
    if (pattern != NULL) {
        xmlFreePattern(pattern);
    }
    
    return 0;
}