#include <string.h>
#include <pthread.h>

/* [Auto-Fix] Concrete pthread_once for KLEE linking */
/* #ifdef __KLEE__ (Removed to ensure linkage) */
#ifdef __cplusplus
extern "C" {
#endif

#ifndef KLEE_ONCE_CACHE_SIZE
#define KLEE_ONCE_CACHE_SIZE 64
#endif

static void* _klee_once_seen[KLEE_ONCE_CACHE_SIZE];
static int _klee_once_count = 0;

/* Strong definition to override library/POSIX weak symbols */
int pthread_once(pthread_once_t *once_control, void (*init_routine)(void)) {
    // Check cache for this control pointer
    for (int i = 0; i < _klee_once_count; i++) {
        if (_klee_once_seen[i] == (void*)once_control) {
            return 0; // Already initialized
        }
    }
    // Not found: Run init
    if (init_routine) init_routine();

    // Mark seen
    if (_klee_once_count < KLEE_ONCE_CACHE_SIZE) {
        _klee_once_seen[_klee_once_count++] = (void*)once_control;
    }
    return 0;
}
#ifdef __cplusplus
}
#endif
/* #endif */


#ifndef BUG_ASSERT
#define BUG_ASSERT(cond) klee_assert(!(cond) && "BUG_ASSERT")
#endif
#ifndef REACH_ASSERT
#define REACH_ASSERT() klee_assert(0 && "REACH_ASSERT")
#endif


#ifndef CHECK_READ
#ifdef __KLEE__
  #define CHECK_READ(ptr, size) klee_check_memory_access((void*)(ptr), (size))
#else
  #define CHECK_READ(ptr, size) ((void)0)
#endif
#endif

/* --- Global Constants --- */
#include <stddef.h>
#include <stdlib.h>
#include <stdint.h>
#include <assert.h>
#include <stdbool.h>
#include <stdio.h>
#include <pthread.h>
#include <klee/klee.h>
#include <libxml/dict.h>
#include <libxml/xmlmemory.h>

#ifndef MAX_KEY_LEN
#define MAX_KEY_LEN 4096
#endif

/* --- Stub Functions --- */
#ifdef __KLEE__
/* Concrete pthread_once for KLEE linking */
#ifndef KLEE_ONCE_CACHE_SIZE
#define KLEE_ONCE_CACHE_SIZE 64
#endif
static void* _klee_once_seen[KLEE_ONCE_CACHE_SIZE];
static int _klee_once_count = 0;
int pthread_once(pthread_once_t *once_control, void (*init_routine)(void)) {
    for (int i = 0; i < _klee_once_count; i++) {
        if (_klee_once_seen[i] == (void*)once_control) {
            return 0;
        }
    }
    if (init_routine) init_routine();
    if (_klee_once_count < KLEE_ONCE_CACHE_SIZE) {
        _klee_once_seen[_klee_once_count++] = (void*)once_control;
    }
    return 0;
}
#endif

#ifndef __KLEE__
#include <sys/mman.h>
#include <unistd.h>
void* strict_alloc(size_t size) {
    size_t page_size = sysconf(_SC_PAGESIZE);
    size_t num_pages = (size + page_size - 1) / page_size + 1;
    size_t total_size = num_pages * page_size;
    char* base = mmap(NULL, total_size, PROT_READ|PROT_WRITE, MAP_PRIVATE|MAP_ANONYMOUS, -1, 0);
    if (base == MAP_FAILED) return NULL;
    char* guard = base + (num_pages - 1) * page_size;
    mprotect(guard, page_size, PROT_NONE);
    return guard - size;
}
#endif

/* --- Embedded Functions --- */
/* None needed */

/* --- Harness --- */
int main(int argc, char **argv) {
    xmlDictPtr dict = xmlDictCreate();
    if (dict == NULL) return 0;

    /* Insert a short key */
    const char *short_key = "short";
    const xmlChar *inserted = xmlDictLookup(dict, (const xmlChar *)short_key, -1);
    if (inserted == NULL) {
        xmlDictFree(dict);
        return 0;
    }

    /* Symbolic length for lookup */
    unsigned int len;
    klee_make_symbolic(&len, sizeof(len), "len");
    klee_assume(len > 0);
    klee_assume(len < 4096);
    klee_assume(len > 5); /* strlen("short") = 5 */

    /* Symbolic name buffer */
    char name[MAX_KEY_LEN];
    klee_make_symbolic(name, sizeof(name), "name");
    name[sizeof(name) - 1] = '\0';
    /* Force first 5 bytes to match "short" */
    for (int i = 0; i < 5; i++) {
        klee_assume(name[i] == short_key[i]);
    }
    /* Ensure null terminator at len to satisfy memcmp condition */
    klee_assume(name[len] == '\0');

    /* Perform lookup with longer len */
    const xmlChar *found = xmlDictLookup(dict, (const xmlChar *)name, len);
    (void)found;

    xmlDictFree(dict);
    return 0;
}