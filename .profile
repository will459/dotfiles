EDITOR=vim;   	export EDITOR
VISUAL=vim      export VISUAL
PAGER=less;  	export PAGER

ENV=$HOME/.bashrc; export ENV

# Query terminal size; useful for serial lines.
if [ -x /usr/bin/resizewin ] ; then /usr/bin/resizewin -z ; fi

# Display a random cookie on each login.
if [ -x /usr/bin/fortune ] ; then /usr/bin/fortune freebsd-tips ; fi

if [ -d "$HOME/.local/bin" ] ; then PATH="$HOME/.local/bin:$PATH" ; fi

export PATH="$HOME/.cargo/bin:$PATH"
