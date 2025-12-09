#include "klee/klee.h"
#include <libxml/xmlcatalog.h>
#include <string.h>
#include <stdlib.h>

extern void SAILR_ASSERT(int condition);

int main(void) {
    char arg[1024];
    klee_make_symbolic(arg, sizeof(arg), "arg");
    arg[sizeof(arg)-1] = '\0';

    int i = 0;
    int nbargs = 0;
    char *cur = arg;
    char *argv[100];
    memset(argv, 0, sizeof(argv));

    klee_assert(0 && "SAILR_REACH_ASSERT");

    while (*cur != 0) {
        while ((*cur == ' ') || (*cur == '\t')) cur++;
        if (*cur == '\'') {
            cur++;
            argv[i] = cur;
            while ((*cur != 0) && (*cur != '\'')) cur++;
            if (*cur == '\'') {
                *cur = 0;
                cur++;
                i++;
                nbargs++;
            }
        } else {
            argv[i] = cur;
            while ((*cur != 0) && (*cur != ' ') && (*cur != '\t')) cur++;
            if (*cur != 0) {
                *cur = 0;
                cur++;
            }
            i++;
            nbargs++;
        }
    }

    return 0;
}