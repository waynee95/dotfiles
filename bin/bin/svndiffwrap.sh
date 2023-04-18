#!/bin/sh

if ! [ -x "$(command -v vimdiff)" ]; then
  nvim -d ${6} ${7}
else 
  vimdiff ${6} ${7}
fi
