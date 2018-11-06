#!/bin/bash

function setup() {
  # https://github.com/VSCodeVim/Vim#mac-setup
  # keyを押し続けたときに連続入力として認識させるための設定
  defaults write com.microsoft.VSCode ApplePressAndHoldEnabled -bool false
  defaults write com.microsoft.VSCodeInsiders ApplePressAndHoldEnabled -bool false
}

EXTENSIONS=(
  "carolynvs.dep"
  "James-Yu.latex-workshop"
  "joaoacdias.golang-tdd"
  "lextudio.restructuredtext"
  "mauve.terraform"
  "ms-vscode.Go"
  "PeterJausovec.vscode-docker"
  "vscodevim.vim"
)

for extension in "${EXTENSIONS[@]}"; do
    echo "install ${extension}"
    code --install-extension ${extension}
done