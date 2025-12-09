#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <libxml/xmlreader.h>
#include <klee/klee.h>

extern void SAILR_ASSERT(int condition);

int checkTestFile(const char *filename) {
    // Stub: assume file does not exist for path grooming
    return 0;
}

char* baseFilename(char *path) {
    // Simple stub: return the last component or the path itself
    char *slash = strrchr(path, '/');
    if (slash) return slash + 1;
    return path;
}

int main(void) {
    char filename[256];
    char xml[512];
    char result[500];
    int len;

    // Make filename symbolic, but ensure it is null-terminated and has length >= 4
    klee_make_symbolic(filename, sizeof(filename), "filename");
    // Ensure null termination
    filename[sizeof(filename)-1] = '\0';
    // Constrain length to be at least 4 to pass len -= 4 safely
    len = strlen(filename);
    klee_assume(len >= 4);
    // Also assume len is less than sizeof(xml) to avoid obvious overflow
    klee_assume(len < sizeof(xml));

    // Simulate the vulnerable path
    len = strlen(filename);
    len -= 4;
    // Reachability marker
    klee_assert(0 && "SAILR_REACH_ASSERT");
    memcpy(xml, filename, len);
    xml[len] = 0;
    if (snprintf(result, 499, "result/pattern/%s", baseFilename(xml)) >= 499)
        result[499] = 0;
    memcpy(xml + len, ".xml", 5);

    if (!checkTestFile(xml)) {
        // Simulate the missing file path
        return -1;
    }

    // Additional grooming to potentially use libxml2 functions
    // Create a simple XML document in memory to call libxml2
    const char *xml_content = "<root><child/></root>";
    xmlDocPtr doc = xmlReadMemory(xml_content, strlen(xml_content), "noname.xml", NULL, 0);
    if (doc) {
        xmlFreeDoc(doc);
    }
    xmlCleanupParser();

    return 0;
}