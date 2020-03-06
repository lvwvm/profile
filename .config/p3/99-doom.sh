#!/usr/bin/env sh
var "DOOMDIR" "$XDG_DATA_HOME/doom"

if [ ! -d "${DOOMDIR}" ]; then
	git clone https://github.com/hlissner/doom-emacs "${DOOMDIR}"
fi

if [ ! -h "$XDG_BIN_HOME/doom" ]; then
	ln -s "${DOOMDIR}/bin/doom" "$XDG_BIN_HOME"
fi
