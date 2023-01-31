if status --is-login
    set -x -a PATH $HOME/.local/bin
    set -x -a PATH $HOME/.cargo/bin

    set -x EDITOR vim
    set -x VISUAL vim
    set -x PAGER bat
    set -x MANPAGE bat --style=grid
end

set -x GPG_TTY (tty)
