#!/bin/bash

EXTENSIONS=(
  "carolynvs.dep"
  "joaoacdias.golang-tdd"
  "lextudio.restructuredtext"
  "mauve.terraform"
  "ms-vscode.Go"
  "PeterJausovec.vscode-docker"
  "vscodevim.vim"
)

for extension in "${EXTENSIONS[@]}"; do
    code --install-extension --force ${extension}
done