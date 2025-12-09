#include <libxml/xmlreader.h>
#include <libxml/parser.h>
#include <klee/klee.h>

int main(void) {
    const char *buffer;
    int buffer_size;
    const char *url;
    const char *encoding;
    int options;

    // Make inputs symbolic
    klee_make_symbolic(&buffer_size, sizeof(buffer_size), "buffer_size");
    klee_assume(buffer_size >= 0);
    klee_assume(buffer_size < 1024); // Bound to avoid excessive memory

    buffer = (const char*)malloc(buffer_size + 1);
    klee_make_symbolic((void*)buffer, buffer_size + 1, "buffer");
    buffer[buffer_size] = '\0';

    klee_make_symbolic(&url, sizeof(url), "url");
    klee_make_symbolic(&encoding, sizeof(encoding), "encoding");
    klee_make_symbolic(&options, sizeof(options), "options");

    // Create the reader with symbolic inputs
    xmlTextReaderPtr reader = xmlReaderForMemory(buffer, buffer_size, url, encoding, options);
    if (reader) {
        // If reader creation succeeded, we are on the path that includes the memset at line 5229
        klee_assert(0 && "SAILR_REACH_ASSERT");
        xmlFreeTextReader(reader);
    }

    // Cleanup
    free((void*)buffer);
    xmlCleanupParser();
    return 0;
}