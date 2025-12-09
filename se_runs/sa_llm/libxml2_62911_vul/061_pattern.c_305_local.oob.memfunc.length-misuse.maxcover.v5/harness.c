#include "klee/klee.h"
#include <libxml/pattern.h>
#include <libxml/xmlmemory.h>
#include <string.h>

int main(void) {
    const char* pattern;
    xmlDictPtr dict = NULL;
    const char** namespaces = NULL;
    xmlPatParserContextPtr ctx;

    // Make pattern symbolic
    unsigned int pattern_len;
    klee_make_symbolic(&pattern_len, sizeof(pattern_len), "pattern_len");
    klee_assume(pattern_len < 1024); // Reasonable bound
    pattern = (const char*)malloc(pattern_len + 1);
    klee_make_symbolic((void*)pattern, pattern_len + 1, "pattern");
    ((char*)pattern)[pattern_len] = '\0';

    // Make namespaces array symbolic
    int ns_count;
    klee_make_symbolic(&ns_count, sizeof(ns_count), "ns_count");
    klee_assume(ns_count >= 0 && ns_count < 10);
    if (ns_count > 0) {
        namespaces = (const char**)malloc((2 * ns_count + 1) * sizeof(const char*));
        for (int i = 0; i < ns_count; i++) {
            unsigned int ns_len;
            klee_make_symbolic(&ns_len, sizeof(ns_len), "ns_len");
            klee_assume(ns_len < 100);
            namespaces[2 * i] = (const char*)malloc(ns_len + 1);
            klee_make_symbolic((void*)namespaces[2 * i], ns_len + 1, "ns_prefix");
            ((char*)namespaces[2 * i])[ns_len] = '\0';
            namespaces[2 * i + 1] = (const char*)malloc(ns_len + 1);
            klee_make_symbolic((void*)namespaces[2 * i + 1], ns_len + 1, "ns_uri");
            ((char*)namespaces[2 * i + 1])[ns_len] = '\0';
        }
        namespaces[2 * ns_count] = NULL;
    }

    // Call the function that leads to xmlNewPatParserContext
    ctx = xmlNewPatParserContext(pattern, dict, namespaces);
    if (ctx) {
        // If we reach here, the vulnerable memset at line 305 was executed
        klee_assert(0 && "SAILR_REACH_ASSERT");
        xmlFreePatParserContext(ctx);
    }

    // Cleanup
    if (namespaces) {
        for (int i = 0; i < ns_count; i++) {
            free((void*)namespaces[2 * i]);
            free((void*)namespaces[2 * i + 1]);
        }
        free(namespaces);
    }
    free((void*)pattern);
    return 0;
}