.POSIX:
.SUFFIXES:
.SUFFIXES: .o .cpp

IMGUI_SRC = $(wildcard libimgui/*.cpp)

CXX = g++

SRC = src/main.cpp
SRC += $(IMGUI_SRC)
OBJ = $(SRC:.cpp=.o)
LINUX_GL_LIBS = -lGL

CXXFLAGS = -std=c++11 -Wall -Wformat -I./libimgui
CFLAGS = $(CXXFLAGS)
LIBS = -s -lglfw -lGL

%.o:%.cpp
	@echo CXX $<
	@$(CXX) $(CXXFLAGS) -c -o $@ $<

all: sstab

sstab: $(OBJ)
	@echo LD $^
	@$(CXX) -o $@ $^ $(LIBS)

clean:
	rm -f sstab $(OBJ)

.PHONY: all clean
