function dotfiles
    set git (which git)
    $git --git-dir=$HOME/.dotfiles --work-tree=$HOME $argv
end
