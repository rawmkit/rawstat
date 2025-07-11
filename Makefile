.POSIX:

include config.mk

all: config.h rawstat rawstat.1

config.h:
	cp config.def.h $@

rawstat: rawstat.o

rawstat.1: rawstat.1.scdoc
	scdoc < rawstat.1.scdoc > rawstat.1

install: all
	mkdir -p        ${DESTDIR}${PREFIX}/bin/
	mkdir -p        ${DESTDIR}${MANPREFIX}/man1
	cp -f rawstat   ${DESTDIR}${PREFIX}/bin/
	cp -f rawstat.1 ${DESTDIR}${MANPREFIX}/man1/
	chmod 0755      ${DESTDIR}${PREFIX}/bin/rawstat
	chmod 0644      ${DESTDIR}${MANPREFIX}/man1/rawstat.1

uninstall:
	rm -f ${DESTDIR}${PREFIX}/bin/rawstat
	rm -f ${DESTDIR}${MANPREFIX}/man1/rawstat.1

clean:
	rm -f rawstat rawstat.o rawstat.1

release:
	git tag -a v${VERSION} -m v${VERSION}

.PHONY: all install uninstall clean release
