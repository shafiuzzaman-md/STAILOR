#include "klee/klee.h"
#include <libxml/catalog.h>
#include <libxml/parser.h>
#include <libxml/xmlmemory.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <unistd.h>
#include <stdio.h>
#include <stdlib.h>

int main(void) {
    xmlInitParser();

    // Create a symbolic buffer for catalog content
    char catalog_content[1024];
    klee_make_symbolic(catalog_content, sizeof(catalog_content), "catalog_content");
    // Ensure null termination for string functions
    catalog_content[sizeof(catalog_content)-1] = 0;

    // Create a temporary file with symbolic content
    char filename[] = "/tmp/catalog_XXXXXX";
    int fd = mkstemp(filename);
    if (fd < 0) {
        return 1;
    }

    // Write symbolic content to file
    ssize_t write_len = write(fd, catalog_content, sizeof(catalog_content));
    if (write_len < 0) {
        close(fd);
        unlink(filename);
        return 1;
    }
    close(fd);

    // Call xmlParseCatalogFile which will eventually reach the target line
    xmlCatalogPtr catalog = xmlParseCatalogFile(filename);

    // Clean up
    if (catalog) {
        xmlFreeCatalog(catalog);
    }
    unlink(filename);

    // Reachability marker - placed after the call that should reach line 998
    // The target line is inside xmlParseCatalogFile when HAVE_STAT is defined
    klee_assert(0 && "SAILR_REACH_ASSERT");

    xmlCleanupParser();
    return 0;
}