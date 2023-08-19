# project metadata
NAME      = dwmblocks
VERSION   = 0.2.2z
DIST      = ${NAME}-${VERSION}

# paths
PREFIX    = /usr/local
MANPREFIX = ${PREFIX}/share/man

# X support (uncomment to disable X11)
#NO_X     = -DNO_X

# DragonFlyBSD, FreeBSD
#X11INC   = /usr/local/include
#X11LIB   = /usr/local/lib

# NetBSD, OpenBSD
#X11INC   = /usr/X11R6/include
#X11LIB   = /usr/X11R6/lib

# Linux
X11INC    = /usr/include
X11LIB    = /usr/lib

# includes and libs
INCS      = -I${X11INC}
LIBS      = -L${X11LIB} -lX11

# flags
CPPFLAGS  = ${NO_X} ${INCS}
CFLAGS    = -pedantic -Wall -Wextra -Wno-deprecated-declarations
LDFLAGS   = ${LIBS}

# compiler and linker
CC        = cc
LD        = ${CC}
