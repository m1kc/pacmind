SHELL = /bin/bash
INSTALL = /usr//bin/install -c
MSGFMT = /usr/bin/msgfmt
SED = /bin/sed
CUT = /usr/bin/cut
DESTDIR =
bindir = /usr/bin
localedir = /usr/share/locale
config = /usr/share/pacmind
icons = /usr/share/pixmaps
deskdir = /usr/share/applications

all:

install: all
	$(INSTALL) -d $(DESTDIR)$(bindir)
	$(INSTALL) -d $(DESTDIR)$(config)
	$(INSTALL) -d $(DESTDIR)$(icons)
	$(INSTALL) -d $(DESTDIR)$(deskdir)
	$(INSTALL) -m755 pacmind $(DESTDIR)$(bindir)
	$(INSTALL) -m755 pacmind-lunch.sh $(DESTDIR)$(config)
	$(INSTALL) -m644 COPYING $(DESTDIR)$(config)
	$(INSTALL) -m644 pacmind.png $(DESTDIR)$(icons)
	$(INSTALL) -m644 pacmind.svg $(DESTDIR)$(icons)
	$(INSTALL) -m644 pacmind.desktop $(DESTDIR)$(deskdir)
	for file in *.po; \
	do \
		lang=$$(echo $$file | $(CUT) -d. -f1); \
		$(INSTALL) -d $(DESTDIR)$(localedir)/$$lang/LC_MESSAGES; \
		$(MSGFMT) -o $(DESTDIR)$(localedir)/$$lang/LC_MESSAGES/pacmind.mo $$file; \
	done
