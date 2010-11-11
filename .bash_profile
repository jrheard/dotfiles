export PATH=/usr/local/bin:/opt/local/bin:/opt/local/sbin:$HOME/dev/moody_social/scripts:$PATH
export PYTHONPATH=$HOME/packages:$PYTHONPATH

export EDITOR="/usr/bin/vim"
export TERM=xterm-color

# virtualenv goodness
export WORKON_HOME=~/envs
source /usr/local/bin/virtualenvwrapper.sh
export VIRTUAL_ENV_DISABLE_PROMPT=1
export PIP_RESPECT_VIRTUALENV=true


alias ls='ls -G'
alias ll="ls -hl"
alias screen='TERM=screen-256color screen'

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

# for moodj dev
alias sb="/Applications/Songbird.app/Contents/MacOS/songbird -ProfileManager &"

# screen ssh-agent forwarding
test /tmp/ssh-agent-$USER-screen
test $SSH_AUTH_SOCK
if [ "$SSH_AUTH_SOCK" != "/tmp/ssh-agent-$USER-screen" ] && [ ! "/tmp/ssh-agent-$USER-screen" -ef "$SSH_AUTH_SOCK" ]; then
	ln -sf "$SSH_AUTH_SOCK" "/tmp/ssh-agent-$USER-screen"
fi
