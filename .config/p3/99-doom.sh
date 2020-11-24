#!/usr/bin/env sh
var "DOOMDIR" "${XDG_CONFIG_HOME}/doom"
var "DOOM_DATA_DIR" "${XDG_DATA_HOME}/doom"

# DOOM's data directory
if [ ! -d "${DOOM_DATA_DIR}" ]; then
	git clone https://github.com/hlissner/doom-emacs "${DOOM_DATA_DIR}"
fi

if [ ! -h "$XDG_BIN_HOME/doom" ]; then
	ln -sT "${DOOM_DATA_DIR}/bin/doom" "$XDG_BIN_HOME"
fi
