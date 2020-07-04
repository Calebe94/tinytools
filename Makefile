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

tsearch: ${CONFIG_FOLDER} ${BIN_FOLDER} tyaml
	@echo "Installing tsearch..."
	install -m +x tsearch/tsearch ${BIN_FOLDER}
	install -m +x tsearch/tsearch-dmenu ${BIN_FOLDER}
	install tsearch/params.yaml ${CONFIG_FOLDER}
	@echo "done!"

tpomodoro: ${CONFIG_FOLDER} ${BIN_FOLDER}
	@echo "Installing tpomodoro..."
	install -m +x tpomodoro/tpomodoro ${BIN_FOLDER}
	$(eval notification_folder := /usr/share/sounds/tpomodoro/)
	[ -d $(notification_folder) ] || mkdir -p $(notification_folder)
	install tpomodoro/Notification.mp3 $(notification_folder)
	@echo "done!"

ttodo: ${CONFIG_FOLDER} ${BIN_FOLDER}
	@echo "Installing ttodo..."
	install -m +x ttodo/ttodo ${BIN_FOLDER}
	install -m +x ttodo/dmenu_ttodo ${BIN_FOLDER}
	@echo "done!"

tmenu: ${CONFIG_FOLDER} ${BIN_FOLDER} tyaml
	@echo "Installing tmenu..."
	install -m +x tmenu/tmenu ${BIN_FOLDER}
	install tmenu/menu.yaml ${CONFIG_FOLDER}
	@echo "done!"

tyaml: ${CONFIG_FOLDER} ${BIN_FOLDER}
	@echo "Installing tyaml..."
	install -m +x tyaml/tyaml ${BIN_FOLDER}
	@echo "done!"

tnotes: ${CONFIG_FOLDER} ${BIN_FOLDER}
	@echo "Installing tnotes..."
	install -m +x tnotes/tnotes ${BIN_FOLDER}
	install -m +x tnotes/dmenu_tnotes ${BIN_FOLDER}
	@echo "done!"

tgoeswall: ${CONFIG_FOLDER} ${BIN_FOLDER}
	@echo "Installing tgoeswall..."
	install -m +x tgoeswall/tgoeswall ${BIN_FOLDER}
	@echo "done!"

uninstall:
	@echo "Removing tinytools..."
	rm -f ${BIN_FOLDER}/tsearch
	rm -f ${BIN_FOLDER}/tsearch-dmenu
	rm -f ${BIN_FOLDER}/tpomodoro
	rm -fr /usr/share/sounds/tpomodoro/
	rm -f ${BIN_FOLDER}/ttodo
	rm -f ${BIN_FOLDER}/dmenu_ttodo
	rm -f ${BIN_FOLDER}/tmenu
	rm -f ${BIN_FOLDER}/tyaml
	rm -f ${BIN_FOLDER}/tnotes
	rm -f ${BIN_FOLDER}/dmenu_tnotes
	rm -f ${BIN_FOLDER}/tgoeswall
	rm -fr ${CONFIG_FOLDER}
	@echo "done!"

install: tsearch ttodo tmenu tyaml tnotes tgoeswall tpomodoro
	@echo "tinytools installed successfully!"

.PHONY: install tsearh tpomodoro ttodo tmenu tyaml tnotes tgoeswall uninstall
