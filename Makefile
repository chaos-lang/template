SHELL=/bin/bash

UNAME_S := $(shell uname -s)

default:
ifeq ($(UNAME_S), Darwin)
	${MAKE} macos
else
	${MAKE} linux
endif

linux:
	gcc -shared -fPIC template.c -o template.so

macos:
	gcc -shared -fPIC -undefined dynamic_lookup template.c -o template.dylib

test:
	mkdir -p spells/template
	export GLOBIGNORE='*.c'
	cp template.* spells/template/
	chaos test.kaos
