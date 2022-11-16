# This file is a part of dwmblocks.
# See COPYING and COPYRIGHT files for corresponding information.

.POSIX:

include config.mk

all: dwmblocks dwmblocks.1

.c.o:
	${CC} -c ${CFLAGS} ${CPPFLAGS} $<

%: %.in
	sed "s/VERSION/${VERSION}/g" $^ > $@

dwmblocks: dwmblocks.o
	${CC} -o $@ ${LDFLAGS} $^

install: all
	install -m 0755 -Dt ${DESTDIR}${PREFIX}/bin/      dwmblocks
	install -m 0644 -Dt ${DESTDIR}${MANPREFIX}/man1/  dwmblocks.1
	install -m 0755 -Dt ${DESTDIR}${DATAPREFIX}/dwmblocks \
		scripts/*.sh

uninstall:
	rm -f  ${DESTDIR}${PREFIX}/bin/dwmblocks
	rm -f  ${DESTDIR}${MANPREFIX}/man1/dwmblocks.1
	rm -rf ${DESTDIR}${DATAPREFIX}/dwmblocks

clean:
	rm -f dwmblocks dwmblocks.o dwmblocks.1

.PHONY: all install uninstall clean

# vim:cc=72:tw=70
# End of file.
