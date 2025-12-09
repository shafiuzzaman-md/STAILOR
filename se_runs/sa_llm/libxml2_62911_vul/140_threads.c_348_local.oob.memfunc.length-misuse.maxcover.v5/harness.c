#include "klee/klee.h"
#include <libxml/parser.h>
#include <libxml/threads.h>
#include <pthread.h>
#include <string.h>

int main(void) {
    xmlInitParser();

    xmlMutexPtr tok;
    tok = (xmlMutexPtr)malloc(sizeof(xmlMutex));
    if (!tok) return 0;

    klee_make_symbolic(&tok->held, sizeof(tok->held), "held");
    klee_make_symbolic(&tok->waiters, sizeof(tok->waiters), "waiters");

    if (XML_IS_THREADED() == 0) {
        free(tok);
        return 0;
    }

    pthread_mutex_lock(&tok->lock);
    tok->held--;
    if (tok->held == 0) {
        if (tok->waiters)
            pthread_cond_signal(&tok->cv);
        klee_assert(0 && "SAILR_REACH_ASSERT");
        memset(&tok->tid, 0, sizeof(tok->tid));
    }
    pthread_mutex_unlock(&tok->lock);

    free(tok);
    return 0;
}