#!/usr/bin/env sh

# user global location for git config
[ ! -d ${XDG_CONFIG_HOME}/git ] && mkdir ${XDG_CONFIG_HOME}/git

if has "pinentry"; then
	var "GIT_ASKPASS" "$(command -v pinentry)"
fi

if has "delta"; then
	var "GIT_PAGER" "delta"
else
	var "GIT_PAGER" "${BAT_PAGER:-${PAGER}}"
fi
