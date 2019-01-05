# disable fish greeting
set fish_greeting

# start tmux automatically if not connecting over SSH,
# attaching to an existing sesssion if possible
if not set -q TMUX; and not is_ssh
  tmux attach ^/dev/null; or tmux
end

# set current directory
set -l dir (dirname (status -f))

source $dir/env.fish
source $dir/alias.fish
