#!/usr/bin/env sh

if has "flatpak"; then
    var "FLATPAK_DATA_HOME" "$XDG_DATA_HOME/exports/share"
    var "XDG_DATA_DIRS" "$FLATPAK_DATA_HOME:$XDG_DATA_DIRS"
fi
