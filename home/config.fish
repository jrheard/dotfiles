set -x fish_prompt_pwd_dir_length 9999

set PATH /usr/local/bin $PATH
set PATH /Users/jrheard/.cargo/bin $PATH
set PATH $PATH /Users/jrheard/.local/bin
set EDITOR /usr/local/bin/vim

abbr -a sb 'ssh -t sandbox "tmux attach"'

set fish_greeting
set -g fish_user_paths "/usr/local/sbin" $fish_user_paths

alias claude="/Users/jrheard/.claude/local/claude"

starship init fish | source
