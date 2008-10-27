# Environment Variables
export PATH="/opt/local/bin:/opt/local/sbin:$PATH:/opt/local/lib/erlang/lib/rabbitmq_server-1.4.0/sbin/"
export MANPATH="/opt/local/share/man:$MANPATH"
export EDITOR="mate"

# Aliases
source ~/.aliases/bash.sh
source ~/.aliases/git.sh
source ~/.aliases/irc.sh
source ~/.aliases/projects.sh
source ~/.aliases/ruby.sh
source ~/.aliases/rails.sh
source ~/.aliases/svn.sh
source ~/.aliases/webby.sh

# Completion
source ~/.autocomplete/git-completion.bash

# Prompt
export PS1="[\[\e[32;1m\]\W\[\e[0m\]\$(__git_ps1 ' (\[\e[30;1m\]%s\[\e[0m\])')]\$ "