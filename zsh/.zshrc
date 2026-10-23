

# History

HISTFILE=$HOME/.history
HISTSIZE=100000
SAVEHIST=$HISTSIZE

setopt EXTENDED_HISTORY          # Write the history file in the ':start:elapsed;command' format.
setopt HIST_EXPIRE_DUPS_FIRST    # Expire a duplicate event first when trimming history.
setopt HIST_FIND_NO_DUPS         # Do not display a previously found event.
setopt HIST_IGNORE_ALL_DUPS      # Delete an old recorded event if a new event is a duplicate.
setopt SHARE_HISTORY             # Share history between all sessions.


# Completion & Colors

zstyle ':completion:*' menu select
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'
zstyle ':completion:*' list-colors ''

autoload -Uz compinit
compinit

autoload -U colors && colors

precmd() {
  print -Pn "\e]0;%~\a"
}


# Aliases

alias ls='ls --color'
alias la='ls --all'
alias grep='grep --color'

alias py='python'
alias gs='git status'


# Helper Functions

# activating and deactivating a python venv
pyenv() {
    if [ -f "./.venv/bin/activate" ]; then
        source ./.venv/bin/activate
    elif typeset -f deactivate > /dev/null; then
        deactivate
    else
        echo "No .venv found!"
    fi
}

# running single c as a script lang 
runc() {
	tcc "$1" -o /tmp/program
	if [[ -e /tmp/program ]]; then
		/tmp/program "${@:2}"
		rm /tmp/program
		return 0
	else 
		return 1
	fi
}

# basic info
info() {
	echo "You're $(whoami) at $(hostname). System is $(awk -F= '/^NAME=/ {print $2}' /etc/os-release | tr -d '"'), active shell is $SHELL and current directory is $(pwd)."
}

# prompt startup
eval "$(starship init zsh)"
