#include <klee/klee.h>
#include "encoding.h"

int main() {
    // Symbolic inputs for UTF8ToUTF8 function
    unsigned char out_buf[1024];
    int outlen;
    unsigned char in_buf[1024]; 
    int inlenb;
    
    // Make inputs symbolic
    klee_make_symbolic(in_buf, sizeof(in_buf), "in_buf");
    klee_make_symbolic(&outlen, sizeof(outlen), "outlen");
    klee_make_symbolic(&inlenb, sizeof(inlenb), "inlenb");
    
    // Call the vulnerable function
    UTF8ToUTF8(out_buf, &outlen, in_buf, &inlenb);
    
    return 0;
}