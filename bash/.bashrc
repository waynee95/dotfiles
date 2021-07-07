# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Start zsh
if [ -f "/usr/bin/zsh" ]; then
  exec zsh
  # Exit from bash immediately if zsh exited successfully
  if [ $? -eq 0 ]; then
    exit
  fi
  echo 'Zsh exited with an error, dropping to bash shell'
fi
