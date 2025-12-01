#include <klee/klee.h>
#include "pattern.c"

int main() {
    // Create a symbolic xmlPattern structure
    xmlPatternPtr comp = xmlNewPattern();
    if (comp == NULL) {
        return 0;
    }

    // Make the nbStep field symbolic to potentially trigger the vulnerability
    klee_make_symbolic(&comp->nbStep, sizeof(comp->nbStep), "nbStep");

    // Call xmlFreePatternInternal which contains the suspicious memset at line 258
    xmlFreePatternInternal(comp);

    return 0;
}