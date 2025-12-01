#include <klee/klee.h>
#include "pattern.c"

int main() {
    xmlStreamCompPtr stream_comp;
    
    klee_make_symbolic(&stream_comp, sizeof(stream_comp), "stream_comp");
    
    xmlNewStreamCtxt(stream_comp);
    
    return 0;
}