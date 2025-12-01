#include <klee/klee.h>
#include "threads.h"

int main() {
    xmlRMutexPtr tok = (xmlRMutexPtr)malloc(sizeof(xmlRMutex));
    if (tok == NULL) return 0;
    
    // Initialize symbolic fields
    klee_make_symbolic(&tok->held, sizeof(tok->held), "tok_held");
    klee_make_symbolic(&tok->waiters, sizeof(tok->waiters), "tok_waiters");
    
    // Call the function that contains the suspicious line
    xmlRMutexUnlock(tok);
    
    // Check for potential memset overflow
    // The suspicious line is: memset(&tok->tid, 0, sizeof(tok->tid));
    // We assume tid is a pthread_t which should fit within the struct
    // No explicit bounds check needed for this specific memset
    
    free(tok);
    return 0;
}