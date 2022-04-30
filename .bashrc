# some useful aliases
alias h='fc -l'
alias j=jobs
alias m="$PAGER"
alias ll='ls -laFo'
alias l='ls -l'
alias g='egrep -i'
 
GPG_TTY=$(tty)
export GPG_TTY

# Dotfiles management
alias dotfiles='$(which git) --git-dir=$HOME/.dotfiles --work-tree=$HOME'
