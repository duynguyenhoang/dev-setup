# --------------
# Shared tasks
# ------------

SHELL := bash
.ONESHELL:
.SHELLFLAGS := -eu -o pipefail -c
.DELETE_ON_ERROR:
MAKEFLAGS += --warn-undefined-variables
MAKEFLAGS += --no-builtin-rules
MAKEFLAGS += --no-print-directory

_WARN := "\033[33m%s\033[0m %s\n"  # Yellow text for "printf"
_TITLE := "\033[32m%s\033[0m %s\n" # Green text for "printf"
_ERROR := "\033[31m%s\033[0m %s\n" # Red text for "printf"

CONFIRM_ASK := Would you like to install
UNAME := $(shell uname)

# Add the following 'help' target to your Makefile
# And add help text after each target name starting with '\#\#'
.PHONY: help
help:
	@if $(MAKE) -n say_hello &> /dev/null ;  \
    then \
        make say_hello; \
    fi
	@echo
	@echo "------------------"
	@fgrep -h "##" $(MAKEFILE_LIST) | fgrep -v fgrep | sed -e 's/\\$$//' | sed -e 's/##//'

# Re-usable target for yes no prompt. Usage: make .prompt-yesno message="Is it yes or no?"
# Will exit with error if not yes
.prompt-yesno:
	@exec 9<&0 0</dev/tty
	@printf $(_WARN) "$(message) [Y/n]:"
	@[[ -z $$NO_WAIT ]] && read -rs -t1 -n 1 yn;
	@exec 0<&9 9<&-
	[[ -z $$yn ]] || [[ $$yn == [yY] ]] && echo Y >&2 || (echo N >&2 && exit 1)

cowsay:
	@(which cowsay >/dev/null 2>&1 && cowsay -f tux $(message)) || echo $(message)
