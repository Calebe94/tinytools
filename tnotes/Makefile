.POSIX:

prefix = /usr/local

all:
	@echo "all target"

install:
	@echo "Installing tnotes..."
	install -m 555 tnotes $(DESTDIR)/$(prefix)/bin/tnotes
	install -m 555 dmenu_tnotes $(DESTDIR)/$(prefix)/bin/dmenu_tnotes
	@echo "done!"

clean:
	@echo "Cleaning tnotes"

distclean: clean

uninstall:
	@echo "Uninstall tnotes"
	rm -f $(DESTDIR)/$(prefix)/bin/tnotes
	rm -f $(DESTDIR)/$(prefix)/bin/dmenu_tnotes
	@echo "done!"

.PHONY: all install clean distclean uninstall
