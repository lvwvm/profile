#!/usr/bin/env sh

# Location of Vultr Config
var "VULTR_API_CONFIG" "${XCH}/vultr/config.ini"

if [ ! -d "${XCH}/vultr" ]; then
	mkdir "${XCH}/vultr"
fi
