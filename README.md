### Checkout this repo
```
echo alias dotfiles=`which git` --git-dir='$HOME/.dotfiles' --work-tree='$HOME' >> ~/.bashrc
git clone --bare <repo-clone-url> $HOME/.dotfiles
dotfiles checkout
dotfiles submodule update --init --recursive
```

### Creating your own
```
echo alias dotfiles=`which git` --git-dir='$HOME/.dotfiles' --work-tree='$HOME' >> ~/.bashrc
git init --bare $HOME/.dotfiles
```

### Dependencies
#### Universal Ctags
Available from: https://github.com/universal-ctags/ctags
Recommended to install into your local prefix if it is not available in your repos and prefixing the name with a `u` to prevent colliding.  This can be done with `./configure --prefix=$HOME/.local --program-prefix=u`

#### rust-analyzer
Available from: https://github.com/rust-lang/rust.vim
Can be installed easil with `cargo xtask install --server` which places it into ~/.cargo/bin.  Alternatively, build it manually and install it into ~/.local/bin

### Using
Once you have checked out or created a repo it can be used exactly like any other git repo except through the `dotfiles` alias.  For instace `dotfiles add .vimrc && dotfiles commit`.

It is advisable to ignore files by default to keep the git information clean and simple. `dotfiles config --local status.showUntrackedFiles no`
