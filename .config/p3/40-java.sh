#!/usr/bin/env sh

if has "java"; then
  if [ -d /usr/lib/jvm/default ]; then
    var "JAVA_HOME" "/usr/lib/jvm/default"
    var "LD_LIBRARY_PATH" "${JAVA_HOME}/lib/:${LD_LIBRARY_PATH}"
  fi
fi