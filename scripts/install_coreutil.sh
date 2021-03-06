#!/bin/bash

function install_coreutils() (
  brew install coreutils
  brew install gnu-sed --with-default-names
  brew install gawk
  brew install jq
  brew install tree
)

install_coreutils
