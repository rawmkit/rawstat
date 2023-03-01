.POSIX:

include config.mk

all: dwmblocks dwmblocks.1

.c.o:
	${CC} -c ${CFLAGS} ${CPPFLAGS} $<

config.h:
	cp config.def.h $@

dwmblocks.1:
	sed "s/@VERSION@/${VERSION}/g" dwmblocks.1.in > $@

dwmblocks.o: config.h

dwmblocks: dwmblocks.o
	${LD} dwmblocks.o ${LDFLAGS} -o $@

install: all
	mkdir -p          ${DESTDIR}${PREFIX}/bin/
	mkdir -p          ${DESTDIR}${MANPREFIX}/man1
	cp -f dwmblocks   ${DESTDIR}${PREFIX}/bin/
	cp -f dwmblocks.1 ${DESTDIR}${MANPREFIX}/man1/
	chmod 0755        ${DESTDIR}${PREFIX}/bin/dwmblocks
	chmod 0644        ${DESTDIR}${MANPREFIX}/man1/dwmblocks.1

uninstall:
	rm -f ${DESTDIR}${PREFIX}/bin/dwmblocks
	rm -f ${DESTDIR}${MANPREFIX}/man1/dwmblocks.1

clean:
	rm -f dwmblocks dwmblocks.o dwmblocks.1

.PHONY: all install uninstall clean
