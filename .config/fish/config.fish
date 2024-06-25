if status --is-login
    set -x -a PATH $HOME/.local/bin
    set -x -a PATH $HOME/.cargo/bin

    set -x EDITOR vim
    set -x VISUAL vim
    set -x PAGER less
    set -x MANPAGER "sh -c 'col -bx | bat -l man -p'"
end

set -x GPG_TTY (tty)
