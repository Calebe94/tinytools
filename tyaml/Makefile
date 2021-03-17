.POSIX:

prefix = /usr/local

all:
	@echo "all target"

install:
	@echo "Installing tyaml..."
	install -m 555 tyaml $(DESTDIR)/$(prefix)/bin/tyaml
	@echo "done!"

clean:
	@echo "Cleaning tyaml"

distclean: clean

uninstall:
	@echo "Uninstall tyaml"
	rm -f $(DESTDIR)/$(prefix)/bin/tyaml
	@echo "done!"

.PHONY: all install clean distclean uninstall
