#include <implementation.h>

/*

# build "implementation" object file
clang -c implementation.c -I./

# build "implementation" library
## OS X
clang -dynamiclib -o liblearn.dylib implementation.o
## Linux
clang -dynamiclib -o liblearn.so implementation.o

# compile run.c
clang -c run.c -I./

# link run program
clang -o run run.o -L./ -llearn

*/

int main() {
    hello();
    return 0;
}