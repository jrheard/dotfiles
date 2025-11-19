set -x fish_prompt_pwd_dir_length 9999

set PATH /usr/local/bin $PATH
set PATH /Users/jrheard/.cargo/bin $PATH
set PATH $PATH /Users/jrheard/.local/bin
set EDITOR /usr/local/bin/vim

if not set -q abbrs_initialized
	set -U abbrs_initialized
	abbr sb 'ssh -t sandbox "tmux attach"'
end

set -x SPACEFISH_PROMPT_ORDER user host dir git package node docker ruby golang php rust haskell julia aws conda pyenv exec_time line_sep battery jobs exit_code char

set -x SPACEFISH_USER_SHOW always

set -x SPACEFISH_PYENV_SHOW false
set -x SPACEFISH_DOCKER_SHOW false
set -x SPACEFISH_VENV_SHOW false
set -x SPACEFISH_RUBY_SHOW false
set -x SPACEFISH_PROMPT_FIRST_PREFIX_SHOW true

set -x SPACEFISH_KUBECONTEXT_PREFIX	'on '
set -x SPACEFISH_KUBECONTEXT_SUFFIX	' '

set -x SPACEFISH_RUST_SHOW false
set -x SPACEFISH_PACKAGE_SHOW false

set -x SPACEFISH_USER_PREFIX '['
set -x SPACEFISH_USER_SUFFIX '@'

set -x SPACEFISH_HOST_PREFIX ''
set -x SPACEFISH_HOST_SHOW always
set -x SPACEFISH_HOST_SUFFIX ':'

set -x SPACEFISH_DIR_PREFIX ''
set -x SPACEFISH_DIR_SUFFIX '] '

set -x SPACEFISH_GIT_PREFIX ''

set -x VIRTUAL_ENV_DISABLE_PROMPT 1
set -x SPACEFISH_CHAR_SYMBOL '🚂 '

set fish_greeting
set -g fish_user_paths "/usr/local/sbin" $fish_user_paths


alias claude="/Users/jrheard/.claude/local/claude"
