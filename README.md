### Checkout this repo
```
echo alias dotfiles=`which git` --git-dir='$HOME/.dotfiles' --work-tree='$HOME' >> ~/.bashrc
git clone --bare <repo-clone-url> $HOME/.dotfiles
dotfiles checkout
```

### Creating your own
```
echo alias dotfiles=`which git` --git-dir='$HOME/.dotfiles' --work-tree='$HOME' >> ~/.bashrc
git init --bare $HOME/.dotfiles
```

### Using
Once you have checked out or created a repo it can be used exactly like any other git repo except through the `dotfiles` alias.  For instace `dotfiles add .vimrc && dotfiles commit`.

It is advisable to ignore files by default to keep the git information clean and simple. `dotfiles config --local status.showUntrackedFiles no`
