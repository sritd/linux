#
# ~/.bash_profile
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# source global definitions
if [ -f /etc/bash.bashrc ]; then
	. /etc/bash.bashrc
fi

# umask
umask 0077

# user specific aliases
alias ..='cd ..'
alias ls='ls --color=auto'
alias l='ls -a --color=auto'
alias ll='ls -l --color=auto'
alias lll='ls -la --color=auto'
alias vi='vim'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'
alias cal='cal -3'

# user specific environment
# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$PATH:$HOME/bin"
fi
# EDITOR
export EDITOR=/usr/bin/vim
# VISUAL
export VISUAL=/usr/bin/vim
#export CLASSPATH=.:$HOME/javalibs/example.jar

function shellColor {
  local BLACK="\[\033[0;30m\]"
  local RED="\[\033[0;31m\]"
  local GREEN="\[\033[0;32m\]"
  local YELLOW="\[\033[0;33m\]"
  local BLUE="\[\033[0;34m\]"
  local PINK="\[\033[0;35m\]"
  local CYAN="\[\033[0;36m\]"
  local GRAY="\[\033[0;37m\]"
  local LIGHT_BLACK="\[\033[1;30m\]"
  local LIGHT_RED="\[\033[1;31m\]"
  local LIGHT_GREEN="\[\033[1;32m\]"
  local LIGHT_YELLOW="\[\033[1;33m\]"
  local LIGHT_BLUE="\[\033[1;34m\]"
  local LIGHT_PINK="\[\033[1;35m\]"
  local LIGHT_CYAN="\[\033[1;36m\]"
  local LIGHT_GRAY="\[\033[1;37m\]"
  local NO_COLOUR="\[\033[0m\]"

  PS1="\n${GRAY}[${RED}\u${GRAY}@${GREEN}\h${GRAY}] [${YELLOW}\$(date +%A)${GRAY}, ${GREEN}\$(date +%d.\ %B\ %Y)${GRAY}] [${PINK}\$(date +%H:%M)${GRAY}]\n${GRAY}[${CYAN}\W${GRAY}] ${NO_COLOUR}"
}

shellColor
