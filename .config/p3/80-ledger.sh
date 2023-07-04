#!/usr/bin/env sh

var "LEDGER_FILE" "$XDG_DATA_HOME/ledger/checkbook.journal"

[ ! -d "$XDG_DATA_HOME/ledger/" ] && mkdir "$XDG_DATA_HOME/ledger/"
