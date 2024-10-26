#  Chili iso2usb - Utility to write iso file to pendrive/device
#	 Created: 2019/06/14
#	 Altered: 2022/05/26
#
#  Copyright (c) 2024-2024, Vilmar Catafesta <vcatafesta@gmail.com>
#  All rights reserved.
#
#  Redistribution and use in source and binary forms, with or without
#  modification, are permitted provided that the following conditions
#  are met:
#  1. Redistributions of source code must retain the above copyright
#     notice, this list of conditions and the following disclaimer.
#  2. Redistributions in binary form must reproduce the above copyright
#     notice, this list of conditions and the following disclaimer in the
#     documentation and/or other materials provided with the distribution.
#
#  THIS SOFTWARE IS PROVIDED BY THE AUTHOR AS IS'' AND ANY EXPRESS OR
#  IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES
#  OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED.
#  IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR ANY DIRECT, INDIRECT,
#  INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT
#  NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,
#  DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY
#  THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
#  (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF
#  THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
##############################################################################
SHELL=/bin/bash
DESTDIR=
BINDIR=${DESTDIR}/opt/iso2usb
INFODIR=${DESTDIR}/usr/share/doc/iso2usb
MODE=775
DIRMODE=755

.PHONY: build

install:
	mkdir -p ${BINDIR}
	install -m ${MODE} opt/iso2usb/iso2usb ${BINDIR}/
	install -m ${MODE} opt/iso2usb/pendrive.png ${BINDIR}/
	install -m ${MODE} usr/share/applications/iso2usb.desktop ${BINDIR}/
	install -m ${MODE} usr/share/applications/iso2usb.desktop ${DESTDIR}/usr/share/applications/
	mkdir -p ${INFODIR}
	cp LICENSE README.md ${INFODIR}/
	@echo "App chili-iso2usb was installed in ${BINDIR}"

uninstall:
	rm ${BINDIR}/iso2usb
	rm ${BINDIR}/pendrive.png
	rm ${BINDIR}/iso2usb.desktop
	rm ${DESTDIR}/usr/share/applications/iso2usb.desktop
	rm -r ${INFODIR}
	@echo "App chili-iso2usb was removed."


