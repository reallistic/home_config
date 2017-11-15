# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

set -o vi

export PIP_REQUIRE_VIRTUALENV=true
export PIP_DOWNLOAD_CACHE=$HOME/.pip/cache

HISTFILESIZE=10000000

export KUBERNETES_PROVIDER=vagrant
export REACT_EDITOR=/Applications/Sublime\ Text.app/Contents/MacOS/Sublime\ Text

[ -f /usr/local/etc/bash_completion ] && . /usr/local/etc/bash_completion
