#!/usr/bin/env sh

var "XDG_CONFIG_HOME" "${HOME}/.config"
[ ! -d "${XDG_CONFIG_HOME}" ] && mkdir "${HOME}/.config"

var "XDG_DATA_HOME" "${HOME}/.local/share"
[ ! -d "${XDG_DATA_HOME}" ] && mkdir "${XDG_DATA_HOME}"

var "XDG_BUILD_HOME" "${HOME}/.local/build"
[ ! -d "${XDG_BUILD_HOME}" ] && mkdir "${XDG_BUILD_HOME}"

var "XDG_BIN_HOME" "${HOME}/.local/bin"
[ ! -d "${XDG_BIN_HOME}" ] && mkdir "${XDG_BIN_HOME}"

var "XDG_LIB_HOME" "${HOME}/.local/lib"
[ ! -d "${XDG_LIB_HOME}" ] && mkdir "${XDG_LIB_HOME}"

var "XDG_INCLUDE_HOME" "${HOME}/.local/include/"
[ ! -d "${XDG_INCLUDE_HOME}" ] && mkdir "${XDG_INCLUDE_HOME}"

# add to path
var "PATH" "${XDG_BIN_HOME}:${PATH}"

# Project templates
var "XDG_TEMPLATE_HOME" "${HOME}/Templates"
[ ! -d "${XDG_TEMPLATE_HOME}" ] && mkdir "${XDG_TEMPLATE_HOME}"

var "XDG_CACHE_HOME" "${HOME}/.cache"
[ ! -d "${XDG_CACHE_HOME}" ] && mkdir "${XDG_CACHE_HOME}"

var "XDG_VAR_HOME" "${HOME}/.local/var"
[ ! -d "${XDG_VAR_HOME}" ] && mkdir "${XDG_VAR_HOME}"

var "XDH" "${XDG_DATA_HOME}"
var "XBH" "${XDG_BIN_HOME}"
var "XCH" "${XDG_CONFIG_HOME}"
var "XCA" "${XDG_CACHE_HOME}"
