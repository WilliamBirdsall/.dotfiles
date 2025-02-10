# Environment Variables
export PSHOST="willbirdsall.com"
export NVM_DIR="$HOME/.nvm"
[ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

#IF
export LAGOON_SSH_PRIVATE_KEY=$(cat ~/.ssh/id_ed25519)
alias lrs="yes | lando destroy && yes | docker system prune -a && lando start"
alias lpd="lando drush sql-sync @lagoon.balt02-f2-live @self -y"

# Path Edits
export PATH=$PATH:~/Projects/.dotfiles/bin/.local/scripts

# Misc. Alias's
alias sshps="ssh $PSHOST"
alias ri="eval $(rbenv init -)"

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

PROMPT="%F{069}%n%f%F{0159}@%f%F{069}%m%f%F{159}:%f%F{049}[%~]%f%F{159}$%f "

zstyle ':completion:*' list-colors 'di=1;34;'

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
