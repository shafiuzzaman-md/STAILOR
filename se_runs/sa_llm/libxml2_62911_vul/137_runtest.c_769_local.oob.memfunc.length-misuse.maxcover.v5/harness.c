#ifndef SAILR_ASSERT
#define SAILR_ASSERT(cond) klee_assert((cond) && "SAILR_VULN_ASSERT")
#endif

#include <stdlib.h>
#include <unistd.h>
#include <fcntl.h>
#include <sys/stat.h>
#include <string.h>
#include "klee/klee.h"

int main(void) {
    char filename[256];
    klee_make_symbolic(filename, sizeof(filename), "filename");
    klee_assume(filename[sizeof(filename)-1] == '\0');
    
    struct stat info;
    int fd;
    char *base = NULL;
    ssize_t res;
    size_t siz = 0;
    
    if (stat(filename, &info) < 0) {
        return 0;
    }
    
    klee_assume(info.st_size >= 0);
    
    base = malloc(info.st_size);
    if (base == NULL) {
        return 0;
    }
    
    fd = open(filename, O_RDONLY);
    if (fd < 0) {
        free(base);
        return 0;
    }
    
    while ((res = read(fd, &base[siz], info.st_size - siz)) > 0) {
        siz += res;
        
        if (siz > info.st_size) {
            SAILR_ASSERT(siz <= info.st_size);
            klee_assert(0 && "SAILR_REACH_ASSERT");
        }
    }
    
    close(fd);
    
    #if !defined(_WIN32)
    if (siz != info.st_size) {
        SAILR_ASSERT(siz == info.st_size);
        klee_assert(0 && "SAILR_REACH_ASSERT");
    }
    #endif
    
    free(base);
    return 0;
}