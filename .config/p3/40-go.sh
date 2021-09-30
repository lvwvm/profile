#!/usr/bin/env sh

# Go Environment Variables
var "GOPATH" "${XDG_DATA_HOME}/go"
var "GOBIN" "${XDG_BIN_HOME}"

# GOENV
var "GOENV_ROOT" "${XDG_DATA_HOME}/goenv"
if [ ! -d "${GOENV_ROOT}" ]; then
	git clone https://github.com/syndbg/goenv "${GOENV_ROOT}"
fi

var "PATH" "${GOENV_ROOT}/shims:${GOENV_ROOT}/bin:${PATH}"
