#!/usr/bin/env sh

var "RUSTUP_HOME" "${XDG_DATA_HOME}/rustup"

if [ ! -d "${RUSTUP_HOME}" ]; then
	mkdir "${RUSTUP_HOME}"
fi

# Rust cargo repository data.
var "CARGO_HOME" "${XDG_DATA_HOME}/cargo"

if [ ! -d "${CARGO_HOME}" ]; then 
    mkdir -p "${CARGO_HOME}"
fi

PATH="${CARGO_HOME}/bin:$PATH"
