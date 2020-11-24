#!/usr/bin/env sh

# Where packages are built
var "BUILDDIR" "${XDG_BUILD_HOME}"
[ ! -d "$BUILDDIR" ] && mkdir "$BUILDDIR"

# Where to clone package build files
var "AURDEST" "/var/cache/aur"
