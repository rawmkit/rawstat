.POSIX:

include config.mk

all: config.h dwmblocks

config.h:
	cp config.def.h $@

install: all
	mkdir -p ${DESTDIR}${PREFIX}/bin/
	mkdir -p ${DESTDIR}${MANPREFIX}/man1
	cp -f dwmblocks ${DESTDIR}${PREFIX}/bin/
	cp -f dwmblocks.1 ${DESTDIR}${MANPREFIX}/man1/
	chmod 0755 ${DESTDIR}${PREFIX}/bin/dwmblocks
	chmod 0644 ${DESTDIR}${MANPREFIX}/man1/dwmblocks.1

uninstall:
	rm -f ${DESTDIR}${PREFIX}/bin/dwmblocks
	rm -f ${DESTDIR}${MANPREFIX}/man1/dwmblocks.1

clean:
	rm -f dwmblocks
	rm -f ${DIST}.tar.gz

release:
	git tag -a v$(VERSION) -m v$(VERSION)

dist: clean
	git archive --format=tar.gz -o ${DIST}.tar.gz --prefix=${DIST}/ HEAD

.PHONY: all install uninstall clean release dist
