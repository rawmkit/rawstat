# See LICENSE file for copyright and license details.

.POSIX:

include config.mk

all: dwmblocks dwmblocks.1

%: %.pod
	podchecker $^
	pod2man -c ' ' -n dwmblocks -r ${VERSION} $^ > $@

.c.o:
	${CC} -c ${CFLAGS} ${CPPFLAGS} $<

dwmblocks: dwmblocks.o
	${LD} -o $@ ${LDFLAGS} $^

install: all
	mkdir -p ${DESTDIR}${BINDIR}
	mkdir -p ${DESTDIR}${MANDIR}/man1
	mkdir -p ${DESTDIR}${DATADIR}/dwmblocks
	cp -f dwmblocks ${DESTDIR}${BINDIR}/
	chmod +x ${DESTDIR}${PREFIX}/bin/dwmblocks
	cp -f dwmblocks.1 ${DESTDIR}${MANDIR}/man1/
	cp scripts/*.sh ${DESTDIR}${DATADIR}/dwmblocks/

uninstall:
	rm -f  ${DESTDIR}${BINDIR}/dwmblocks
	rm -f  ${DESTDIR}${MANDIR}/man1/dwmblocks.1
	rm -rf ${DESTDIR}${DATADIR}/dwmblocks

clean:
	rm -f dwmblocks dwmblocks.o dwmblocks.1

.PHONY: all install uninstall clean

# vim:cc=72:tw=70
# End of file.
