#include "klee/klee.h"
#include <libxml/parser.h>
#include <libxml/catalog.h>
#include <pthread.h>
#include <string.h>
#include <stdlib.h>

#define TEST_REPEAT_COUNT 1
#define MAX_THREADS 10

typedef struct {
    int id;
    const char* xmlData;
    size_t xmlSize;
} ThreadParam;

static void* thread_specific_data(void* arg) {
    ThreadParam* param = (ThreadParam*)arg;
    xmlDocPtr doc = xmlReadMemory(param->xmlData, param->xmlSize, "noname.xml", NULL, 0);
    if (doc) {
        xmlFreeDoc(doc);
    }
    return NULL;
}

int main(void) {
    int num_threads;
    klee_make_symbolic(&num_threads, sizeof(num_threads), "num_threads");
    klee_assume(num_threads >= 0);
    klee_assume(num_threads <= MAX_THREADS);

    char catalog[256];
    klee_make_symbolic(catalog, sizeof(catalog), "catalog");
    catalog[sizeof(catalog)-1] = '\0';

    pthread_t tid[MAX_THREADS];
    ThreadParam threadParams[MAX_THREADS];

    for (int i = 0; i < MAX_THREADS; i++) {
        threadParams[i].id = i;
        threadParams[i].xmlData = "<root/>";
        threadParams[i].xmlSize = 7;
    }

    xmlInitParser();
    xmlLoadCatalog(catalog);

#ifdef HAVE_PTHREAD_H
    klee_assert(0 && "SAILR_REACH_ASSERT");
    memset(tid, 0xff, sizeof(*tid)*num_threads);

    for (unsigned int i = 0; i < num_threads; i++) {
        int ret = pthread_create(&tid[i], NULL, thread_specific_data,
                                 (void *) &threadParams[i]);
        if (ret != 0) {
            return 1;
        }
    }

    for (unsigned int i = 0; i < num_threads; i++) {
        pthread_join(tid[i], NULL);
    }
#endif

    xmlCleanupParser();
    return 0;
}