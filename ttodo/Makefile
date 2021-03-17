.POSIX:

prefix = /usr/local

all:
	@echo "all target"

install:
	@echo "Installing ttodo..."
	install -m 555 ttodo $(DESTDIR)/$(prefix)/bin/ttodo
	install -m 555 dmenu_ttodo $(DESTDIR)/$(prefix)/bin/dmenu_ttodo
	@echo "done!"

clean:
	@echo "Cleaning ttodo"

distclean: clean

uninstall:
	@echo "Uninstall ttodo"
	rm -f $(DESTDIR)/$(prefix)/bin/ttodo
	rm -f $(DESTDIR)/$(prefix)/bin/dmenu_ttodo
	@echo "done!"

.PHONY: all install clean distclean uninstall
