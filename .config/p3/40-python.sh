#!/usr/bin/env sh

# virtualenvwrapper virtual environment location.
var "WORKON_HOME" "${XDG_DATA_HOME}/virtualenvs"
var "PYENV_ROOT" "${XDG_DATA_HOME}/pyenv"

# "where to place virtual environments."
if [ ! -d "${WORKON_HOME}" ]; then
	mkdir "${WORKON_HOME}"
fi

# $pyenv_root stores location of managed python versions.
if [ ! -d "${PYENV_ROOT}" ]; then
	git clone https://github.com/pyenv/pyenv.git "${PYENV_ROOT}"
fi

# pyenv virtualenv support plugin.
if [ ! -d "${PYENV_ROOT}/plugins/pyenv-virtualenv" ]; then
	git clone https://github.com/pyenv/pyenv-virtualenv.git "${PYENV_ROOT}/plugins/pyenv-virtualenv"
fi

# pyenv virtualenvwrapper support plugin.
if [ ! -d "${PYENV_ROOT}/plugins/pyenv-virtualenvwrapper" ]; then
	git clone https://github.com/pyenv/pyenv-virtualenvwrapper.git "${PYENV_ROOT}/plugins/pyenv-virtualenvwrapper"
fi

if [ ! -L "${PYENV_ROOT}/versions" ]; then
	ln -s "${PYENV_ROOT}/versions" "${WORKON_HOME}"
fi
# pyenv works by inserting a directory of shims at the front of your PATH
var "PATH" "$PYENV_ROOT/shims:$PATH"

# any virtual environments created from the shell using mkvirtualenv will be created
# using pyvenv.
var "PYENV_VIRTUALENVWRAPPER_PREFER_PYVENV" "true"

var "POETRY_VIRTUALENVS_PATH" "${WORKON_HOME}"
