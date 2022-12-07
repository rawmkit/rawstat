# dwmblocks version
VERSION = 0.1

# paths
PREFIX  = /usr/local
BINDIR  = ${PREFIX}/bin
DATADIR = ${PREFIX}/share
MANDIR  = ${PREFIX}/share/man

# DragonFly & FreeBSD (comment)
X11INC = /usr/local/include
X11LIB = /usr/local/lib

# NetBSD, OpenBSD (uncomment)
#X11INC = /usr/X11R6/include
#X11LIB = /usr/X11R6/lib

# includes and libs
INCS = -I${X11INC}
LIBS = -L${X11LIB} -lX11

# flags
CPPFLAGS =
CFLAGS   = -pedantic -Wall -Wextra -Wno-deprecated-declarations
LDFLAGS  = ${LIBS}

# compiler and linker
CC = cc
LD = ${CC}

# vim:cc=72:tw=70
# End of file.
