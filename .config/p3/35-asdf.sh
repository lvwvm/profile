#!/usr/bin/env sh

# asdf configuration location.
var "ASDF_CONFIG_FILE" "${XDG_CONFIG_HOME}/asdfrc"
[ ! -f $ASDF_CONFIG_FILE ] && touch $ASDF_CONFIG_FILE

# Location where asdf install plugins, shims and install.
var "ASDF_DATA_DIR" "${XDG_DATA_HOME}/asdf"
[ ! -d $ASDF_DATA_DIR ] &&
	git clone https://github.com/asdf-vm/asdf.git $ASDF_DATA_DIR --branch v0.8.0

# The name of the file storing the tool names and versions.
var "ASDF_DEFAULT_TOOL_VERSIONS_FILENAME" "${XDG_CONFIG_HOME}/asdf-versions"

var "ASDF_COMPLETIONS" "$ASDF_DATA_DIR/completions"
