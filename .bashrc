# $FreeBSD: releng/12.0/share/skel/dot.shrc 327420 2017-12-31 06:58:58Z eadler $
#
# .shrc - bourne shell startup file 
#
# This file will be used if the shell is invoked for interactive use and
# the environment variable ENV is set to this file.
#
# see also sh(1), environ(7).
#


# file permissions: rwxr-xr-x
#
# umask	022

# Uncomment this to enable the builtin vi(1) command line editor in sh(1),
# e.g. ESC to go into visual mode.
# set -o vi


# some useful aliases
alias h='fc -l'
alias j=jobs
alias m="$PAGER"
alias ll='ls -laFo'
alias l='ls -l'
alias g='egrep -i'
 
# # be paranoid
# alias cp='cp -ip'
# alias mv='mv -i'
# alias rm='rm -i'


# # set prompt: ``username@hostname$ '' 
# PS1="`whoami`@`hostname | sed 's/\..*//'`"
# case `id -u` in
# 	0) PS1="${PS1}# ";;
# 	*) PS1="${PS1}$ ";;
# esac

# search path for cd(1)
# CDPATH=:$HOME

GPG_TTY=$(tty)
export GPG_TTY

# Dotfiles management
alias dotfiles='/usr/local/bin/git --git-dir=$HOME/.dotfiles --work-tree=$HOME'
