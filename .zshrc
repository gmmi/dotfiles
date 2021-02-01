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
# End of lines added by compinstall

PROMPT='[%m] %. '

# aliases
alias zeit='/bin/bash ~/bin/date.sh'

# variables
path+=('/home/gmmi/bin')
export PATH

# SSH-agent stuff
[ -z "$SSH_AUTH_SOCK" ] && eval "$(ssh-agent -s)"
