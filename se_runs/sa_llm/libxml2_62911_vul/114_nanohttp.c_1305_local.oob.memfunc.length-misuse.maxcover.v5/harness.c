#include "klee/klee.h"
#include <libxml/xmlmemory.h>
#include <string.h>
#include <ctype.h>

extern char *getenv(const char *name);

int main(void) {
    char env_sym[1024];
    klee_make_symbolic(env_sym, sizeof(env_sym), "env_sym");
    klee_assume(env_sym[sizeof(env_sym) - 1] == '\0');

    char *env = getenv("no_proxy");
    if (!env) {
        return 0;
    }

    size_t envlen = strlen(env) + 1;
    char *cpy = xmlMalloc(envlen);
    if (!cpy) {
        return 0;
    }

    klee_assert(0 && "SAILR_REACH_ASSERT");
    memcpy(cpy, env, envlen);
    env = cpy;

    while (isspace(*env)) {
        ++env;
    }
    if (*env == '\0') {
        xmlFree(cpy);
        return 0;
    }

    xmlFree(cpy);
    return 0;
}