#!/usr/bin/env sh

var "TF_CLI_CONFIG_FILE" "${XDG_CONFIG_HOME}/terraformrc"
[ ! -r ${TF_CLI_CONFIG_FILE} ] && touch ${TF_CLI_CONFIG_FILE}
