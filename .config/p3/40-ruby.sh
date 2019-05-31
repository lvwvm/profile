#!/usr/bin/env sh

if [ ! -d "${XDG_DATA_HOME}/gem" ]; then
    mkdir "${XDG_DATA_HOME}/gem"
fi

var "GEM_HOME" "${XDG_DATA_HOME}/gem"
var "PATH" "${PATH}:$(ruby -e 'print Gem.user_dir')/bin"
