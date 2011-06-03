#! /usr/bin/env python

import sys

import pybindgen
from pybindgen import FileCodeSink
from pybindgen.gccxmlparser import ModuleParser

def my_module_gen():
	module_parser = ModuleParser('gridvis', '::')
	module_parser.parse([sys.argv[1]], includes=['"my-module.h"'],include_paths=['../../build-default','../../'], pygen_sink=FileCodeSink(open('ko.py','wb')))

if __name__ == '__main__':
	my_module_gen()
