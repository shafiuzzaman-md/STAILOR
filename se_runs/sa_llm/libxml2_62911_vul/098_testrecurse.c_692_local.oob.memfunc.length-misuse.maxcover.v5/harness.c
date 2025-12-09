#include <libxml/parser.h>
#include <libxml/tree.h>
#include <string.h>
#include <klee/klee.h>

int main(void) {
    char suffixbuff[500];
    char suffix[500];
    klee_make_symbolic(suffix, sizeof(suffix), "suffix");
    suffix[499] = '\0';

    klee_assert(0 && "SAILR_REACH_ASSERT");
    strncpy(suffixbuff, suffix, 499);

    return 0;
}