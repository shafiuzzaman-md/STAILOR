#include <klee/klee.h>
#include "list.c"

int main() {
    // Create a list with NULL deallocator and comparator
    xmlListPtr list = xmlListCreate(NULL, NULL);
    
    // Make symbolic data to insert
    char data[16];
    klee_make_symbolic(data, sizeof(data), "data");
    
    // Call xmlListInsert with symbolic data
    if (list != NULL) {
        xmlListInsert(list, data);
    }
    
    return 0;
}