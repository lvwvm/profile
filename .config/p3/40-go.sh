#!/usr/bin/env sh

install_golang() {
  asdf plugin add golang
  asdf install golang latest
}

config_golang() {
  # Go Environment Variables
  var "GOPATH" "${HOME}/.local"
  var "GOBIN" "${XDG_BIN_HOME}"
}

if ! has "go"; then
  install_golang
fi

config_golang

unset install_golang config_golang
