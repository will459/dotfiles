# Configure some common environment variables
EDITOR=vim;   	export EDITOR
PAGER=less;  	export PAGER

GPG_TTY=$(tty)
export GPG_TTY

# This makes my home git management work
alias dotfiles='/usr/local/bin/git --git-dir=$HOME/.dotfiles --work-tree=$HOME'

# broot configuration
source /home/wecorre/.config/broot/launcher/bash/br

# Rust
export PATH="$HOME/.cargo/bin:$PATH"

# Set my zsh dotfiles directory to .config
# Either this file must be in $HOME and all other files in .configh/zsh
# or this line can go into /usr/local/etc/zsh/zshenv and this file moves into .config as well
export ZDOTDIR="$HOME/.config/zsh/"
