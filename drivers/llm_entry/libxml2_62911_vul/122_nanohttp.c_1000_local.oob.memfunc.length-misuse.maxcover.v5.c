#include <klee/klee.h>
#include "nanohttp.c"

int main() {
    const char *host;
    int port;
    
    // Make host symbolic with reasonable buffer size
    char host_buf[256];
    klee_make_symbolic(host_buf, sizeof(host_buf), "host_buf");
    host = host_buf;
    
    // Make port symbolic
    klee_make_symbolic(&port, sizeof(port), "port");
    
    // Call the entry function
    xmlNanoHTTPConnectHost(host, port);
    
    return 0;
}