#!/usr/bin/env sh

install_asdf() {
  [ ! -d $ASDF_DATA_DIR ] &&
    git clone https://github.com/asdf-vm/asdf.git $ASDF_DATA_DIR --branch v0.8.1
}

config_asdf() {
  # asdf configuration location.
  var "ASDF_CONFIG_FILE" "${XDG_CONFIG_HOME}/asdfrc"
  [ ! -f $ASDF_CONFIG_FILE ] && touch $ASDF_CONFIG_FILE

  # filename for storing the tool names and versions.
  var "ASDF_DEFAULT_TOOL_VERSIONS_FILENAME" ".config/asdf-versions"
  var "ASDF_COMPLETIONS" "$ASDF_DATA_DIR/completions"
}

# file location asdf installs plugins, shims, etc.
var "ASDF_DATA_DIR" "${XDG_DATA_HOME}/asdf"

if ! has "asdf"; then
  install_asdf
fi

config_asdf

unset install_asdf config_asdf
