export ZSH="/Users/sam/.oh-my-zsh"

PATH=$PATH:$HOME/bin
ZSH_DISABLE_COMPFIX=true
ZSH_THEME="random" # I like the jnrowe theme
CASE_SENSITIVE="true"
DISABLE_AUTO_UPDATE="true"
COMPLETION_WAITING_DOTS="true"

plugins=(git)

source $ZSH/oh-my-zsh.sh

# git
alias gs="git status"
alias add="git add"
alias diff="git diff"

# navigation
alias dev="cd /Users/sam/dev"
alias sand="cd ~/sand"

# virtualenv
alias activate="source venv/bin/activate"

# misc.
alias refresh="source /Users/sam/.zshrc"
