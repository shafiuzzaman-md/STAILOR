#include "runtest.c"
#include <klee/klee.h>

int main() {
    const char* filename;
    const char** mem;
    int* size;
    int fd;
    struct stat info;
    char* base;
    int siz = 0;
    int res;

    klee_make_symbolic(&info, sizeof(info), "info");
    
    filename = "test_file";
    mem = (const char**)malloc(sizeof(char*));
    size = (int*)malloc(sizeof(int));
    
    if (stat(filename, &info) < 0) {
        return -1;
    }
    
    base = malloc(info.st_size + 1);
    if (base == NULL) {
        return -1;
    }
    
    fd = open(filename, O_RDONLY);
    if (fd < 0) {
        free(base);
        return -1;
    }
    
    while ((res = read(fd, &base[siz], info.st_size - siz)) > 0) {
        siz += res;
        klee_assert(siz <= info.st_size);
    }
    
    close(fd);
    
#if !defined(_WIN32)
    if (siz != info.st_size) {
        free(base);
        return -1;
    }
#endif
    
    base[siz] = 0;
    *mem = base;
    *size = siz;
    
    free(base);
    free(mem);
    free(size);
    
    return 0;
}