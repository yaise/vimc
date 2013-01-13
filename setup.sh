#!/bin/bash

VIM_DIR="vim"
VIM_DIR_BUNDLE="$VIM_DIR/bundle"
VIM_DIR_AUTOLOAD="$VIM_DIR/autoload"
PERL_SUPPORT_VIM_PLUGIN="http://www.vim.org/scripts/download_script.php?src_id=18073"
PATHOGEN_LOCATION="https://raw.github.com/tpope/vim-pathogen/master/autoload"
PATHOGEN_FILE="pathogen.vim"

echo "[SETUP] Setting up the required directories..."
mkdir -p "$VIM_DIR_BUNDLE"
mkdir -p "$VIM_DIR_AUTOLOAD"

echo "[SETUP] Downloading latest version of Pathogen..."
curl -Sso "$PWD/$VIM_DIR_AUTOLOAD/$PATHOGEN_FILE" "$PATHOGEN_LOCATION/$PATHOGEN_FILE"


echo "[SETUP] Setting up vim for Perl..."
TEMP_PERL_ZIP=temp_perl_plugin.zip
curl -Sso "$PWD/$TEMP_PERL_ZIP" "$PERL_SUPPORT_VIM_PLUGIN"; 
unzip "$PWD/$TEMP_PERL_ZIP" -d "$PWD/$VIM_DIR/"
rm "$PWD/$TEMP_PERL_ZIP"

#Should be done right in the end
echo "[SETUP] Setting up soft links in your home directory"
ln -fs $PWD/vimrc $HOME/.vimrc
ln -fs $PWD/vim $HOME/.vim


