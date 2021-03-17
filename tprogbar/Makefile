.POSIX:

prefix = /usr/local

all:
	@echo "all target"

install:
	@echo "Installing tprogbar..."
	install -m 555 tprogbar $(DESTDIR)/$(prefix)/bin/tprogbar
	@echo "done!"

clean:
	@echo "Cleaning tprogbar"

distclean: clean

uninstall:
	@echo "Uninstall tprogbar"
	rm -f $(DESTDIR)/$(prefix)/bin/tprogbar
	@echo "done!"

.PHONY: all install clean distclean uninstall
