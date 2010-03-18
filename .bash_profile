source ~/.git-completion.sh

export PATH=/opt/local/bin:/opt/local/sbin:$PATH

export EDITOR="/usr/bin/vim"
export TERM=xterm-color

alias ls='ls -G'
alias ll="ls -hl"

export CLICOLOR=1
export LSCOLORS=ExFxCxDxBxegedabagacad

export PROMPT_COMMAND='export GIT_PROMPT_BRANCH=$(__git_ps1 " (%s)"); echo -ne "\033]0;${PWD/#$HOME/~}\007"'
export PS1="[\[\033[1;36m\]\u$@\[\033[00m\]@\h:\[\033[1;32m\]\w\[\033[00m\]]\[\033[1;33m\]\$GIT_PROMPT_BRANCH \[\033[00m\]\$ "
