#include <klee/klee.h>
#include "testThreads.c"

int main(void) {
    klee_make_symbolic(&threadParams, sizeof(threadParams), "threadParams");
    klee_make_symbolic(&catalog, sizeof(catalog), "catalog");
    
    xmlInitParser();
    
    if (xmlCheckThreadLocalStorage() != 0) {
        return 1;
    }

#if defined(LIBXML_THREAD_ENABLED) && defined(LIBXML_CATALOG_ENABLED)
    xmlLoadCatalog(catalog);
    
    unsigned int i;
    int ret;
    pthread_t tid[num_threads];
    
    memset(tid, 0xff, sizeof(*tid)*num_threads);
    
    for (i = 0; i < num_threads; i++) {
        ret = pthread_create(&tid[i], NULL, thread_specific_data,
                           (void *) &threadParams[i]);
        if (ret != 0) {
            return 1;
        }
    }
    
    for (i = 0; i < num_threads; i++) {
        void *result;
        ret = pthread_join(tid[i], &result);
        if (ret != 0) {
            return 1;
        }
    }
    
    xmlCatalogCleanup();
#endif

    xmlCleanupParser();
    return 0;
}