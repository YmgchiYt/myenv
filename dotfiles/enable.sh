#!/bin/bash

CWD=$(cd $(dirname ${BASH_SOURCE[0]}); pwd -P)
FILES=(
  ".zshrc"
  ".vimrc"
  ".gvimrc"
  ".gitconfig"
  ".gitignore"
 )

for file in ${FILES[@]}; do
  ln -fs ${CWD}/${file} ~/${file}
done
