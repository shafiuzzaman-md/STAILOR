#include <klee/klee.h>
#include "entities.c"

int main() {
    // Create symbolic input for xmlCopyEntity
    unsigned char payload_buffer[256];
    klee_make_symbolic(payload_buffer, sizeof(payload_buffer), "payload_buffer");
    
    // Call xmlCopyEntity with symbolic payload
    xmlCopyEntity(payload_buffer, NULL);
    
    return 0;
}