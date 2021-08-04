# learning quilt

we dont always maintain the code we work on, in that case patches are necessary. so this is me learning how to use quilt

# basic quilt usage

this just includes a hello world program. from there I changed it to say goodbye world. after the change i did `git diff > patches/hello.patch`, I also added a series file in the patches directory with `hello.patch` as its contents. from there i stashed the git changes to revert the hello.c file to say hello world again. This file is changed through [quilt](https://en.wikipedia.org/wiki/Quilt_(software))

## quilt commands used

`quilt push -a` this applies all the patches

`quilt pop -a` removes all the patches 

# makefile
the makefile simply 
1. compiles the original hello.c (with hello world) 
2. runs the hello program
3. applies the patch
4. compiles the patched hello.c file (with goodbye world)
5. runs the patched hello program

# usage
clone this repo

check the original hello.c file

in the directory just run `make`

you'll notice what is described above

check the hello.c after the patch is applied

lastly run a `make clean` to revert to original 
