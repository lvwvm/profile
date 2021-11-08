#!/usr/bin/env sh

if has "openssl"; then
  var "OPENSSL_CONF" "${XDG_CONFIG_HOME}/openssl/openssl.cnf"
  var "SSL_HOME" "${XDG_DATA_HOME}/ssl"
  var "RANDFILE" "${SSL_HOME}/rand"
  [ ! -d "$(dirname ${OPENSSL_CONF})" ] && mkdir "$(dirname ${OPENSSL_CONF})"
  [ ! -d "${SSL_HOME}" ] && mkdir "${SSL_HOME}"
  [ ! -f "${RANDFILE}" ] && openssl rand -base64 -writerand "${RANDFILE}"
fi
