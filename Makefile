#!/usr/bin/env make

all:
	./bind.py my-module.h
	g++ -fPIC -I/usr/include/python2.7 -L/usr/include/python2.7 -c -o my-module.o my-module.c
	gcc -shared -o libmymodule.so my-module.o
	python ko.py > my-module-binding.c
	g++ -fPIC -I/usr/include/python2.7 -c -o my-module-binding.o my-module-binding.c
	gcc -shared -o MyModule.so -L. -lmymodule my-module-binding.o

clean:
	git clean -xdf