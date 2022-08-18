-include ./../_commons/share.Makefile

.PHONY: say_hello
say_hello:
	@make cowsay message="Neovim with Lua setup including common plugins"

## backup: 	Backup nvim config
.PHONY: backup
backup:
	@if [ -d "~/.config/nvim" ]; then mv ~/.config/nvim ~/.config/nvim.backup; fi

## configs: 	Apply configs
.PHONY: configs
configs: backup
	make sync_configs
	make _pyright
	make _packer

# #############################
## sync_configs	Sync configs files only
.PHONY: sync_configs
sync_configs:
	cp -rf ./nvim ~/.config/

_pyright:
	npm i -g pyright

_packer:
	# Install packer
	rm -rf ~/.local/share/nvim/site/pack/packer/start/packer.nvim
	git clone --depth 1 https://github.com/wbthomason/packer.nvim \
 		~/.local/share/nvim/site/pack/packer/start/packer.nvim
