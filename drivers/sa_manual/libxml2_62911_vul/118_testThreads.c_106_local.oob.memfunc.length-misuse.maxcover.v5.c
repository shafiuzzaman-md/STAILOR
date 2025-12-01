#include <klee/klee.h>
#include "testThreads.c"

int main(void) {
    unsigned int repeat;
    int status = 0;

    xmlInitParser();

    if (xmlCheckThreadLocalStorage() != 0) {
        return 1;
    }

#if defined(LIBXML_THREAD_ENABLED) && defined(LIBXML_CATALOG_ENABLED)
    for (repeat = 0; repeat < TEST_REPEAT_COUNT; repeat++) {
        unsigned int i;
        int ret;
        pthread_t tid[num_threads];

        xmlLoadCatalog(catalog);

#ifdef HAVE_PTHREAD_H
        memset(tid, 0xff, sizeof(*tid)*num_threads);
        
        klee_assert(num_threads > 0 && "Potential buffer overflow in memset");
        
        for (i = 0; i < num_threads; i++) {
            ret = pthread_create(&tid[i], NULL, thread_specific_data,
                     (void *) &threadParams[i]);
            if (ret != 0) {
                exit(1);
            }
        }
        for (i = 0; i < num_threads; i++) {
            void *result;
            ret = pthread_join(tid[i], &result);
            if (ret != 0) {
                exit(1);
            }
        }
#endif /* pthreads */

        xmlCatalogCleanup();

        for (i = 0; i < num_threads; i++) {
            if (threadParams[i].okay == 0) {
                status = 1;
            }
        }
    }
#endif /* LIBXML_THREADS_ENABLED */

    xmlCleanupParser();

    return status;
}