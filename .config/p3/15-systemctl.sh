#!/usr/bin/env sh

if has "systemctl"; then
	if has "bat"; then
		# dont show grid or numbering
		var "SYSTEMD_PAGER" "/usr/bin/bat --plain --pager=less"
	fi
fi
