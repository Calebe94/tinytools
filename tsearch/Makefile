.POSIX:

prefix = /usr/local

all:
	@echo "all target"

install:
	@echo "Installing tsearch..."
	install -m 555 tsearch $(DESTDIR)/$(prefix)/bin/tsearch
	install -m 555 dmenu_tsearch $(DESTDIR)/$(prefix)/bin/dmenu_tsearch
	install -D params.yaml -t /etc/tinytools/
	@echo "done!"

clean:
	@echo "Cleaning tsearch"

distclean: clean

uninstall:
	@echo "Uninstall tsearch"
	rm -f $(DESTDIR)/$(prefix)/bin/tsearch
	rm -f $(DESTDIR)/$(prefix)/bin/dmenu_tsearch
	rm -f /etc/tinytools/params.yaml
	@echo "done!"

.PHONY: all install clean distclean uninstall
