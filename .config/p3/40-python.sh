# tells virtualenvwrapper where to place your virtual environment.
var "WORKON_HOME" "${XDG_DATA_HOME}/virtualenvs"
var "PYENV_ROOT" "${XDG_DATA_HOME}/pyenv"

# pyenv manages python versions.
if [ ! -d "${PYENV_ROOT}" ]; then
    git clone https://github.com/pyenv/pyenv.git "${PYENV_ROOT}"
fi

# pyenv virtualenv support plugin.
if [ ! -d "${PYENV_ROOT}/plugins/pyenv" ]; then
    git clone https://github.com/pyenv/pyenv-virtualenv.git "${PYENV_ROOT}/plugins/pyenv-virtualenv"
fi

if [ ! -d "${WORKON_HOME}" ]; then
    mkdir "$WORKON_HOME"
fi
