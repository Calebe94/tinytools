# tinytools - scripts to improve your productivity.
# See LICENSE file for copyright and license details.

.POSIX:

BIN_FOLDER=/usr/bin
CONFIG_FOLDER=/etc/tinytools


${BIN_FOLDER}:
	@echo "Creating ${BIN_FOLDER} folder ..."
	mkdir ${BIN_FOLDER}

${CONFIG_FOLDER}:
	@echo "Creating ${CONFIG_FOLDER} folder ..."
	mkdir ${CONFIG_FOLDER}

ttodo: ${CONFIG_FOLDER} ${BIN_FOLDER}
	@echo "Installing ttodo..."
	install -m 555 ttodo/ttodo ${BIN_FOLDER}
	install -m 555 ttodo/dmenu_ttodo ${BIN_FOLDER}
	@echo "done!"

tyaml: ${CONFIG_FOLDER} ${BIN_FOLDER}
	@echo "Installing tyaml..."
	install -m 555 tyaml/tyaml ${BIN_FOLDER}
	@echo "done!"

uninstall:
	@echo "Removing tinytools..."
	${MAKE} -C tsearch/ uninstall
	${MAKE} -C tpomodoro/ uninstall
	rm -f ${BIN_FOLDER}/ttodo
	rm -f ${BIN_FOLDER}/dmenu_ttodo
	${MAKE} -C tmenu/ uninstall
	rm -f ${BIN_FOLDER}/tyaml
	${MAKE} -C tnotes/ uninstall
	rm -fr ${CONFIG_FOLDER}
	${MAKE} -C tgoeswall/ uninstall
	${MAKE} -C tprogbar/ uninstall
	@echo "done!"

install: ttodo tyaml
	${MAKE} -C tsearch/ install
	${MAKE} -C tmenu/ install
	${MAKE} -C tgoeswall/ install
	${MAKE} -C tnotes/ install
	${MAKE} -C tpomodoro/ install
	${MAKE} -C tprogbar/ install
	@echo "tinytools installed successfully!"

.PHONY: install ttodo tyaml uninstall
