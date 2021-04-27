export ZSH="/Users/sam/.oh-my-zsh"

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
alias prune-r="git remote prune origin"
alias prune-l="git branch --merged | egrep -v '(^\*|master|dev|develop)' | xargs git branch -d"
alias save="cz"
alias stash="git add . && git commit -n -m 'TEMP'"
alias unstash="git reset head^"

# navigation
alias dev="cd /Users/sam/dev"
alias sand="cd ~/sand"
alias dot="cd ~/Dev/dotfiles"

# virtualenv
alias activate="source venv/bin/activate"

# misc.
alias refresh="source /Users/sam/.zshrc"
alias startpg="pg_ctl -D /usr/local/var/postgres start"

# Django
alias pm="python manage.py"
alias ppm="python project/manage.py"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
