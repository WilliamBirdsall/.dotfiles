# Environment Variables
export PSHOST="willbirdsall.com"

# Path Edits
export PATH=$PATH:~/Projects/.dotfiles/bin/.local/scripts

# Misc. Alias's
alias sshps="ssh $PSHOST"

# Program Alias's
alias cat="bat"
alias vi="vim"

# Git Alias's
alias gd="git diff --color-moved"
alias ga="git add ."
alias gc="git commit"
alias gp="git push"
alias gpl="git pull"
alias gs="git status"
alias gmm="git merge master"
alias gcm="git checkout master"

# Listing Alias's
alias ls="ls --color"
alias ll="ls -lh"
alias lla="ls -alh"

# Quick Launch tmux-sessionizer
bindkey -s ^f "tmux-sessionizer.sh\n"

# Quick Launch cht.sh
bindkey -s ^s "cht.sh"

PROMPT="%F{069}%n%f%F{0159}@%f%F{069}%m%f%F{159}:%f%F{049}[%~]%f%F{159}$%f "

zstyle ':completion:*' list-colors 'di=1;34;'
