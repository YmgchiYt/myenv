#!/bin/bash

function install_vim() (
  brew update
  brew install lua
  brew install vim --with-lua
  brew install macvim
  brew link macvim
)

function fetch_color_schema() (
  DIR="/Users/me/.vim/bundle"
  echo "mkdir ${DIR}"
  mkdir -p ${DIR}
  (cd ${DIR}; git clone git://github.com/altercation/vim-colors-solarized.git)
)

function install_dein() (
  dir="/Users/me/.vim/bundles"
  echo "mkdir ${dir}"
  mkdir -p ${dir}
  curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh > installer.sh
  bash ./installer.sh ${dir}
  rm ./installer.sh
)

function install_youcompleteme() (
  ln -s /usr/local/bin/mvim vim
  brew install cmake
  brew install node
  dir="/Users/me/.vim/bundles"
  mkdir -p ${dir}
  (cd ${dir}; git clone https://github.com/Valloric/YouCompleteMe.git)
  (cd ${dir}/YouCompleteMe && git submodule update --init --recursive)
  (cd ${dir}/YouCompleteMe && ./install.py --clang-completer --go-completer 
)

install_vim
fetch_color_schema
install_dein
install_youcompleteme
