PSPSDK=$(shell psp-config --pspsdk-path)
PSPDIR=$(shell psp-config --psp-prefix)

TARGET = sample_cube
OBJS =	src/callbacks.o \
		src/cube.o \
		src/logo.o \
		src/vram.o

INCDIR   := $(INCDIR) . src

# Flags:
CFLAGS = -O2 -G0 -Wall -g -DSAMPLE_CONFIG_PLATFORM_PSP
CXXFLAGS = $(CFLAGS) -fno-exceptions -fno-rtti
ASFLAGS = $(CFLAGS)

LIBDIR =
LIBS = -lpspgum_vfpu -lpspvfpu -lpspgu -lm
LDFLAGS =

EXTRA_TARGETS = EBOOT.PBP
PSP_EBOOT_TITLE = Cube Sample

include $(PSPSDK)/lib/build.mak

# The following takes "src/logo.raw" and outputs "src/logo.o" using the bin2o program.
# It creates an array of bytes that gets compiled into the resulting binary that the
# program can access directly. Inside cube.c there is a line:
#
#   extern unsigned char logo_start[];
#
# The last parameter of the bin2o command specifies the prefix for this array.
src/logo.o: src/logo.raw
	bin2o -i src/logo.raw src/logo.o logo
