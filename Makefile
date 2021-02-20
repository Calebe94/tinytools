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
	install -m 555 tsearch/tsearch ${BIN_FOLDER}
	install -m 555 tsearch/dmenu_tsearch ${BIN_FOLDER}
	install tsearch/params.yaml ${CONFIG_FOLDER}
	@echo "done!"

tpomodoro: ${CONFIG_FOLDER} ${BIN_FOLDER}
	@echo "Installing tpomodoro..."
	install -m 555 tpomodoro/tpomodoro ${BIN_FOLDER}
	$(eval notification_folder := /usr/share/sounds/tpomodoro/)
	[ -d $(notification_folder) ] || mkdir -p $(notification_folder)
	install tpomodoro/Notification.mp3 $(notification_folder)
	@echo "done!"

ttodo: ${CONFIG_FOLDER} ${BIN_FOLDER}
	@echo "Installing ttodo..."
	install -m 555 ttodo/ttodo ${BIN_FOLDER}
	install -m 555 ttodo/dmenu_ttodo ${BIN_FOLDER}
	@echo "done!"

tmenu: ${CONFIG_FOLDER} ${BIN_FOLDER} tyaml
	@echo "Installing tmenu..."
	install -m 555 tmenu/tmenu ${BIN_FOLDER}
	install tmenu/menu.yaml ${CONFIG_FOLDER}
	@echo "done!"

tyaml: ${CONFIG_FOLDER} ${BIN_FOLDER}
	@echo "Installing tyaml..."
	install -m 555 tyaml/tyaml ${BIN_FOLDER}
	@echo "done!"

tnotes: ${CONFIG_FOLDER} ${BIN_FOLDER}
	@echo "Installing tnotes..."
	install -m 555 tnotes/tnotes ${BIN_FOLDER}
	install -m 555 tnotes/dmenu_tnotes ${BIN_FOLDER}
	@echo "done!"

tgoeswall: ${CONFIG_FOLDER} ${BIN_FOLDER}
	@echo "Installing tgoeswall..."
	install -m 555 tgoeswall/tgoeswall ${BIN_FOLDER}
	@echo "done!"

tprogbar: ${BIN_FOLDER}
	@echo "Installing tprogbar..."
	install -m 555 tprogbar/tprogbar ${BIN_FOLDER}
	@echo "done!"

twindow: ${BIN_FOLDER}
	@echo "Installing twindow"
	install -m 555 twindow/twindow ${BIN_FOLDER}
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
	rm -f ${BIN_FOLDER}/tprogbar
	@echo "done!"

install: tsearch ttodo tmenu tyaml tnotes tgoeswall tpomodoro tprogbar tgit twindow
	@echo "tinytools installed successfully!"

.PHONY: install tsearch tpomodoro ttodo tmenu tyaml tnotes tgoeswall uninstall tprogbar tgit twindow
