#include <klee/klee.h>
#include "pattern.c"

int main() {
    // Call xmlNewPattern which is the function containing the suspicious line
    xmlPatternPtr pattern = xmlNewPattern();
    
    // If pattern creation succeeded, free it to avoid memory leaks
    if (pattern != NULL) {
        xmlFreePattern(pattern);
    }
    
    return 0;
}