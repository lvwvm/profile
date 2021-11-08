#!/usr/bin/env sh

if has "wine"; then
  # Wine stores its configuration files and installed Windows programs in ~/.wine
  var "WINEPREFIX" "$XDG_DATA_HOME/wine"

  # Disable Geko Rendering
  var "WINEDLLOVERRIDES" "mshtml"

  if ! [ -d "${WINEPREFIX}" ]; then
    mkdir "${WINEPREFIX}"
  fi
fi
