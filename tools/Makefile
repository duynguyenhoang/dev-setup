-include ./../_commons/share.Makefile

ifeq ($(UNAME), Darwin)
	INSTALL_CMD = "brew install"
else
	INSTALL_CMD = "pacman -S --noconfirm"
	# TODO Check other dist
	# OS_NAME := $(grep ^ID= /etc/os-release  | cut -d '=' -f 2)
	# echo $(OS_NAME)
	# ifeq ($(OS_NAME), arch)
	# 	INSTALL_CMD = "yay -S"
	# else
	# 	echo "Unsupported $(OS_NAME)"
	# endif
endif

.PHONY: install
install:
	@chmod 755 ./tools.sh
	./tools.sh
	make config-tmux

## config-tmux	Config your tmux
.PHONY: config-tmux
config-tmux:
	# @if [ -f ~/.tmux.conf ]; do \
	# 	echo "Your ~/.tmux.conf file exists. Moving it to ~/.tmux.conf.backup"
	# 	mv ~/.tmux.conf ~/.tmux.conf.backup
	# fi
	cp ./others/tmux.conf ~/.tmux.conf
