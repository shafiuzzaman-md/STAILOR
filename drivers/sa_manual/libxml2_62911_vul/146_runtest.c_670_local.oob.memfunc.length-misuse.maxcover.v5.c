#include <klee/klee.h>
#include "runtest.c"

int main() {
    char r1[100];
    char r2[100];
    int fd1, fd2;
    char bytes1[4096];
    char bytes2[4096];
    int res1, res2;

    klee_make_symbolic(r1, sizeof(r1), "r1");
    klee_make_symbolic(r2, sizeof(r2), "r2");
    r1[sizeof(r1)-1] = '\0';
    r2[sizeof(r2)-1] = '\0';

    fd1 = open(r1, O_RDONLY);
    if (fd1 < 0) return 0;
    
    fd2 = open(r2, O_RDONLY);

    while (1) {
        res1 = read(fd1, bytes1, 4096);
        res2 = fd2 >= 0 ? read(fd2, bytes2, 4096) : 0;
        
        klee_assert(res1 >= 0 && res1 <= 4096);
        
        if ((res1 != res2) || (res1 < 0)) {
            close(fd1);
            if (fd2 >= 0) close(fd2);
            return 0;
        }
        if (res1 == 0) break;
        if (memcmp(bytes1, bytes2, res1) != 0) {
            close(fd1);
            if (fd2 >= 0) close(fd2);
            return 0;
        }
    }
    
    close(fd1);
    if (fd2 >= 0) close(fd2);
    return 0;
}