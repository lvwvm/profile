#!/usr/bin/env sh

var "SSH_AUTH_SOCK" $(
	gpgconf --list-dir |
		awk -F ":" -e "\$1 == \"agent-ssh-socket\"{ print \$2 }"
)
var "SSH_ASKPASS" "$XDG_BIN_HOME/pinentry"
