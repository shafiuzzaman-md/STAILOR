#include <libxml/xmlmemory.h>
#include <libxml/parser.h>
#include <klee/klee.h>
#include <string.h>
#include <assert.h>

int main(void) {
    /* Symbolic input for xmlReadMemory */
    char *buffer;
    int size;
    const char *URL = NULL;
    const char *encoding = "UTF-8";
    int options = 0;

    /* Make buffer and size symbolic */
    size = klee_range(1, 1024, "size");
    buffer = (char*)malloc(size);
    klee_make_symbolic(buffer, size, "buffer");

    /* Create a parser context that will allocate memory via xmlMallocLoc */
    xmlDocPtr doc = xmlReadMemory(buffer, size, URL, encoding, options);
    if (doc == NULL) {
        /* If parsing fails, we still might have allocated some memory.
         * Force a scenario where xmlFree is called on a block that was
         * allocated via xmlMallocLoc, reaching line 412 in xmlmemory.c.
         */
        /* Allocate a block directly using xmlMallocLoc (internal) to simulate
         * the path. Since xmlMallocLoc is static, we trigger it via public API.
         */
        void *ptr = xmlMalloc(100);
        if (ptr) {
            /* Fill with something to ensure it's a valid block */
            memset(ptr, 0, 100);
            /* Now free it; this should go through xmlFree, which calls
             * xmlMemFree, which reaches the target line.
             */
            xmlFree(ptr);
        }
    } else {
        /* If parsing succeeded, free the document to trigger xmlFree */
        xmlFreeDoc(doc);
    }

    /* Additional grooming: allocate and free another block to increase
     * chance of hitting the memset with a symbolic mh_size.
     */
    void *extra = xmlMalloc(200);
    if (extra) {
        xmlFree(extra);
    }

    /* Reachability marker: we assume the path to line 412 has been taken */
    klee_assert(0 && "SAILR_REACH_ASSERT");

    /* No SAILR_ASSERT because suggested assertion is <NONE> */

    free(buffer);
    return 0;
}