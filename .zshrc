export ZSH="/Users/sam/.oh-my-zsh"

# Load pyenv automatically by adding
# the following to ~/.bashrc:

PATH="$HOME/.pyenv/bin:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"


PATH=$PATH:$HOME/bin
ZSH_DISABLE_COMPFIX=true
ZSH_THEME="jnrowe" # I like jnrowe, jonathan
CASE_SENSITIVE="true"
DISABLE_AUTO_UPDATE="true"
COMPLETION_WAITING_DOTS="true"

plugins=(git)

source $ZSH/oh-my-zsh.sh

# git
alias gs="git status"
alias add="git add"
alias diff="git diff"
alias co="git checkout"
alias pull="git pull"
alias push="git push"

# navigation
alias dev="cd /Users/sam/dev"
alias sand="cd ~/sand"

# virtualenv
alias activate="source venv/bin/activate"

# misc.
alias refresh="source /Users/sam/.zshrc"
