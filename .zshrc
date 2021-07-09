# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt autocd
unsetopt beep
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/gmmi/.zshrc'
autoload -Uz compinit
compinit

PROMPT='[%m] %. '
RPROMPT="%~ | %h"

# aliases
alias mirror='/usr/local/bin/wget --mirror --page-requisites --no-parent --convert-links -P ./ "$@"'

# for Docker
export DOCKER_HOST=unix:///run/user/1000/docker.sock
