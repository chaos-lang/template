SHELL=/bin/bash

default:
	${MAKE} linux

linux:
	gcc -shared -fPIC -I../chaos/ template.c -o template.so

macos:
	gcc -shared -fPIC -I../chaos/ -undefined dynamic_lookup template.c -o template.dylib

test:
	mkdir -p spells/template
	export GLOBIGNORE='*.c'
	cp template.* spells/template/
	chaos test.kaos
