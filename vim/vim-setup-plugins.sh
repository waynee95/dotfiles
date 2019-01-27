#!/bin/bash
# inspired by https://github.com/noopkat/dotfiles/blob/master/bin/vim-setup.sh

BASE_DIR="$HOME/.vim"
PLUGIN_DIR="$BASE_DIR/bundle"
COLORS_DIR="$BASE_DIR/colors"
AUTOLOAD_DIR="$BASE_DIR/autoload"
PLUGINS=(
  "tpope/vim-pathogen"
  "sheerun/vim-polyglot"
  "editorconfig/editorconfig-vim"
  "mattn/emmet-vim"
  "Shougo/vimproc.vim"
  "Shougo/unite.vim"
)

mkdir -p $PLUGIN_DIR
mkdir -p $COLORS_DIR
mkdir -p $AUTOLOAD_DIR

wget https://raw.githubusercontent.com/Lokaltog/vim-monotone/master/colors/monotone.vim -O $COLORS_DIR/monotone.vim

for PLUGIN in ${PLUGINS[@]}; do
  DIRNAME="$(basename $PLUGIN)"
  if [ ! -d "$PLUGIN_DIR/$DIRNAME" ]; then
    echo "Installing ${PLUGIN}"
    git clone https://github.com/$PLUGIN.git $PLUGIN_DIR/$DIRNAME
  else
    echo "Updating ${PLUGIN}"
    cd "$PLUGIN_DIR/$DIRNAME"
    git pull
  fi
done

cp $PLUGIN_DIR/vim-pathogen/autoload/pathogen.vim $AUTOLOAD_DIR/pathogen.vim

echo "================================"
echo "finished installing vim plugins!"

