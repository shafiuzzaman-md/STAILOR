#include <klee/klee.h>
#include "testdict.c"

int main() {
    klee_make_symbolic(&seeds1, sizeof(seeds1), "seeds1");
    klee_make_symbolic(&seeds2, sizeof(seeds2), "seeds2");
    
    int result = testall_dict();
    
    return result;
}