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

fi

if [ ! -L "${PYENV_ROOT}/versions" ];then
    ln -s "${PYENV_ROOT}/versions" "${WORKON_HOME}"
fi

PATH="${PYENV_ROOT}/shims:$PATH"
export PATH
