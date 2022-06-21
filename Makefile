PREFIX = /usr/local

install: hbl
		pip3 install unidecode
		mkdir -p $(DESTDIR)$(PREFIX)/share
		cp -f HebrewStrong.xml $(DESTDIR)$(PREFIX)/share/HebrewStrong.xml
		mkdir -p $(DESTDIR)$(PREFIX)/bin
		sed "s~HebrewStrong.xml~$(DESTDIR)$(PREFIX)/share/HebrewStrong.xml~" hbl > $(DESTDIR)$(PREFIX)/bin/hbl
		chmod 755 $(DESTDIR)$(PREFIX)/bin/hbl

uninstall:
		rm -f $(DESTDIR)$(PREFIX)/bin/hbl
		rm -f $(DESTDIR)$(PREFIX)/share/HebrewStrong.xml

.PHONY: install uninstall
