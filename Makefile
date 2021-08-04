.PHONY: all
all: hello run patching run1 hello1
CC = gcc

hello: hello.c
	@echo "running original hello"
	@${CC} -o hello hello.c

run: hello
	@./hello

patching: hello
	@quilt push -a

hello1: patching
	@${CC} -o hello hello.c

run1: hello1
	@echo "running patched hello"
	@./hello

clean:
	@rm hello
	@quilt pop -a
