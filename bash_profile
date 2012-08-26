# Environment Variables
export PATH="/opt/local/bin:/opt/local/sbin:$PATH"
export MANPATH="/opt/local/share/man:$MANPATH"
export EDITOR="mate -w"

# Aliases
source ~/.aliases/bash.sh
source ~/.aliases/development.sh
source ~/.aliases/git.sh

# Completion
if [ -f `brew --prefix`/etc/bash_completion ]; then
  . `brew --prefix`/etc/bash_completion
fi

# Prompt
export PS1="[\[\e[32;1m\]\W\[\e[0m\]\$(__git_ps1 ' (\[\e[30;1m\]%s\[\e[0m\])')]\$ "

# External Sources
if [ -f ~/.bashrc ]; then
   source ~/.bashrc
fi

if [ -s ~/.rvm/scripts/rvm ]; then
  source ~/.rvm/scripts/rvm
fi