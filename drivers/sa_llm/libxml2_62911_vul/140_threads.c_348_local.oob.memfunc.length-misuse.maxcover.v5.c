#include <klee/klee.h>
#include "threads.h"

int main() {
    // Create a symbolic xmlRMutex structure
    xmlRMutexPtr tok = (xmlRMutexPtr)malloc(sizeof(xmlRMutex));
    klee_make_symbolic(tok, sizeof(xmlRMutex), "tok");
    
    // Initialize fields to avoid undefined behavior
    tok->held = 0;
    tok->waiters = 0;
    
    // Call the function that contains the suspicious line
    xmlRMutexUnlock(tok);
    
    // Add assertion to check for potential vulnerability
    // The suspicious line is memset(&tok->tid, 0, sizeof(tok->tid))
    // We need to ensure this operation doesn't cause out-of-bounds access
    klee_assert((void*)&tok->tid >= (void*)tok && 
                (void*)((char*)&tok->tid + sizeof(tok->tid)) <= (void*)((char*)tok + sizeof(xmlRMutex)));
    
    free(tok);
    return 0;
}