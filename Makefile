# Compilation details for object files
CPP      = g++
RM       = rm -f
CPPFLAGS = -Wall -c -I. -g -std=c++11

# Compilation details for shared library
LD      = g++
LDFLAGS = -Wall -shared -o

# Compilation details for static library
AR      = ar
ARFLAGS = -cq

# Paths and dependencies
LIBS   = -lcurl
LIBDIR = /usr/local/lib
INCDIR = /usr/local/include

# Current files we need for libraries
SOURCES = requests.cpp
HEADERS = requests.h
OBJECTS = $(SOURCES:%.cpp=%.o)

# Output details
SHARED_LIB = librequests.so
STATIC_LIB = librequests.a

all: ${OBJECTS} ${STATIC_LIB} ${SHARED_LIB}

${SHARED_LIB}: ${OBJECTS}
	${LD} ${LDFLAGS} $@ ${OBJECTS} -L${LIBS} -I${LIBDIR}

${STATIC_LIB}: ${OBJECTS}
	${AR} ${ARFLAGS} $@ ${OBJECTS}

${OBJECTS}:
	${CPP} ${CPPFLAGS} -fpic -o $@ ${@:%.o=%.cpp} -I${INCDIR}

.PHONY: clean

clean:
	${RM} *.o *.so *.a

install:
	${RM} *.o
	cp -f ${HEADERS} ${INCDIR}
	cp -f ${SHARED_LIB} ${LIBDIR}
	cp -f ${STATIC_LIB} ${LIBDIR}