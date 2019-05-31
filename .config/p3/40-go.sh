#!/usr/bin/env sh

# Go Environment Variables
var "GOPATH" "${XDG_DATA_HOME}/go"
var "GOBIN" "${XDG_BIN_HOME}"

# GVM Environment Variables
var "GVM_ROOT" "${XDG_DATA_HOME}/gvm"
