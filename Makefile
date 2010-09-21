PREFIX	=/opt
BINDIR	=${PREFIX}/bin

all:	beep beep.mp3

check:	beep beep.mp3
	./beep

install: beep beep.mp3
	install -d ${BINDIR}
	install -c beep ${BINDIR}/
	install -c -m 0644 beep.mp3 ${BINDIR}/

uninstall:
	cd ${BINDIR} && ${RM} beep beep.mp3
