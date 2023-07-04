#!/usr/bin/env sh

MAILDIR="${XDG_VAR_HOME}/mail"

if has "mu"; then
    if [ ! -d "$MAILDIR" ]; then
        mu init --maildir="$MAILDIR"
        mu mkdir --mode=700 "$MAILDIR"
    fi
else
    if [ ! -d "${MAILDIR}" ]; then
        mkdir "${MAILDIR}"
    fi
fi
