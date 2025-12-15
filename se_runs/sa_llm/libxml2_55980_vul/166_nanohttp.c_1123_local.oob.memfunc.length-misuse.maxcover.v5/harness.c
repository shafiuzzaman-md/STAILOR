#ifndef SAILR_ASSERT
#define SAILR_ASSERT(cond) klee_assert((cond) && "SAILR_VULN_ASSERT")
#endif

#include <stdint.h>
#include <string.h>
#include <sys/socket.h>
#include <netinet/in.h>
#include <arpa/inet.h>
#include <netdb.h>
#include "klee/klee.h"

#define XML_FROM_HTTP 0
#define INVALID_SOCKET (-1)

typedef int SOCKET;

struct hostent {
    char *h_name;
    char **h_aliases;
    int h_addrtype;
    int h_length;
    char **h_addr_list;
};

struct sockaddr_in {
    short sin_family;
    unsigned short sin_port;
    struct in_addr sin_addr;
    char sin_zero[8];
};

struct in_addr {
    unsigned long s_addr;
};

struct sockaddr {
    unsigned short sa_family;
    char sa_data[14];
};

void __xmlIOErr(int domain, int code, const char *msg) {
}

SOCKET xmlNanoHTTPConnectAttempt(struct sockaddr *addr) {
    return 0;
}

unsigned short htons(unsigned short port) {
    return port;
}

SOCKET xmlNanoHTTPConnectHost(struct hostent *h, int port) {
    int i;
    struct in_addr ia;
    struct sockaddr_in sockin;
    struct sockaddr *addr;
    SOCKET s = INVALID_SOCKET;

    for (i = 0; h->h_addr_list[i]; i++) {
        if (h->h_addrtype == AF_INET) {
            if ((unsigned int) h->h_length > sizeof(ia)) {
                __xmlIOErr(XML_FROM_HTTP, 0, "address size mismatch\n");
                return INVALID_SOCKET;
            }
            
            SAILR_ASSERT(h->h_length <= sizeof(ia));
            klee_assert(0 && "SAILR_REACH_ASSERT");
            
            memcpy(&ia, h->h_addr_list[i], h->h_length);
            sockin.sin_family = h->h_addrtype;
            sockin.sin_addr = ia;
            sockin.sin_port = (unsigned short)htons((unsigned short)port);
            addr = (struct sockaddr *) &sockin;
        } else
            break;

        s = xmlNanoHTTPConnectAttempt(addr);
        if (s != INVALID_SOCKET)
            break;
    }
    return s;
}

int main(void) {
    struct hostent h;
    int port = 80;
    
    klee_make_symbolic(&h.h_addrtype, sizeof(h.h_addrtype), "h_addrtype");
    klee_make_symbolic(&h.h_length, sizeof(h.h_length), "h_length");
    
    klee_assume(h.h_addrtype == AF_INET);
    klee_assume(h.h_length >= 0 && h.h_length <= 20);
    
    char addr1[16];
    char *addr_list[2] = {addr1, NULL};
    h.h_addr_list = addr_list;
    
    klee_make_symbolic(addr1, sizeof(addr1), "addr1");
    
    xmlNanoHTTPConnectHost(&h, port);
    
    return 0;
}