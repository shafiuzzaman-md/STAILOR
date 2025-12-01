#include <klee/klee.h>
#include "pattern.c"

int main() {
    // Create a pattern structure that will be freed
    xmlPatternPtr pattern = xmlNewPattern();
    
    // Make the pattern symbolic to explore different states
    if (pattern != NULL) {
        klee_make_symbolic(pattern, sizeof(xmlPattern), "pattern");
        
        // Call the free function which contains the suspicious memset
        xmlFreePattern(pattern);
    }
    
    return 0;
}