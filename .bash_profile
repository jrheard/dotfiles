source ~/.git-completion.sh

export EDITOR="/usr/bin/vim"
alias ll="ls -l"
export CLICOLOR=1
export LSCOLORS=ExFxCxDxBxegedabagacad
export GIT_PS1_SHOWDIRTYSTATE=1
export PS1="${BRIGHT_CYAN}[${CYAN}\u$@@\h${WHITE}:\w${BRIGHT_CYAN}]$(__git_ps1 "(%s)")${NORMAL} \$ ${RESET}"
#PS1='[\u@\h \W$(__git_ps1 " (%s)")]\$ '

# MacPorts Installer addition on 2010-03-15_at_13:12:58: adding an appropriate PATH variable for use with MacPorts.
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
# Finished adapting your PATH environment variable for use with MacPorts.
