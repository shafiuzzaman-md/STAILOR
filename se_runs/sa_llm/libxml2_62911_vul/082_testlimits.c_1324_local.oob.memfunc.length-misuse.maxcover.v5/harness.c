#include <libxml/xmlreader.h>
#include <libxml/parser.h>
#include <string.h>
#include <stdio.h>
#include <stdlib.h>
#include <klee/klee.h>

int main(void) {
    const char* filename;
    unsigned long limit;
    unsigned int crazy_indx;
    int fail;
    int ret;
    int res = 0;
    xmlTextReaderPtr reader;
    xmlDocPtr doc;

    // Make symbolic inputs
    char filename_buf[256];
    klee_make_symbolic(filename_buf, sizeof(filename_buf), "filename_buf");
    filename_buf[255] = '\0'; // ensure null termination
    filename = filename_buf;

    klee_make_symbolic(&limit, sizeof(limit), "limit");
    klee_make_symbolic(&crazy_indx, sizeof(crazy_indx), "crazy_indx");
    klee_make_symbolic(&fail, sizeof(fail), "fail");

    // Create a small XML document in memory
    const char* xml_content = "<root><elem>test</elem></root>";
    size_t xml_len = strlen(xml_content);

    // Initialize libxml2
    xmlInitParser();

    // Create reader from memory
    reader = xmlReaderForMemory(xml_content, xml_len, NULL, NULL, 0);
    if (reader == NULL) {
        xmlCleanupParser();
        return 1;
    }

    // Simulate the reading loop from the snippet
    ret = xmlTextReaderRead(reader);
    while (ret == 1) {
        ret = xmlTextReaderRead(reader);
    }

    // Now we are at the condition from the snippet
    if (ret != 0) {
        if (fail) {
            res = 0;
        } else {
            // This is the target line: strncmp(filename, "crazy:", 6)
            // Place reachability marker just before it
            klee_assert(0 && "SAILR_REACH_ASSERT");
            // The SA spec suggests no specific assertion expression, so no SAILR_ASSERT
            if (strncmp(filename, "crazy:", 6) == 0) {
                fprintf(stderr, "Failed to parse '%s' %u\n", filename, crazy_indx);
            } else {
                fprintf(stderr, "Failed to parse '%s' %lu\n", filename, (unsigned long) limit);
            }
            res = 1;
        }
    } else {
        res = 0;
    }

    // Cleanup
    xmlFreeTextReader(reader);
    xmlCleanupParser();

    return res;
}