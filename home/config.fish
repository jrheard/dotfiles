set -x fish_prompt_pwd_dir_length 9999


set -x PYENV_ROOT $HOME/.pyenv

set -x PIPENV_PYTHON $PYENV_ROOT/shims/python

set -x PATH $PYENV_ROOT/bin $HOME/bin $PATH

set -x LIBRARY_PATH $LIBRARY_PATH /usr/local/opt/openssl/lib/

status --is-interactive; and . (pyenv init -|psub)
status --is-interactive; and . (pyenv virtualenv-init -|psub)


set -x SPACEFISH_PROMPT_ORDER kubecontext time user host dir git package node docker ruby golang php rust haskell julia aws conda pyenv exec_time line_sep battery jobs exit_code char


set -x SPACEFISH_USER_SHOW always

set -x SPACEFISH_PYENV_SHOW false
set -x SPACEFISH_DOCKER_SHOW false
set -x SPACEFISH_VENV_SHOW false

set -x SPACEFISH_KUBECONTEXT_PREFIX	'on '
set -x SPACEFISH_KUBECONTEXT_SUFFIX	' '

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
