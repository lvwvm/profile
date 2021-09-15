#!/usr/bin/env zsh

# source pyenv virtualenv
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"
eval "$(rbenv init -)"
eval "$(goenv init -)"
eval "$(direnv hook zsh)"
