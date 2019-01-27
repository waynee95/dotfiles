# https://fishshell.com/docs/current/faq.html#faq-envvar
# add custom scripts to path
set -x PATH ~/bin $PATH
set -x PATH ~/.local/bin $PATH

# globals
set -x EDITOR vim
set -x BROWSER firefox
set -x TERMINAL termite

# set locale
set -x LC_ALL en_US.UTF-8
set -x LANG en_US.UTF-8

