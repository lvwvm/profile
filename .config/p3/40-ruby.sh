#!/usr/bin/env sh

var "GEM_HOME" "${XDG_DATA_HOME}/gem"
var "PATH" "${PATH}:$(ruby -e 'print Gem.user_dir')/bin"
[ ! -d "${XDG_DATA_HOME}/gem" ] && mkdir "${XDG_DATA_HOME}/gem"
