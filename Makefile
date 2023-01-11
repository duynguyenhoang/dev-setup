-include ././_commons/share.Makefile

.PHONY: say_hello
say_hello:
	@make cowsay message="Dev setup"

vim-config:
	make -f ./vim/Makefile configs

i3-config:
	(cd ./i3 && make configs)
