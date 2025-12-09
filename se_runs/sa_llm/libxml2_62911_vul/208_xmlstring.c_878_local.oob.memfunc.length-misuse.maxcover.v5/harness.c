#include <libxml/xmlstring.h>
#include <libxml/parser.h>
#include <klee/klee.h>

int main(void) {
    xmlChar* utf;
    int len;
    int size;
    xmlChar* ret;

    // Symbolic input buffer for utf
    // We need to allocate a concrete buffer but fill it with symbolic bytes.
    // Let's assume a maximum length to avoid unbounded allocation.
    #define MAX_UTF_LEN 1024
    utf = (xmlChar*) xmlMallocAtomic(MAX_UTF_LEN);
    if (utf == NULL) return 0;
    klee_make_symbolic(utf, MAX_UTF_LEN, "utf");

    // Symbolic length parameter
    klee_make_symbolic(&len, sizeof(len), "len");

    // Ensure len is non-negative (as per bounds_hints)
    klee_assume(len >= 0);

    // Call xmlUTF8Strndup, which internally calls xmlStrndup
    ret = xmlUTF8Strndup(utf, len);

    // Place reachability marker: we want to assert we reached the target line.
    // The target line is inside xmlStrndup (called by xmlUTF8Strndup).
    // We'll insert a klee_assert(0) after the call to indicate we reached the vulnerable path.
    // However, we cannot directly instrument the library function.
    // Instead, we can add a marker that will be triggered if the path is taken.
    // Since we cannot modify the library, we rely on the fact that if xmlUTF8Strndup returns
    // a non-NULL pointer, the memcpy at line 878 was executed.
    // But note: xmlUTF8Strndup may return NULL if allocation fails.
    // We'll add a reachability assertion when ret is not NULL.
    if (ret != NULL) {
        klee_assert(0 && "SAILR_REACH_ASSERT");
        // Optionally, we could also add an SAILR_ASSERT if an expression was provided.
        // Since no assertion expression is given, we don't add SAILR_ASSERT.
        xmlFree(ret);
    }

    xmlFree(utf);
    return 0;
}