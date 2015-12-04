# learn c

Examples of hello world C programs, libraries, headers and details of how to compile, link, and run from scratch (without using a build system like Make, cmake, or gyp).

## Requires

 - clang compiler

## Usage

To build all examples:

```sh
./build-all.sh
```

To test all examples:

```sh
./test-all.sh
```

To build and test a specific example:

```sh
cd step_1
./build.sh
./test.sh
```

### definitions

#### compiler

Command line tool, like gcc or clang, that can compile and link code

C compilers are gcc and clang. C++ compilers are g++ and clang++.

#### linker

The linker is usually called `ld`. But you don't need to invoke it directly. Instead it gets invoked by the compiler.

#### compile

Turn C or C++ code into `.o` (object files)

#### link

Turn object files into either and executable or a library

#### Build system

Not going to find one here! Actually that is a lie. Here we use bash scripts called `build.sh` to invoke the compiler to compile and link. For larger projects you'll want to use a build system like cmake, ninja, make, or gyp that is able to intelligently recompile and link only when certain files have changed.

#### Extra handy tools

 - `nm` shows symbols (aka functions/methods) inside a library
 - `otool -L` shows what dynamic a program links to on OS X
 - `ldd` shows what dynamic a program links to on linux
 - `readelf -d` shows rpaths and other special things about a library on linux

