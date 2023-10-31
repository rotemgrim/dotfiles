source ~/.antigen.zsh

source /usr/share/autojump/autojump.zsh

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

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
antigen bundle docker
antigen bundle docker-compose
antigen bundle screen
antigen bundle ssh-agent
antigen bundle zsh-interactive-cd
antigen bundle autojump
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-completions
antigen bundle zsh-users/zsh-history-substring-search ./zsh-history-substring-search.zsh
antigen bundle command-not-found

# Tell Antigen that you're done.
antigen apply


eval "$(starship init zsh)"

alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

