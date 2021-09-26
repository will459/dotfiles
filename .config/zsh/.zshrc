HISTFILE=~/.config/zsh/.histfile
HISTSIZE=10000
SAVEHIST=10000
setopt nomatch
unsetopt autocd beep extendedglob notify
bindkey -v

zstyle :compinstall filename '/home/wecorre/.zshrc'

# Auto load some modules
autoload -Uz compinit promptinit
compinit
promptinit

# Completions config
zstyle ':completion:*' menu select

# Prompt config
prompt elite2

# Make sure terminal is in application mode
if (( ${+terminfo[smkx]} && ${+terminfo[rmkx]} )); then
    autoload -Uz add-zle-hook-widget
    function zle_application_mode_start { echoti smkx }
    function zle_application_mode_stop  { echoti rmkx }
    add-zle-hook-widget -Uz zle-line-init   zle_application_mode_start
    add-zle-hook-widget -Uz zle-line-finish zle_application_mode_stop
fi

# History Search
autoload -Uz up-line-or-beginning-search down-line-or-beginning-search
zle -N up-line-or-beginning-search
zle -N down-line-or-beginning-search

[[ -n "$terminfo[kcuu1]" ]] && bindkey -- "$terminfo[kcuu1]" up-line-or-beginning-search
[[ -n "$terminfo[kcud1]" ]] && bindkey -- "$terminfo[kcud1]" down-line-or-beginning-search

# Remember recent directories for use with `dirs -v`
# `cd -1` would go to dir 1 listed by dirs
autoload -Uz add-zsh-hook

DIRSTACKFILE="${XDG_CACHE_HOME:-$HOME/.cache}/zsh/dirs"
if [[ -f "$DIRSTACKFILE" ]] && (( ${#dirstack} == 0 )); then
    dirstack=("${(@f) "$(< "$DIRSTACKFILE")"}")
    [[ -d "${dirstack[1]}" ]] && cd -- "${dirstack[1]}"
fi
chpwd_dirstack() {
    print -l -- "$PWD" "${(u)dirstack[@]}" > "$DIRSTACKFILE"
}
add-zsh-hook -Uz chpwd chpwd_dirstack

DIRSTACKSIZE='20'

setopt AUTO_PUSHD PUSHD_SILENT PUSHD_TO_HOME PUSHD_IGNORE_DUPS PUSHD_MINUS
