#!/usr/bin/env sh

var "GIT_CONFIG" "${XCH}/git/config"

if [ ! -d ${XCH}/git ]; then
	mkdir ${XCH}/git
fi
