#!/usr/bin/env sh

var "LUAROCKS_CONFIG" "${XCH}/luarocks/config.lua"
var "LUA_BIN" "${XBH}:/usr/bin"
var "LUA_PATH" "${XDH}/luarocks/lua/5.3/?.lua;${XDH}/luarocks/lua/5.3/?/init.lua;/usr/share/lua/5.3/?.lua;/usr/share/lua/5.3/?/init.lua"
var "LUA_CPATH" "${XDH}/luarocks/lib/lua/5.3/?.so;/usr/lib/lua/5.3/?.so"
