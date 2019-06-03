setopt no_beep auto_cd complete_in_word correct no_clobber hist_allow_clobber
setopt rm_star_wait extended_glob auto_pushd
eval `dircolors`

export PAGER=less

autoload -U compinit && compinit

bindkey -e
autoload -U edit-command-line
# Emacs style
zle -N edit-command-line
bindkey '^XE' edit-command-line
bindkey '^X^E' edit-command-line

# prompt
autoload -U colors && colors
PS1="%{%(?..$fg_bold[red]%? )%}%{%(#.$fg_bold[red][.$fg_bold[green][%n@)%}%m\
%{%(#.$fg[cyan].$fg[white])%} %1~%(#.$fg[red].$fg[green])]%#%{$reset_color%} "



source $HOME/.config/alias/bashalias
source $HOME/.config/alias/zshalias

export GPG_TTY=$(tty)
export TERM=xterm-256color
source $HOME/.inputrc

lsp() { ls --color=always -l "$@" | less -r }
