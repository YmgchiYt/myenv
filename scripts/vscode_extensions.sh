#!/bin/bash

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
    code --install-extension --force ${extension}
done