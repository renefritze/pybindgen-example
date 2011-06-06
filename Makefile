#!/usr/bin/env make

all:
	./bind.py my-module.h
	g++ -fPIC -I/usr/include/python2.7 -L/usr/include/python2.7 -c -o my-module.o my-module.cc
	g++ -shared -o libmymodule.so my-module.o
	python ko.py > my-module-binding.cc
	g++ -fPIC -I/usr/include/python2.7 -c -o my-module-binding.o my-module-binding.cc
	g++ -shared -o MyModule.so -L. -lmymodule my-module-binding.o

clean:
	git clean -xdf

test: all
	python ./test.py
