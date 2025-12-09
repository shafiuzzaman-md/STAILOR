#include <string.h>
#include <libxml/parser.h>
#include <klee/klee.h>

int main(void) {
    char crazy[1024];
    char buffer[1024];
    int crazy_indx;
    int rlen;
    char *current;
    int instate;
    int len;
    int curlen;

    klee_make_symbolic(crazy, sizeof(crazy), "crazy");
    klee_make_symbolic(&crazy_indx, sizeof(crazy_indx), "crazy_indx");
    klee_make_symbolic(&len, sizeof(len), "len");
    klee_make_symbolic(&instate, sizeof(instate), "instate");

    klee_assume(crazy_indx >= 0);
    klee_assume(crazy_indx < sizeof(crazy));
    crazy[sizeof(crazy)-1] = '\0';

    rlen = strlen(crazy) - crazy_indx;
    current = &crazy[crazy_indx];
    instate = 2;

    if (instate == 0) {
        if (len >= rlen) {
            len = rlen;
            rlen = 0;
            klee_assert(0 && "SAILR_REACH_ASSERT");
            memcpy(buffer, current, len);
            instate = 1;
            curlen = 0;
        } else {
            memcpy(buffer, current, len);
            rlen -= len;
            current += len;
        }
    } else if (instate == 2) {
    }

    return 0;
}