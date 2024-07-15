# # remap keys
# bindkey    "^[[3~"          delete-char
# bindkey    "^[3;5~"         delete-char
# bindkey "${terminfo[khome]}" beginning-of-line
# bindkey "${terminfo[kend]}" end-of-line
# bindkey "\e[H" beginning-of-line
# bindkey "\e[F" end-of-line


# Setting for the new UTF-8 terminal support in Lion
# LC_CTYPE=en_US.UTF-8
# LC_ALL=en_US.UTF-8
#LANGUAGE=en_US.UTF-8
#LANG=en_US.UTF-8


source ~/antigen.zsh

# source /usr/share/autojump/autojump.zsh

# Load the oh-my-zsh's library.
# antigen use oh-my-zsh

antigen bundle git
antigen bundle fzf
antigen bundle aws
antigen bundle nvm
antigen bundle node
antigen bundle yarn
antigen bundle rails
antigen bundle helm
antigen bundle kubectl
antigen bundle golang
antigen bundle rust
antigen bundle themes
# antigen bundle docker
antigen bundle docker-compose
antigen bundle screen
antigen bundle ssh-agent
antigen bundle zsh-interactive-cd
#antigen bundle autojump
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-completions
antigen bundle zsh-users/zsh-history-substring-search ./zsh-history-substring-search.zsh
antigen bundle command-not-found
# antigen bundle atuinsh/atuin@main

# Tell Antigen that you're done.
antigen apply

[ -f /home/linuxbrew/.linuxbrew/etc/profile.d/autojump.sh ] && . /home/linuxbrew/.linuxbrew/etc/profile.d/autojump.sh

eval "$(atuin init zsh --disable-up-arrow)" # --disable-ctrl-r
eval "$(starship init zsh)"

alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
alias ll='eza -lh'
alias ls='ll'
alias lla='eza -lha'
alias la='eza -lha'
alias htop='btop'

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export PATH="$HOME/.cargo/bin:$PATH"
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

cat ~/motd | lolcat
