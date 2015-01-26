#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return
PATH=/snacks/bin/:$PATH:~/.local/bin/:/hom/termvakt/bin/
export PATH
export EDITOR=vim
#LD_LIBRARY_PATH=~/.local/lib/:$LD_LIBRARY_PATH
#export LD_LIBRARY_PATH
alias ls='ls --color'
LS_COLORS='di=1;33:fi=0:ln=31:pi=5:so=5:bd=5:cd=5:or=31:mi=0:ex=35:*.rpm=90'
export LS_COLORS
#PS1='[\u@\h \W]\$ '
PS1='\[\e[0;33m\][\u@\h]\W\$\[\e[0m\] '
alias emacs='emacs -nw'
alias ll='ls -lh'
export LANG=en_US.UTF-8
