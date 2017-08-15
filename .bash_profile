alias ..='cd ..'
alias ...='cd ../..'
alias ls='ls --color=auto'
alias ll='ls -l'
alias la='ls -a'
alias grep='grep --color'
alias gitdelmergedbr='git branch --merged | egrep -v "(^\*|master|dev)" | xargs git branch -d'

# 两种用mvim替代vim的方式
# cp /usr/local/bin/mvim /usr/local/bin/vim
# alias vim='mvim -v'

# https://github.com/scop/bash-completion
if [ -f `brew --prefix`/etc/bash_completion ]; then
    . `brew --prefix`/etc/bash_completion
fi

# use gnu ls instead BSD ls
export PATH="$(brew --prefix coreutils)/libexec/gnubin:$PATH"
eval `gdircolors -b $HOME/.dir_colors`

# python virtual env
source /usr/local/bin/virtualenvwrapper.sh
source /usr/local/opt/autoenv/activate.sh

# bash prompt settings, use git prompt
GIT_PROMPT_ONLY_IN_REPO=0
GIT_PROMPT_THEME=Solarized
source ~/.bash-git-prompt/gitprompt.sh

# go settings
export GOPATH=$HOME/go
export PATH="$PATH:$GOPATH/bin"

export AIRFLOW_HOME=~/workspace/visualization/airflow
