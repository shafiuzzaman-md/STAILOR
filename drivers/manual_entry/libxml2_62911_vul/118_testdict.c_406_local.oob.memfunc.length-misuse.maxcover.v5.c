#include <klee/klee.h>
#include "testdict.c"

int main() {
    klee_make_symbolic(strings1, NB_STRINGS_MAX * sizeof(strings1[0]), "strings1");
    klee_make_symbolic(strings2, NB_STRINGS_MAX * sizeof(strings2[0]), "strings2");
    klee_make_symbolic(test1, NB_STRINGS_MAX * sizeof(test1[0]), "test1");
    klee_make_symbolic(test2, NB_STRINGS_MAX * sizeof(test2[0]), "test2");
    
    int result = testall_dict();
    
    return result;
}