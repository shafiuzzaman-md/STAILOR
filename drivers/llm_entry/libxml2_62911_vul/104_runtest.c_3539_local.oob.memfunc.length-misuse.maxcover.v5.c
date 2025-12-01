#include <klee/klee.h>
#include "runtest.c"

int main() {
    // Initialize symbolic inputs for schemasTest parameters
    char filename[256];
    char resul[256]; 
    char errr[256];
    int options;
    
    // Make inputs symbolic
    klee_make_symbolic(filename, sizeof(filename), "filename");
    klee_make_symbolic(resul, sizeof(resul), "resul");
    klee_make_symbolic(errr, sizeof(errr), "errr");
    klee_make_symbolic(&options, sizeof(options), "options");
    
    // Ensure null termination
    filename[255] = '\0';
    resul[255] = '\0';
    errr[255] = '\0';
    
    // Call the entry function
    int result = schemasTest(filename, resul, errr, options);
    
    return result;
}