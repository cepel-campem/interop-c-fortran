FC = gfortran
FCFLAGS = -g -ggdb -fbounds-check -std=f2018 -ffree-form -Wall -Wextra -Warray-temporaries -Wconversion -fimplicit-none -fbacktrace -ffree-line-length-0 -fcheck=all -ffpe-trap=zero,overflow,underflow -finit-real=nan
C := gcc
CFLAGS := -g -ggdb -std=c17
CXX := g++
CXXFLAGS := -g -ggdb -fexceptions -std=c++17 -O0 -Wall -Wno-unused-variable -Wno-deprecated-declarations
LibrarySwitch := -l
CXX_LIB := $(LibrarySwitch)gfortran $(LibrarySwitch)pthread $(LibrarySwitch)quadmath
SRCcpp := $(wildcard *.cpp)
SRCc := $(wildcard *.c)
SRCf := $(wildcard *.f)
OBJS := $(patsubst %.cpp,%.o,$(SRCcpp)) $(patsubst %.c,%.o,$(SRCc)) $(patsubst %.f,%.o,$(SRCf))

.PHONY: all clean

all: main

main: $(OBJS)
	$(CXX) $(CXXFLAGS) -o $@ $^ -L./ $(CXX_LIB)

%.o: %.f
	$(FC) $(FCFLAGS) -c $< -L./

%.o: %.c
	$(C) $(CFLAGS) -c $< -L./

%.o: %.cpp
	$(CXX) $(CXXFLAGS) -c $< -L./
 
clean: 
	rm -f main *.o *.mod

