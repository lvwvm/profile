#!/usr/bin/env sh

# ZSH startup/shutdown files
var "ZDOTDIR" "${XDG_CONFIG_HOME}/zsh"

# Location of ZPLUG_HOME 
var "ZPLUG_HOME" "${XDG_DATA_HOME}/zplug"

# All binaries go here.
var "ZPLUG_BIN" "${XDG_BIN_HOME}"

# Location of downloaded zplug repos
var "ZPLUG_REPOS" "${ZPLUG_HOME}/repos"

# The file to save the history in when an interactive shell exits.
var "HISTFILE" "${XDG_DATA_HOME}/zsh/.histfile"

# The maximum number of events stored in the internal history list.
var "HISTSIZE" "10000"

# The maximum number of history events to save in the history file.
var "SAVEHIST" "10000"

if ! [ -d "${ZPLUG_HOME}" ]; then
    git clone https://github.com/zplug/zplug --depth=1 --branch 2.4.2 "${ZPLUG_HOME}"
fi
