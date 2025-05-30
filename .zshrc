# Environment Variables
export PSHOST="willbirdsall.com"
export NVM_DIR="$HOME/.nvm"

[ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm

# Completion Setup
[ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

# Tmux Session Bash Scripts
alias devps="$HOME/.local/bin/pstmux && tmux a"

# Path Edits
export PATH=$PATH:~/Projects/.dotfiles/bin/.local/scripts

# Misc. Alias's
alias sshps="ssh $PSHOST"
alias ri="eval $(rbenv init -)"
alias ff="fastfetch"

# Program Alias's
alias cat="bat"
alias vi="vim"
alias vim="nvim"

# Git Alias's
alias gd="git diff --color-moved"
alias ga="git add ."
alias gc="git commit"
alias gp="git push"
alias gpl="git pull"
alias gs="git status"
alias gmm="git merge main"
alias gcm="git checkout main"

# Listing Alias's
alias ls="ls --color"
alias ll="ls -lh"
alias lla="ls -alh"

# Quick Launch tmux-sessionizer
bindkey -s ^f "tmux-sessionizer.sh\n"

# Quick Launch cht.sh
bindkey -s ^s "cht.sh"

PROMPT="%F{4}%n%f%F{6}@%f%F{4}%m%f%F{6}:%f%F{14}[%~]%f%F{6}$%f "

zstyle ':completion:*' list-colors 'di=1;34;'

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
