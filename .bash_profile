source ~/.git-completion.sh

export PATH=/opt/local/bin:/opt/local/sbin:$PATH

export EDITOR="/usr/bin/vim"
export TERM=xterm-color

alias ls='ls -G'
alias ll="ls -hl"

export CLICOLOR=1
export LSCOLORS=ExFxCxDxBxegedabagacad

export PROMPT_COMMAND='export GIT_PROMPT_BRANCH=$(__git_ps1 "(%s)"); echo -ne "\033]0;${PWD/#$HOME/~}\007"'
export PS1="[\u$@@\h:\w]\$GIT_PROMPT_BRANCH \$ "
