-include ./../_commons/share.Makefile
OUT_FOLDER?=./../_generated
ENV_FILE?=./../.env

validate:
	test -s ${ENV_FILE} || { printf "\n${ENV_FILE} file does not exist! \nPlease 'cp ${ENV_FILE}.template ${ENV_FILE}'\nEdit ${ENV_FILE}\nAnd then source ${ENV_FILE}.\nExiting..."; exit 1; }

.PHONY: say_hello
say_hello:
	@make cowsay message="i3wm Setup"

## configs: 	Render configs from environment variable
.PHONY: render
render:
	@rm -rf ${OUT_FOLDER}/i3
	@for FILE in $$(find ./i3 -name "*.tpl*"); do \
		source ${ENV_FILE} && gomplate -f $$FILE -o ${OUT_FOLDER}/$$(echo $$FILE | sed "s/.tpl//"); \
	done

## configs: 	Apply configs
.PHONY: configs
configs: validate render
	@cp ${OUT_FOLDER}/i3/.config $$HOME/.config
