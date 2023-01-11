-include ./../_commons/share.Makefile
OUT_FOLDER?=../_generated
ENV_FILE?=../.env

validate:
	@test -s ${ENV_FILE} || { printf "\n${ENV_FILE} file does not exist! \nPlease 'cp ${ENV_FILE}.template ${ENV_FILE}'\nEdit ${ENV_FILE}\nAnd then source ${ENV_FILE}.\nExiting..."; exit 1; }

.PHONY: say_hello
say_hello:
	@make cowsay message="Neovim with Lua setup including common plugins"

## backup: 	Backup nvim config
.PHONY: backup
backup:
	@if [ -d "~/.config/nvim" ]; then mv ~/.config/nvim ~/.config/nvim.backup; fi

## configs: 	Render configs from environment variable
.PHONY: render
render:
	@echo "Rendering configs using gomplate ..."
	@rm -rf ${OUT_FOLDER}/nvim
	@for FILE in $$(find ./nvim -name "*.lua"); do \
		source ${ENV_FILE} && gomplate -f $$FILE -o ${OUT_FOLDER}/$$(echo $$FILE | sed "s/.tpl.lua/.lua/"); \
	done

## configs: 	Apply configs
.PHONY: configs
configs: validate
	@make render
	@make sync_configs
	#@make _pyright
	@make _packer

# #############################
## sync_configs	Sync configs files only
.PHONY: sync_configs
sync_configs:
	@echo "Sync configurations ..."
	@cp -rf ${OUT_FOLDER}/nvim ~/.config/

_pyright:
	@echo "Installing pyright ..."
	@npm i -g pyright

_packer:
	@echo "Installing packer ..."
	@rm -rf ~/.local/share/nvim/site/pack/packer/start/packer.nvim
	@git clone --depth 1 https://github.com/wbthomason/packer.nvim \
 		~/.local/share/nvim/site/pack/packer/start/packer.nvim
