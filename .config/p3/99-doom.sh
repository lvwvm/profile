#!/usr/bin/env sh
var "DOOMDIR" "${XDG_CONFIG_HOME}/doom"
var "LOCALDOOMDIR" "${XDG_CACHE_HOME}/doom"
var "DOOM_DATA_DIR" "${XDG_DATA_HOME}/emacsen/doom"

# DOOM's data directory
if [ ! -d "${DOOM_DATA_DIR}" ]; then
  git clone https://github.com/hlissner/doom-emacs "${DOOM_DATA_DIR}"
fi

if [ ! -h "${XDG_BIN_HOME}/doom" ]; then
  ln -sT "${DOOM_DATA_DIR}/bin/doom" "${XDG_BIN_HOME}"
fi

if has "doom"; then
  doom env -a "SSH_AUTH_SOCK\|DBUS_SESSION_BUS_ADDRESS"
fi
