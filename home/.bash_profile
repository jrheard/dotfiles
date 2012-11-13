export EDITOR="/usr/bin/vim"

# virtualenv goodness
#source /usr/local/bin/virtualenvwrapper.sh
export WORKON_HOME=~/envs
export VIRTUAL_ENV_DISABLE_PROMPT=1
export PIP_RESPECT_VIRTUALENV=true

alias ls='ls -G'
alias ll="ls -hl"

export CLICOLOR=1
export LSCOLORS=ExFxCxDxBxegedabagacad

source ~/.git-completion.sh
export GIT_PS1_SHOWDIRTYSTATE=1
export PROMPT_COMMAND='export GIT_PROMPT_BRANCH=$(__git_ps1 " (%s)"); echo -ne "\033]0;${PWD/#$HOME/~}\007"'

export PS1="[\[\033[1;36m\]\u$@\[\033[00m\]@\h:\[\033[1;32m\]\w\[\033[00m\]]\[\033[1;33m\]\$GIT_PROMPT_BRANCH \[\033[00m\]\$ "

if [ "$YELP_IN_SANDBOX" ]; then
	export PS1="[\[\033[1;36m\]\u$@\[\033[00m\]@\h:\[\033[1;32m\]\w\[\033[00m\]]\[\033[1;33m\]\$GIT_PROMPT_BRANCH \[\033[35m\](sandbox)\[\033[00m\] \$ "
fi

# include .bashrc if it exists
if [ -f ~/.bashrc ]; then
   source ~/.bashrc
fi
