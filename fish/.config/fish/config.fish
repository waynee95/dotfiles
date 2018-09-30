# disable fish greeting
set fish_greeting

# set current directory
set -l dir (dirname (status -f))

source $dir/env.fish
source $dir/alias.fish

