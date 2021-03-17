.POSIX:

prefix = /usr/local

all:
	@echo "all target"

install:
	@echo "Installing tpomodoro..."
	install -m 555 tpomodoro $(DESTDIR)/$(prefix)/bin/tpomodoro
	install -D Notification.mp3 -t /usr/share/sounds/tpomodoro/
	@echo "done!"

clean:
	@echo "Cleaning tpomodoro"

distclean: clean

uninstall:
	@echo "Uninstall tpomodoro"
	rm -f $(DESTDIR)/$(prefix)/bin/tpomodoro
	rm -fr /usr/share/sounds/tpomodoro/
	@echo "done!"

.PHONY: all install clean distclean uninstall
