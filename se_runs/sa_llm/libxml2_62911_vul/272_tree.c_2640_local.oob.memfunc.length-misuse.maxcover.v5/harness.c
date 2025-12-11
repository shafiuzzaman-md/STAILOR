#ifndef SAILR_ASSERT
#define SAILR_ASSERT(cond) klee_assert((cond) && "SAILR_VULN_ASSERT")
#endif

#include "klee/klee.h"
#include <stdlib.h>
#include <string.h>

typedef struct _xmlNode xmlNode;
struct _xmlNode {
    void *private;
    int type;
    const char *name;
    struct _xmlNode *children;
    struct _xmlNode *last;
    struct _xmlNode *parent;
    struct _xmlNode *next;
    struct _xmlNode *prev;
    struct _xmlDoc *doc;
    char *content;
    unsigned long length;
};

typedef xmlNode *xmlNodePtr;
typedef struct _xmlDoc xmlDoc;

extern void *xmlMalloc(size_t size);
extern void xmlTreeErrMemory(const char *extra);
extern char *xmlStrndup(const char *cur, int len);
extern const char *xmlStringText;

xmlNodePtr xmlStringGetNodeList(const char *content, int len) {
    xmlNodePtr cur;

    cur = (xmlNodePtr) xmlMalloc(sizeof(xmlNode));
    if (cur == NULL) {
        xmlTreeErrMemory("building text");
        return(NULL);
    }
    memset(cur, 0, sizeof(xmlNode));
    cur->type = 3;

    cur->name = xmlStringText;
    if (content != NULL) {
        cur->content = xmlStrndup(content, len);
        SAILR_ASSERT(len >= 0);
        klee_assert(0 && "SAILR_REACH_ASSERT");
    }

    return cur;
}

void *xmlMalloc(size_t size) {
    void *ptr = malloc(size);
    if (ptr) klee_assume(ptr != NULL);
    return ptr;
}

void xmlTreeErrMemory(const char *extra) {
}

char *xmlStrndup(const char *cur, int len) {
    char *dup;
    if (cur == NULL) return NULL;
    if (len < 0) return NULL;
    dup = (char*)malloc(len + 1);
    if (dup == NULL) return NULL;
    memcpy(dup, cur, len);
    dup[len] = '\0';
    return dup;
}

const char *xmlStringText = "text";

int main(void) {
    int len;
    char content[256];

    klee_make_symbolic(&len, sizeof(len), "len");
    klee_make_symbolic(content, sizeof(content), "content");

    klee_assume(len >= 0);
    klee_assume(len <= 256);

    (void)xmlStringGetNodeList(content, len);
    return 0;
}