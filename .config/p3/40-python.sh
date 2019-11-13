# tells virtualenvwrapper where to place your virtual environment.
var "WORKON_HOME" "${XDG_DATA_HOME}/virtualenvs"
var "PYENV_ROOT" "${XDG_DATA_HOME}/pyenv"

# pyenv manages python versions.
if [ ! -d "${PYENV_ROOT}" ]; then
    curl -L https://github.com/pyenv/pyenv-installer/raw/master/bin/pyenv-installer | bash
    rm "${PYENV_ROOT}/versions"
fi

# pyenv virtualenv support plugin.
if [ ! -d "${PYENV_ROOT}/plugins/pyenv-virtualenv" ]; then
    git clone https://github.com/pyenv/pyenv-virtualenv.git "${PYENV_ROOT}/plugins/pyenv-virtualenv"
fi

if [ ! -d "${WORKON_HOME}" ]; then
    mkdir "${WORKON_HOME}"
fi

if [ ! -L "${PYENV_ROOT}/versions" ];then
    ln -s "${PYENV_ROOT}/versions" "${WORKON_HOME}"
fi

PATH="${PYENV_ROOT}/shims:$PATH"
export PATH
