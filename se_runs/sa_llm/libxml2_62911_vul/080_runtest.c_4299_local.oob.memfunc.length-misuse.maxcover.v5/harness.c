#include <libxml/parser.h>
#include <libxml/xpath.h>
#include <string.h>
#include <klee/klee.h>

extern char* baseFilename(const char* filename);
extern int checkTestFile(const char* path);

int main(void) {
    char filename[256];
    klee_make_symbolic(filename, sizeof(filename), "filename");
    filename[sizeof(filename)-1] = '\0';

    char subdir[256];
    klee_make_symbolic(subdir, sizeof(subdir), "subdir");
    subdir[sizeof(subdir)-1] = '\0';

    char* base = baseFilename(filename);
    if (base == NULL) {
        return 0;
    }

    size_t len = strlen(base);
    if (len < 4) {
        return 0;
    }
    len -= 4;

    char prefix[256];
    memcpy(prefix, base, len);
    klee_assert(0 && "SAILR_REACH_ASSERT");

    prefix[len] = 0;

    char buf[500];
    if (snprintf(buf, 499, "result/c14n/%s/%s", subdir, prefix) >= 499)
        buf[499] = 0;
    char* result = strdup(buf);
    if (result) free(result);

    if (snprintf(buf, 499, "test/c14n/%s/%s.xpath", subdir, prefix) >= 499)
        buf[499] = 0;
    if (checkTestFile(buf)) {
        return 0;
    }

    return 0;
}