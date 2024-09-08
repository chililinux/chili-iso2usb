###############################################
#           build options                     #
###############################################
#
####### Building iso2usb support ########
#
#

SHELL=/bin/bash
DESTDIR=
BINDIR=${DESTDIR}/opt/iso2usb/src
INFODIR=${DESTDIR}/usr/share/doc/iso2usb
MODE=775
DIRMODE=755

.PHONY: build

install:
	mkdir -p ${BINDIR}
	install -m ${MODE} iso2usb ${BINDIR}/
	install -m ${MODE} pendrive.png ${BINDIR}/
	install -m ${MODE} iso2usb.desktop ${BINDIR}/
	install -m ${MODE} iso2usb.desktop ${DESTDIR}/usr/share/applications/iso2usb.desktop
	mkdir -p ${INFODIR}
	cp LICENSE README.md ${INFODIR}/
	@echo "Software was installed in ${BINDIR}"

uninstall:
	rm ${BINDIR}/iso2usb
	rm ${BINDIR}/pendrive.png
	rm ${BINDIR}/iso2usb.desktop
	rm ${DESTDIR}/usr/share/applications/iso2usb.desktop
	rm -rf ${INFODIR}
	@echo "Software was removed."


