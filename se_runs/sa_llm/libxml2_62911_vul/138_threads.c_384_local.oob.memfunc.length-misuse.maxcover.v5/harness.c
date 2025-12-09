#include "klee/klee.h"
#include <libxml/parser.h>
#include <libxml/threads.h>
#include <pthread.h>

int main(void) {
    int ret;
    pthread_t id;

    klee_make_symbolic(&ret, sizeof(ret), "ret");
    klee_make_symbolic(&id, sizeof(id), "id");

    if (XML_IS_THREADED() == 0) {
        return 0;
    }

    id = pthread_self();

    klee_assert(0 && "SAILR_REACH_ASSERT");
    memcpy(&ret, &id, sizeof(ret));

    return ret;
}