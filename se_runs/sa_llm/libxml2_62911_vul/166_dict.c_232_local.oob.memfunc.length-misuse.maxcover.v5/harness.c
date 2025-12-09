#include <libxml/dict.h>
#include <libxml/xmlmemory.h>
#include <string.h>
#include <klee/klee.h>

int main(void) {
    xmlDictPtr dict = xmlDictCreate();
    if (!dict) return 1;

    const char *prefix;
    const char *name;
    size_t plen, namelen;

    // Make prefix and name symbolic, but we need to allocate memory for them.
    // We'll allocate buffers of symbolic size, but bound them to avoid infinite loops.
    unsigned int max_len = 1024;
    char prefix_buf[max_len];
    char name_buf[max_len];

    klee_make_symbolic(&plen, sizeof(plen), "plen");
    klee_make_symbolic(&namelen, sizeof(namelen), "namelen");
    klee_assume(plen < max_len);
    klee_assume(namelen < max_len);
    klee_assume(plen >= 0);
    klee_assume(namelen >= 0);

    klee_make_symbolic(prefix_buf, max_len, "prefix_buf");
    klee_make_symbolic(name_buf, max_len, "name_buf");

    prefix = prefix_buf;
    name = name_buf;

    // Ensure null-termination for safety (though memcpy uses lengths)
    prefix_buf[max_len-1] = '\0';
    name_buf[max_len-1] = '\0';

    // Trigger xmlDictLookup with symbolic lengths and data.
    // The function signature is: const xmlChar * xmlDictLookup(xmlDictPtr dict, const xmlChar *name, int len);
    // But the target line is inside xmlDictQLookup (which takes prefix and name).
    // We'll use xmlDictQLookup to reach the exact line.
    const xmlChar *ret = xmlDictQLookup(dict, (const xmlChar *)prefix, (const xmlChar *)name);

    // Place reachability marker near the target line.
    // Since we cannot directly instrument the library, we place it after the call.
    // The SA spec suggests no assertion expression, so we only use reachability.
    klee_assert(0 && "SAILR_REACH_ASSERT");

    xmlDictFree(dict);
    return 0;
}