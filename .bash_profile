EDITOR=vim;   	                export EDITOR
VISUAL=vim                      export VISUAL
PAGER=bat;  	                export PAGER
MANPAGER="bat --style=grid";    export MANPAGER

# Query terminal size; useful for serial lines.
if [ -x /usr/bin/resizewin ] ; then /usr/bin/resizewin -z ; fi

# Display a random cookie on each login.
if [ -x /usr/bin/fortune ] ; then /usr/bin/fortune freebsd-tips ; fi

if [ -d "$HOME/.local/bin" ] ; then PATH="$PATH:$HOME/.local/bin" ; fi

export PATH="$PATH:$HOME/.cargo/bin"

if [ -f ~/.bashrc ]; then
    . ~/.bashrc
fi
