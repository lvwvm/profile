#!/usr/bin/env sh

var "OPAMROOT" "${XDG_DATA_HOME}/opam"

if [ ! -d "$OPAMROOT" ]; then
	mkdir $OPAMROOT
fi
