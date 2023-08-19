.POSIX:

include config.mk

all: dwmblocks

.c.o:
	${CC} -c ${CFLAGS} ${CPPFLAGS} $<

config.h:
	cp config.def.h $@

dwmblocks.o: config.h

dwmblocks: dwmblocks.o
	${LD} dwmblocks.o ${LDFLAGS} -o $@

dwmblocks.1:
	sed "s/@VERSION@/${VERSION}/g" dwmblocks.1.in > $@

install: all
	mkdir -p          ${DESTDIR}${PREFIX}/bin/
	mkdir -p          ${DESTDIR}${MANPREFIX}/man1
	cp -f dwmblocks   ${DESTDIR}${PREFIX}/bin/
	sed "s/@VERSION@/${VERSION}/g" dwmblocks.1 > \
	                  ${DESTDIR}${MANPREFIX}/man1/dwmblocks.1
	chmod 0755        ${DESTDIR}${PREFIX}/bin/dwmblocks
	chmod 0644        ${DESTDIR}${MANPREFIX}/man1/dwmblocks.1

uninstall:
	rm -f ${DESTDIR}${PREFIX}/bin/dwmblocks
	rm -f ${DESTDIR}${MANPREFIX}/man1/dwmblocks.1

clean:
	rm -f dwmblocks dwmblocks.o
	rm -f ${DIST}.tar.gz

dist: clean
	git archive --format=tar.gz -o ${DIST}.tar.gz --prefix=${DIST}/ HEAD

.PHONY: all install uninstall clean dist
