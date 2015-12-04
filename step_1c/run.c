#include <implementation.h>

/*

# build "implementation" object file
## OS X
clang -c implementation.c -I./
## Linux
clang -c implementation.c -I./ -fPIC

# build "implementation" library
## OS X
clang -dynamiclib -o liblearn.dylib implementation.o
## Linux
clang -shared -o liblearn.so implementation.o

# compile run.c
clang -c run.c -I./

# link run program
clang -o run run.o -L./ -llearn -Wl,-z,origin -Wl,-rpath=\$ORIGIN

*/

int main() {
    hello();
    return 0;
}
