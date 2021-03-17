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

tyaml: ${CONFIG_FOLDER} ${BIN_FOLDER}
	@echo "Installing tyaml..."
	install -m 555 tyaml/tyaml ${BIN_FOLDER}
	@echo "done!"

uninstall:
	@echo "Removing tinytools..."
	${MAKE} -C tsearch/ uninstall
	${MAKE} -C tpomodoro/ uninstall
	${MAKE} -C tmenu/ uninstall
	rm -f ${BIN_FOLDER}/tyaml
	${MAKE} -C tnotes/ uninstall
	rm -fr ${CONFIG_FOLDER}
	${MAKE} -C tgoeswall/ uninstall
	${MAKE} -C tprogbar/ uninstall
	${MAKE} -C ttodo/ uninstall
	@echo "done!"

install: tyaml
	${MAKE} -C tsearch/ install
	${MAKE} -C tmenu/ install
	${MAKE} -C tgoeswall/ install
	${MAKE} -C tnotes/ install
	${MAKE} -C tpomodoro/ install
	${MAKE} -C tprogbar/ install
	${MAKE} -C ttodo/ install
	@echo "tinytools installed successfully!"

.PHONY: install tyaml uninstall
