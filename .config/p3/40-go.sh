#!/usr/bin/env sh

# Go Environment Variables
var "GOPATH" "${XDG_DATA_HOME}/go"
var "GOBIN" "${XDG_BIN_HOME}"

# GVM Environment Variables
var "GVM_ROOT" "${XDG_DATA_HOME}/gvm"

if [ ! -d "${GVM_ROOT}" ]; then
	git clone https://github.com/moovweb/gvm "${GVM_ROOT}"
fi

if [ ! -h "${XDG_BIN_HOME}/gvm" ]; then
	ln -sT "${GVM_ROOT}/bin/gvm" "${XDG_BIN_HOME}/gvm"
fi
