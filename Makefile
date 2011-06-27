PREFIX	=/opt
BINDIR	=${PREFIX}/bin
INSTALL	=install

all:	stbeep stbeep.mp3

check:	stbeep stbeep.mp3
	./stbeep

install: stbeep stbeep.mp3
	${INSTALL} -D stbeep ${BINDIR}/stbeep
	${INSTALL} -D stbeep.mp3 ${BINDIR}/stbeep.mp3

uninstall:
	cd ${BINDIR} && ${RM} stbeep stbeep.mp3
