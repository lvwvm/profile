#!/usr/bin/env sh

if has "cookiecutter"; then
	var "COOKIECUTTER_CONFIG" "$XDG_CONFIG_HOME/cookiecutterrc"
	var "COOKIECUTTER_HOME" "$XDG_TEMPLATE_HOME/cookiecutters"

	if [ ! -h ~/.cookiecutterrc ]; then
		if [ -f ~/.cookiecutterrc ]; then
			mv ~/.cookiecutterrc "$COOKIECUTTER_CONFIG"
			ln -sT "$COOKIECUTTER_CONFIG" ~/.cookiecutterrc
		fi
	fi

	if [ ! -d "$COOKIECUTTER_HOME" ]; then
		mkdir "$COOKIECUTTER_HOME"
	fi
fi
