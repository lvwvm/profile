#!/usr/bin/env sh

# seperate emacs data location
var "EMACSHOME" "${XDG_DATA_HOME}/emacs"

# configuration is stored in config home
var "EMACSINIT" "${XDG_CONFIG_HOME}/emacs/init.el"

# check for a link to emacs.d, create emacs 'data' location if necessary,
# check for an existing emacs.d, and finally link .emacs.d  to the 'data' location.
if [ ! -h ~/.emacs.d ]; then
	if [ ! -d "${EMACSHOME}" ]; then
		mkdir "${EMACSHOME}"
	fi
	if [ -d ~/.emacs.d ]; then
		mv -rf ~/.emacs.d/* "${EMACSHOME}"
	fi

	ln -sT "${EMACSHOME}" ~/emacs.d

	# link ~/.config/emacs/init.el into EMACSHOME
	if [ ! -h "${EMACSHOME}/init.el" ]; then
		ln -s "${EMACSINIT}" "${EMACSHOME}"
	fi
fi

# move existing .emacs file to the EMACSINIT location then
# create a link in the home directory
if [ ! -h ~/.emacs ]; then
	if [ ! -f "${EMACSINIT}" ]; then
		touch "${EMACSINIT}"
	fi
	if [ -f ~/.emacs ]; then
		mv ~/.emacs "${EMACSINIT}"
	fi
	ln -sT "${EMACSINIT}" ~/.emacs
fi
