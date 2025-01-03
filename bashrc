
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return
PATH=~/.gem/ruby/2.3.0/bin/:~/scripts:/usr/local/DS-5/bin:$PATH
#PATH=~/scripts:$PATH
export PATH
export GOPATH=$HOME/gobook
alias ls="ls --color=auto"
function parse_git_branch () {
           git branch 2> /dev/null | sed -e "/^[^*]/d" -e "s/* \(.*\)/ (\1)/"
       }

       RED="\[\033[0;31m\]"
       YELLOW="\[\033[0;33m\]"
       GREENBOLD="\[\033[01;32m\]"
       BLUEBOLD="\[\033[01;34m\]"
       NO_COLOUR="\[\033[0m\]"

PS1="$GREENBOLD\u@\h$NO_COLOUR:$BLUEBOLD\w$YELLOW\$(parse_git_branch)$NO_COLOUR-> "
#PS1="\u@\h \w/ -> "
export LANG=en_US.UTF-8
alias quartus="/opt/altera/14.0/quartus/bin/quartus --64bit"
alias modelsim="/opt/altera/14.0/modelsim_ase/bin/vsim"
SOCEDS_DEST_ROOT=/opt/altera/14.0/embedded
export SOCEDS_DEST_ROOT
alias felt="sshfs felt.uio.no:/mn/felt/elg ~/felt"
alias eds="sh /opt/altera/14.0/embedded/embedded_command_shell.sh"
alias :q="exit"
alias ll="ls -lh"
alias emacs="emacs -nw"
alias matlab="/home/einojo/matlab/bin/matlab"
alias vim="nvim"

export EDITOR=nvim
alias mkdate="date +"%F" | xargs mkdir"

# git completion
source /usr/share/bash-completion/completions/git
setxkbmap -option -layout qq
