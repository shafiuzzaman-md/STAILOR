#include <klee/klee.h>
#include "threads.h"

int main() {
    // Initialize libxml2 threading system
    xmlInitThreads();
    
    // Call xmlGetThreadId which contains the suspicious memcpy
    int thread_id = xmlGetThreadId();
    
    // Add assertion to check for potential buffer overflow
    // The suspicious line copies pthread_t into an int, which may overflow
    // if pthread_t is larger than int
    klee_assert(sizeof(pthread_t) <= sizeof(int));
    
    return 0;
}