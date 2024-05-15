# Environment Variables
export EDITOR="zed -w"

# nvm
export NVM_DIR="$HOME/.nvm"
[ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm

# Aliases
alias ls="ls -1AG"

alias p="cd ~/Projects"

alias gs="git status"
alias ga="git add ."
alias gc="git commit"
alias grm='git ls-files --deleted | xargs git rm'
