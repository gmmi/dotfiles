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

# aliases
alias zeit='/bin/bash ~/bin/date.sh'
alias mirror='/usr/local/bin/wget --mirror --page-requisites --no-parent --convert-links -P ./ "$@"'
alias fuckyubi='pkill -9 scdaemon ; pkill -9 gpg-agent ; /usr/local/MacGPG2/bin/gpg-agent --daemon > ~/.gpg-agent-info ; source ~/.gpg-agent-info'

export PATH="/usr/local/opt/ruby/bin:/usr/local/lib/ruby/gems/3.0.0/bin:/opt/homebrew/opt/ruby/bin:$HOME/.gem/ruby/3.3.0/bin:$HOME/.local/share/gem/ruby/3.0.0/bin:$PATH"
