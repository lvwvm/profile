#!/usr/bin/env sh

# Default C/C++ compilers
if has "clang"; then

	# Clang Compiler
	var "CC" $(command -v clang)

	# Clang++ Compiler
	var "CXX" "${CC}++"

	# C-Family Preprocessor
	var "CPP" "${CC}-cpp"

	var "HAS_CLANG" 1

# Fallback to gcc if it exists.
elif has "gcc"; then

	# GCC Compiler
	var "CC" $(command -v gcc)

	# G++ Compiler
	var "CXX" "${CC}++"

	# GCC Preprocessor
	var "CPP" $(command -v cpp)

	var "HAS_GCC" 1
else
	err "unable to find default C compiler."
	return 1
fi

# Set the version of the default compiler.
if $HAS_CLANG; then
	var "CLANG_VERSION" $(clang --version | awk 'NR==1 { print $3 }')
	var "CLANG_INCLUDE_PATH" /usr/lib/clang/${CLANG_VERSION}/include
fi

if $HAS_GCC; then
	var "GCC_VERSION" $(gcc --version | head -n 1 | cut -d" " -f3)
	var "GCC_INCLUDE_PATH" /usr/lib/gcc/${GCC_VERSION}/include
fi

# Headers
var "CPATH" "./include:/usr/local/include:/usr/lib/gcc/x86_64-pc-linux-gnu/8.3.0/include:/usr/lib/gcc/x86_64-pc-linux-gnu/8.3.0/include-fixed:/usr/include"
var "C_INCLUDE_PATH" "${CPATH}"
var "CPLUS_INCLUDE_PATH" "${CPATH}:/usr/include/c++/8.3.0"
var "OBJC_INCLUDE_PATH" "${CPATH}:/usr/lib/gcc/x86_64-pc-linux-gnu/8.3.0/include/objc"

# Libraries
var "LD_LIBRARY_PATH" "/usr/local/lib:/usr/lib"
var "LD_PRELOAD" ""

# Packages
var "PKG_CONFIG_PATH" "/usr/local/lib/pkgconfig:/usr/lib/pkgconfig"

# Options
var "CFLAGS" "-Wall"
var "CPPFLAGS" ""
var "CXXFLAGS" "-Wall"
