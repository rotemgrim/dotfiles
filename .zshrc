# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/rotem/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
alias config='/usr/bin/git --git-dir=/home/rotem/.cfg/ --work-tree=/home/rotem'
