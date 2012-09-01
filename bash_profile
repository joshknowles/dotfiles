# Environment Variables
export PATH="/usr/local/bin:${PATH}"
export EDITOR="subl -nw"

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

# rbenv
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi