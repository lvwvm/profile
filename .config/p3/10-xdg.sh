#!/usr/bin/env sh

var "XDG_CONFIG_HOME" "${HOME}/.config"
[ ! -d "${XDG_CONFIG_HOME}" ] && mkdir "${HOME}/.config"

#shellcheck disable=2034
var "XDG_DATA_HOME" "${HOME}/.local/share"
[ ! -d "${XDG_DATA_HOME}" ] && mkdir "${XDG_DATA_HOME}"

#shellcheck disable=2034
var "XDG_BUILD_HOME" "${HOME}/.local/build"
[ ! -d "${XDG_BUILD_HOME}" ] && mkdir "${XDG_BUILD_HOME}"

#shellcheck disable=2034
var "XDG_BIN_HOME" "${HOME}/.local/bin"
[ ! -d "${XDG_BIN_HOME}" ] && mkdir "${XDG_BIN_HOME}"

# add to path
var "PATH" "${XDG_BIN_HOME}:${PATH}"

#shellcheck disable=2034
var "XDG_CACHE_HOME" "${HOME}/.local/cache"
[ ! -d "${XDG_CACHE_HOME}" ] && mkdir "${XDG_CACHE_HOME}"

var "XDG_VAR_HOME" "${HOME}/.local/var"
[ ! -d "${XDG_VAR_HOME}" ] && mkdir "${XDG_VAR_HOME}"

var "XDH" "${XDG_DATA_HOME}"
var "XBH" "${XDG_BIN_HOME}"
var "XCH" "${XDG_CONFIG_HOME}"
var "XCA" "${XDG_CACHE_HOME}"
