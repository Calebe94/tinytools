# tinytools - scripts to improve your productivity.
# See LICENSE file for copyright and license details.

.POSIX:

CONFIG_FOLDER=/etc/tinytools

uninstall:
	@echo "Removing tinytools..."
	${MAKE} -C tsearch/ uninstall
	${MAKE} -C tpomodoro/ uninstall
	${MAKE} -C tmenu/ uninstall
	${MAKE} -C tnotes/ uninstall
	${MAKE} -C tgoeswall/ uninstall
	${MAKE} -C tprogbar/ uninstall
	${MAKE} -C ttodo/ uninstall
	${MAKE} -C tyaml uninstall
	rm -fr ${CONFIG_FOLDER}
	@echo "done!"

install:
	${MAKE} -C tsearch/ install
	${MAKE} -C tmenu/ install
	${MAKE} -C tgoeswall/ install
	${MAKE} -C tnotes/ install
	${MAKE} -C tpomodoro/ install
	${MAKE} -C tprogbar/ install
	${MAKE} -C ttodo/ install
	${MAKE} -C tyaml/ install
	@echo "tinytools installed successfully!"

.PHONY: install uninstall
