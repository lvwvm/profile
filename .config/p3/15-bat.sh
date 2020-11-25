#!/usr/bin/env sh

if has "bat"; then
	var "BAT_PAGER" "less --RAW-CONTROL-CHARS --quit-if-one-screen --mouse"
	var "BAT_CONFIG_PATH" "${XDG_CONFIG_HOME}/bat/config"
	var "BAT_STYLE" "full"
	var "BAT_THEME" "base16"
	if [ ! -r "$BAT_CONFIG_PATH" ]; then
		bat --generate-config-file
	fi
fi
