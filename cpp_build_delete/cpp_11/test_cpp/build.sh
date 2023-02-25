#!/bin/bash

g++ -g -O3 -std=c++11 -Wall -Wextra -pedantic -Wformat=2 -Weffc++ -Wold-style-cast -Woverloaded-virtual -Wredundant-decls -Wshadow -Wsign-conversion -Wsign-promo -Wstrict-overflow=5 -Wswitch-default -Wfloat-equal -Wmissing-format-attribute -Wunreachable-code -fmerge-all-constants main.cpp Greeting.cpp Greeting.h Test.cpp Test.h && ./a.out -t
