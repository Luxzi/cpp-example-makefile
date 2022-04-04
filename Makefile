########################################################
#                 C++ Makefile Template                # 
########################################################
# This Makefile is mean't to be used on linux but      #   
# it can be modified to work on windows but no support #
# will provided; DO NOT make issues or pull requests   #
# related to windows complatibility.                   #
########################################################

CC   := gcc # Compiler
XCC  := -lstdc++ # Compiler options
SRC  := $(wildcard *.cpp)
INC  := inc
LIB  := lib

# Compiles as debug if no build mode is selected
auto: debug

# Compiles the release build of the program
release:
	${CC} ${SRC} ${XCC} -I ${INC} -L ${LIB} -o bin/release/a.out -O1
# Compiles the debug build of the program
debug:
	${CC} ${SRC} ${XCC} -I ${INC} -L ${LIB} -o bin/debug/a.out -Og
