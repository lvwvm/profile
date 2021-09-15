#!/usr/bin/env sh

# EMACSHOME - a default "emacs.d" data location.
var "EMACSHOME" "${XDG_DATA_HOME}/emacs"

# EMACSINIT - a default "init.el" configuration script location.
var "EMACSINIT" "${XDG_CONFIG_HOME}/emacs/init.el"

# This script was created, primarily, to handle the chemacs2 emacs profile manager.
# Chemacs2 MUST exist at ~/.emacs.d
if [ ! -d "$XDG_DATA_HOME/chemacs2" ]; then
  git clone https://github.com/plexus/chemacs2.git "$XDG_DATA_HOME/chemacs2"
fi

# The "emacsen" folder is storing emacs.d "distributions" like spacemacs, doom, prelude etc.
[ ! -d "$XDG_DATA_HOME/emacsen" ] && mkdir "$XDG_DATA_HOME/emacsen"

# Emacs init search file order ~/.emacs.el, ~/.emacs, ~/.emacs.d/init.el - but remeber chemacs must see ~/.emacs.d
# These path are prefered by emacs for backwards compatibility.
# Setting XDG_CONFIG_HOME alters emacs' search behavior, although the aforementioned files must be deleted, renamed, and/or unlinked in order to do so.
for _file in ~/.emacs.d/init.el ~/.emacs.el ~/.emacs; do
  case $_file in
    ~/.emacs.d/init.el)
      _path=$(dirname $_file)

      # no existing ~/.emacs.d or link.
      if [ ! -d "$_path" ] && [ ! -h "$_path" ]; then
        ln -sT "$_path" "$XDG_DATA_HOME/chemacs2"

      # existing ~/.emacs.d, no link
      elif [ -d "$_path" ] && [ ! -h "$_path" ]; then
        # move emacs.d contents to emacsen folder.
        mv --no-clobber \
          --backup=simple \
          --suffix=.bk \
          "$_path" "$XDG_DATA_HOME/emacsen/"
        ln -sT "$_path" "$XDG_DATA_HOME/chemacs2"
      fi
      ;;

    ~/.emacs.el | ~/.emacs)
      # no exist emacs init file or link
      if [ -f "$_file" ] && [ ! -h "$_file" ]; then
        mv --backup=simple \
          --suffix=.bk \
          "$_file" "$XDG_DATA_HOME/emacsen/emacs.d/"
      elif [ -f "$_file" ] && [ -h "$_file" ]; then
        unlink "$_file"
      fi
      ;;
  esac
  unset _file
  unset _path
done
