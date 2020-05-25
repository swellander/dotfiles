export ZSH="/Users/sam/.oh-my-zsh"

ZSH_DISABLE_COMPFIX=true
ZSH_THEME="random"
CASE_SENSITIVE="true"
DISABLE_AUTO_UPDATE="true"
COMPLETION_WAITING_DOTS="true"

plugins=(git)

source $ZSH/oh-my-zsh.sh

alias gs="git status"
alias add="git add"
alias diff="git diff"
