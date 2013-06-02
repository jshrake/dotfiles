# specify our source files:
SRCS = a.cpp b.cpp c.pp
 
# specify our object files:
OBJS = a.obj b.obj c.obj
 
# specify the compiler flags:
CFLAGS = -O2
 
# specify the command for the compiler
CC = cl
 
#specify the linker flags:
LFLAGS = -linkreallywell
 
# specify how to generate the final result file:
# note this must be the first target specified
prog.exe: OBJS
    $(CC) $(LFLAGS) OJBS
 
# From here is probably isn't needed with most makes, because it'll 
# already be built in.
 
# get make to recognize the `.cpp` suffix
.SUFFIXES: .cpp
  
# specify how to compile a .cpp file to produce a .obj file
.cpp.obj:
    $(CC) $(CFLAGS) $*.cpp