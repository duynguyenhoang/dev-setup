-include ./../_commons/share.Makefile

# Add or remove apps here
ALL_AUTO_APPS := zsh lazygit jq npm git cowsay ripgrep neovim
ALL_MANUAL_APPS := fzf ohmyzsh

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

.PHONY: say_hello
say_hello:
	@make cowsay message="Install common tools/applications: $(ALL_AUTO_APPS) $(ALL_MANUAL_APPS)"

## install	Install all applications
.PHONY: install
install:
	@echo "Installing all applications:"
	@echo
	@echo $(ALL_AUTO_APPS)
	@echo
	@echo And
	@echo
	@echo $(ALL_MANUAL_APPS)
	@echo
	@echo "If you want to change, stop it and change the list"
	@echo "----------------------------------"
	@echo

	@if ! make .prompt-yesno message="$(CONFIRM_ASK) these applications?" 2> /dev/null; then \
		make install-auto && make install-others;\
	fi;

.PHONY: install-auto
install-auto:
	@for app in $(ALL_AUTO_APPS); do \
		printf $(_TITLE) "Installing [$${app}]" &&  \
		eval " $(INSTALL_CMD) $${app}"; \
	done

.PHONY: install-others
install-others:
	@chmod 755 ./others/*.sh
	@for app in $(ALL_MANUAL_APPS); do \
		printf $(_TITLE) "Installing [$${app}]" &&  \
		(ls ./others/$${app}.sh >> /dev/null 2>&1 && ./others/$${app}.sh) || printf $(_ERROR) "Installation script [$${app}] not found"; \
	done
	@if [ -f ~/.tmux.conf ]; do \
		echo "Your ~/.tmux.conf file exists. Moving it to ~/.tmux.conf.backup"
		mv ~/.tmux.conf ~/.tmux.conf.backup
	fi
	@cp ./others/tmux.conf ~/.tmux.conf
