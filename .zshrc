export ZSH="/Users/sam/.oh-my-zsh"

# virtualenv
export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/Devel
export VIRTUALENVWRAPPER_PYTHON=/Library/Frameworks/Python.framework/Versions/3.10/bin/python3
export VIRTUALENVWRAPPER_VIRTUALENV=/Library/Frameworks/Python.framework/Versions/3.10/bin/virtualenv
source /Library/Frameworks/Python.framework/Versions/3.10/bin/virtualenvwrapper.sh

PATH=$PATH:$HOME/bin
ZSH_DISABLE_COMPFIX=true
ZSH_THEME="jonathan" # I like jnrowe, jonathan
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
alias save="git commit"
alias stash="git add . && git commit -n -m 'TEMP'"
alias unstash="git reset HEAD~"

# navigation
alias dev="cd /Users/sam/dev"
alias sand="cd ~/sand"
alias dot="cd ~/dotfiles"

# virtualenv
alias activate="source venv/bin/activate"

# misc.
alias refresh="source /Users/sam/.zshrc"
# alias start_pg="/opt/homebrew/opt/postgresql/bin/postgres -D /opt/homebrew/var/postgres"
# alias start_pg="pg_ctl -D /usr/local/var/postgres start"
alias start_pg="sudo brew services start postgresql"
alias ibrew='arch -x86_64 /usr/local/bin/brew'
alias ppjson='python -m json.tool'

# Django
alias pm="python manage.py"
alias ppm="python project/manage.py"

export NVM_DIR="$HOME/.nvm"
[ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && . "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && . "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion


export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"

function test() { pytest project -k "$1" -s}
