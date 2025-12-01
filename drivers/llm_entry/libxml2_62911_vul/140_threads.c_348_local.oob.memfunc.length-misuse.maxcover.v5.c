#include <klee/klee.h>
#include "threads.h"

int main() {
    xmlRMutexPtr tok;
    
    // Make symbolic the mutex structure
    tok = (xmlRMutexPtr)malloc(sizeof(xmlRMutex));
    klee_make_symbolic(tok, sizeof(xmlRMutex), "tok");
    
    // Initialize fields to avoid uninitialized memory issues
    tok->held = klee_int("held");
    tok->waiters = klee_int("waiters");
    
    // Call the function under test
    xmlRMutexUnlock(tok);
    
    free(tok);
    return 0;
}