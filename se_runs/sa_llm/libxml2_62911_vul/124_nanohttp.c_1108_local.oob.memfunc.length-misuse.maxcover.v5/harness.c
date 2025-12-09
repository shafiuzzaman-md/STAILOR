#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/socket.h>
#include <netinet/in.h>
#include <arpa/inet.h>
#include <netdb.h>
#include "klee/klee.h"

/* libxml2 headers */
#include <libxml/xmlversion.h>
#include <libxml/xmlmemory.h>
#include <libxml/parser.h>
#include <libxml/nanohttp.h>

/* Assume SAILR_ASSERT is defined externally */

int main(void) {
    /* Symbolic variables for the hostent structure fields */
    struct hostent h;
    struct in_addr ia;
    struct sockaddr_in sockin;
    struct sockaddr *addr;
    int i;
    int port = 80; /* arbitrary port */

    /* Initialize h */
    klee_make_symbolic(&h.h_addrtype, sizeof(h.h_addrtype), "h_addrtype");
    klee_make_symbolic(&h.h_length, sizeof(h.h_length), "h_length");

    /* Ensure h_length is non-negative (as per bounds hint) */
    klee_assume(h.h_length >= 0);

    /* Allocate and initialize h_addr_list with symbolic data */
    /* We need at least one non-NULL entry to enter the loop */
    char *addr_list[2];
    addr_list[0] = (char *)malloc(sizeof(struct in_addr));
    addr_list[1] = NULL;
    klee_make_symbolic(addr_list[0], sizeof(struct in_addr), "h_addr_list_entry");
    h.h_addr_list = (char **)addr_list;

    /* Ensure h_addrtype is AF_INET to take the vulnerable path */
    klee_assume(h.h_addrtype == AF_INET);

    /* Simulate the loop iteration */
    for (i = 0; h.h_addr_list[i]; i++) {
        if (h.h_addrtype == AF_INET) {
            /* A records (IPv4) */
            if ((unsigned int) h.h_length > sizeof(ia)) {
                /* __xmlIOErr call would happen, but we skip for harness */
                free(addr_list[0]);
                return 0; /* Simulate returning INVALID_SOCKET */
            }
            /* Reachability marker: we are about to execute the memcpy */
            klee_assert(0 && "SAILR_REACH_ASSERT");
            /* The vulnerable memcpy line */
            memcpy(&ia, h.h_addr_list[i], h.h_length);
            sockin.sin_family = h.h_addrtype;
            sockin.sin_addr = ia;
            sockin.sin_port = (unsigned short)htons((unsigned short)port);
            addr = (struct sockaddr *) &sockin;
        } else {
            break;
        }

        /* Call xmlNanoHTTPConnectAttempt to simulate further execution */
        /* We stub it out since it's not essential for reaching the memcpy */
        /* xmlNanoHTTPConnectAttempt(addr); */
        break; /* Only one iteration needed */
    }

    free(addr_list[0]);
    return 0;
}