#!/usr/bin/env sh

var "GEM_HOME" "${XDG_DATA_HOME}/gem"
[ ! -d "${XDG_DATA_HOME}/gem" ] && mkdir "${XDG_DATA_HOME}/gem"
