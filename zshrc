autoload -Uz compinit
compinit

PS1="%B%F{green}%1~%b%f%# "
SAVEHIST=1000
HISTFILE=~/.zsh_history

export TERM=xterm-256color
export CLICOLOR=1

# Pager colors
export LESS_TERMCAP_se=$'\E[0m'
export LESS_TERMCAP_so=$'\E[41m'

# Readline wrapper
export RLWRAP_HOME="$HOME/.local"

alias ll='ls -l'
alias vimrc='vim ~/.vim/vimrc'
alias shrc='vim ~/.zshrc; . ~/.zshrc'


if [ `uname` == "Linux" ]; then
    alias ls="ls --color"

    open() {
        if [ -z "$1" ]; then
            xdg-open .
        else
            xdg-open $1
        fi
    }
fi
