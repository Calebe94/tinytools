# tinytools - scripts to improve your productivity.
# See LICENSE file for copyright and license details.

.POSIX:

BIN_FOLDER=bin
CONFIG_FOLDER=tinytools

${BIN_FOLDER}:
	@echo "Creating ${BIN_FOLDER} folder ..."
	mkdir ${BIN_FOLDER}

${CONFIG_FOLDER}:
	@echo "Creating ${CONFIG_FOLDER} folder ..."
	mkdir ${CONFIG_FOLDER}

tsearch: ${CONFIG_FOLDER} ${BIN_FOLDER}
	@echo "Installing tsearh..."

tpomodoro: ${CONFIG_FOLDER} ${BIN_FOLDER}
	@echo "Installing tpomodoro..."

ttodo: ${CONFIG_FOLDER} ${BIN_FOLDER}

	@echo "Installing ttodo..."

tmenu: ${CONFIG_FOLDER} ${BIN_FOLDER}

	@echo "Installing tmenu..."

tyaml: ${CONFIG_FOLDER} ${BIN_FOLDER}
	@echo "Installing tyaml..."

tnotes: ${CONFIG_FOLDER} ${BIN_FOLDER}
	@echo "Installing tnotes..."

tgoeswall: ${CONFIG_FOLDER} ${BIN_FOLDER}
	@echo "Installing tgoeswall..."

all: tsearch tpomodoro ttodo tmenu tyaml tnotes tgoeswall
	@echo "Packages installed!"

.PHONY: all tsearh tpomodoro ttodo tmenu tyaml tnotes tgoeswall
