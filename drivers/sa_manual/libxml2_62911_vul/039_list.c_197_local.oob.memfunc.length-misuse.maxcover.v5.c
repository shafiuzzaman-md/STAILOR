#include "list.c"
#include <klee/klee.h>

typedef struct _xmlLink xmlLink;
typedef struct _xmlList xmlList;

struct _xmlLink {
    void *data;
    xmlLink *next;
    xmlLink *prev;
};

struct _xmlList {
    xmlLink *sentinel;
    void (*linkDeallocator)(void *);
    int (*linkCompare)(const void *, const void *);
};

int xmlLinkCompare(const void *data1, const void *data2) {
    return 0;
}

int main() {
    xmlListDeallocator deallocator = NULL;
    xmlListDataCompare compare = xmlLinkCompare;
    
    xmlListPtr l = xmlListCreate(deallocator, compare);
    
    if (l != NULL) {
        klee_assert(l->sentinel != NULL);
    }
    
    return 0;
}