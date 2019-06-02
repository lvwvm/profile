#!/usr/bin/env sh

# Add color to `ls` command
if [ ! -d "$XDG_DATA_HOME/LS_COLORS" ];then
    git clone https://github.com/trapd00r/LS_COLORS "$XDG_DATA_HOME/LS_COLORS" 
    ln -s ~/.dir_colors "$XDG_DATA_HOME/LS_COLORS/LS_COLORS"
fi
