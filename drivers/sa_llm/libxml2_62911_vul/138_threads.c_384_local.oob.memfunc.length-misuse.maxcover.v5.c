#include <klee/klee.h>
#include "threads.c"

int main() {
    klee_make_symbolic(&xmlParserInitialized, sizeof(xmlParserInitialized), "xmlParserInitialized");
    
    if (XML_IS_THREADED() != 0) {
        pthread_t id;
        int ret;
        id = pthread_self();
        memcpy(&ret, &id, sizeof(ret));
        klee_assert(sizeof(ret) >= sizeof(id));
    }
    
    return 0;
}