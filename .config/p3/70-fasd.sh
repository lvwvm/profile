#!/usr/bin/env sh

var "_FASD_DATA" "${XDG_DATA_HOME}/fasd"
var "_FASD_CACHE" "${XDG_CACHE_HOME}/fasd.cache"

if [ ! -d "${_FASD_DATA}" ]; then
    mkdir "${_FASD_DATA}"
fi

if [ "$(command -v fasd)" -nt "${_FASD_CACHE}" ] || [ ! -s "${_FASD_CACHE}" ];then
  fasd --init posix-hook posix-alias zsh-ccomp zsh-wcomp zsh-hook  >| "${_FASD_CACHE}"
fi

