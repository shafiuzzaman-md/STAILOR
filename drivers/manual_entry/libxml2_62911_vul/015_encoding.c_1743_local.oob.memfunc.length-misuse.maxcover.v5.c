#include <klee/klee.h>
#include "encoding.h"

int main() {
    char name[100];
    klee_make_symbolic(name, sizeof(name), "name");
    
    // Ensure null termination for string safety
    name[99] = '\0';
    
    xmlFindCharEncodingHandler(name);
    return 0;
}