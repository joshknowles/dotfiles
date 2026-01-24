# History
HISTSIZE=10000
SAVEHIST=10000
HISTFILE=~/.zsh_history
setopt HIST_IGNORE_DUPS HIST_IGNORE_SPACE SHARE_HISTORY

# Options
setopt AUTO_CD NO_BEEP

# Environment Variables
export EDITOR="zed -w"

# Lazy-load nvm
export NVM_DIR="$HOME/.nvm"
lazy_load_nvm() {
  unset -f nvm node npm npx
  [ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"
  [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"
}
nvm() { lazy_load_nvm && nvm "$@"; }
node() { lazy_load_nvm && node "$@"; }
npm() { lazy_load_nvm && npm "$@"; }
npx() { lazy_load_nvm && npx "$@"; }

# qlty
export QLTY_INSTALL="$HOME/.qlty"
export PATH="$QLTY_INSTALL/bin:$PATH"
[ -s "/opt/homebrew/share/zsh/site-functions/_qlty" ] && source "/opt/homebrew/share/zsh/site-functions/_qlty"


# Aliases
alias ls="ls -1AG"

alias p="cd ~/Projects"

alias ..="cd .."
alias ...="cd ../.."

alias gs="git status"
alias ga="git add ."
alias gc="git commit"
alias grm='git ls-files --deleted | xargs git rm'

# Zoxide (smart cd)
eval "$(zoxide init zsh)"

# Starship (prompt)
eval "$(starship init zsh)"

# Completions
autoload -Uz compinit && compinit
zstyle ':completion:*' menu select
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'  # Case-insensitive

# Leave these last
source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source $(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
