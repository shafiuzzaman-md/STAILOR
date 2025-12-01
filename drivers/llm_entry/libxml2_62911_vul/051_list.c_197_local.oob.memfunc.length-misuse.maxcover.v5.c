#include <klee/klee.h>
#include "list.c"

int main() {
    xmlListDeallocator deallocator = NULL;
    xmlListDataCompare compare = NULL;
    
    klee_make_symbolic(&deallocator, sizeof(deallocator), "deallocator");
    klee_make_symbolic(&compare, sizeof(compare), "compare");
    
    xmlListPtr result = xmlListCreate(deallocator, compare);
    
    return 0;
}