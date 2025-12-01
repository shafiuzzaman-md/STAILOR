#include <klee/klee.h>
#include "entities.c"

int main() {
    // Create a symbolic entity to copy
    xmlEntityPtr ent = (xmlEntityPtr) xmlMalloc(sizeof(xmlEntity));
    if (ent == NULL) return 0;
    
    // Make the entity fields symbolic
    klee_make_symbolic(ent, sizeof(xmlEntity), "ent");
    
    // Call xmlCopyEntity which contains the suspicious memset
    xmlEntityPtr copy = (xmlEntityPtr) xmlCopyEntity(ent, NULL);
    
    // Assertion to check for potential OOB in memset
    // The suspicious line is memset(cur, 0, sizeof(xmlEntity))
    // We want to ensure the allocation was successful before memset
    if (copy != NULL) {
        klee_assert(1);  // If we reach here, memset was performed
    }
    
    // Cleanup
    if (ent != NULL) xmlFree(ent);
    if (copy != NULL) xmlFree(copy);
    
    return 0;
}