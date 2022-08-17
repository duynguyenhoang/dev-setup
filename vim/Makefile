-include ./../_commons/share.Makefile

.PHONY: say_hello
say_hello:
	@make cowsay message="Neovim with Lua setup including common plugins"

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
