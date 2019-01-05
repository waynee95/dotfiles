# if not running interactively, don't do anything
[[ $- != *i* ]] && return

# start fish shell
if [ -f "/usr/bin/fish" ]; then
  exec fish
  # exit from bash immediately if fish exited successfully
  if [ $? -eq 0 ]; then
    exit
  fi
  echo 'Fish exited with an error, dropping to bash shell'
fi
