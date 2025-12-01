#include <klee/klee.h>
#include "nanohttp.c"

int main() {
    char URL[256];
    klee_make_symbolic(URL, sizeof(URL), "URL");
    URL[255] = '\0';
    
    char* contentType = NULL;
    
    xmlNanoHTTPOpen(URL, &contentType);
    
    return 0;
}