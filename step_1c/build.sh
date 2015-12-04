# build "implementation" object file
if [[ $(uname -s) == 'Darwin' ]]; then
    clang -c implementation.c -I./
else
    clang -c implementation.c -I./ -fPIC
fi

# build "implementation" library
if [[ $(uname -s) == 'Darwin' ]]; then
    clang -dynamiclib -o liblearn.dylib implementation.o
else
    clang -shared -o liblearn.so implementation.o
fi

# compile run.c
clang -c run.c -I./

# link run program
if [[ $(uname -s) == 'Darwin' ]]; then
    clang -o run run.o -L./ -llearn
else
    clang -o run run.o -L./ -llearn -Wl,-z,origin -Wl,-rpath=\$ORIGIN
fi
