SHELL := bash
.ONESHELL:
.SHELLFLAGS := -eu -o pipefail -c
.DELETE_ON_ERROR:
MAKEFLAGS += --warn-undefined-variables
MAKEFLAGS += --no-builtin-rules

# Add the following 'help' target to your Makefile
# And add help text after each target name starting with '\#\#'
## help: 		Show usage
.PHONY: help
help: hello
	@fgrep -h "##" $(MAKEFILE_LIST) | fgrep -v fgrep | sed -e 's/\\$$//' | sed -e 's/##//'

.PHONY: hello
hello:
	@echo "NEOVIM SETUP"

## backup: 	Backup nvim config
.PHONY: backup
backup:
	mv ~/.config/nvim ~/.config/nvim.backup

## configs: 	Apply configs
.PHONY: configs
configs: backup
	make _sync_lua_config
	make _pyright
	make _packer

# #############################
_sync_lua_config:
	# mkdir ~/.config/nvim/
	cp -rf ./nvim ~/.config/

_pyright:
	npm i -g pyright

_packer:
	# Install packer
	rm -rf ~/.local/share/nvim/site/pack/packer/start/packer.nvim
	git clone --depth 1 https://github.com/wbthomason/packer.nvim \
 		~/.local/share/nvim/site/pack/packer/start/packer.nvim
