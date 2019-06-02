# Compilers
var "CC" "/usr/bin/gcc"
var "CPP" "/usr/bin/cpp"
var "CXX" "/usr/bin/g++"

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
