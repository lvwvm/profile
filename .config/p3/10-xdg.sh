#!/usr/bin/env sh

var "XDG_CONFIG_HOME" "${HOME}/.config"

#shellcheck disable=2034
var "XDG_DATA_HOME" "${HOME}/.local/share"

#shellcheck disable=2034
var "XDG_BIN_HOME" "${HOME}/.local/bin"
var "PATH" "${XDG_BIN_HOME}:${PATH}"

#shellcheck disable=2034
var "XDG_CACHE_HOME" "${HOME}/.local/cache"

var "XDH" "${XDG_DATA_HOME}"
var "XBH" "${XDG_BIN_HOME}"
var "XCH" "${XDG_CONFIG_HOME}"
var "XCA" "${XDG_CACHE_HOME}"
