export EDITOR="/usr/bin/vim"

export PATH=$HOME/bin:$HOME/Library/Haskell/bin:$PATH:$HOME/depot_tools

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

export PS1="[\[\033[1;36m\]\u$@\[\033[00m\]@\h:\[\033[1;32m\]\w\[\033[00m\]]\[\033[1;33m\]\[\$GIT_PROMPT_BRANCH \[\033[00m\]\360\237\232\202  "

# include .bashrc if it exists
if [ -f ~/.bashrc ]; then
   source ~/.bashrc
fi

alias sb='ssh -t sandbox "tmux attach"'

alias run-redis="redis-server /usr/local/etc/redis.conf"

alias bs="bundle exec jekyll build --no-watch --config _config.yml,_config_staging.yml && scp -P 2222 -r ~/dev/blog/_staging/* jrheard.com:public_html/blog-staging"

# added by Anaconda3 4.2.0 installer
export PATH="/Users/jrheard/anaconda/bin:$PATH"

source ~/dev/fastai/courses/setup/aws-alias.sh

alias datomic-free=$HOME/.datomic-free/bin/datomic-free

# Setting PATH for Python 3.6
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.6/bin:${PATH}"
export PATH
