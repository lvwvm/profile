#!/usr/bin/env sh

var "GNUPGHOME" "${XDG_DATA_HOME}/gnupg"
var "GNUPG_CONF" "${XDG_CONFIG_HOME}/gnupg/gpg.conf"
var "GNUPG_AGENT_CONF" "${XDG_CONFIG_HOME}/gnupg/gpg-agent.conf"
var "DIRMNGR_CONF" "${XDG_CONFIG_HOME}/dirmngr/dirmngr.conf"
