#!/bin/bash

function install_go() (
  VERSION="1.11"
  OS="darwin"
  ARCH="amd64"
  SRC="go${VERSION}.${OS}-${ARCH}.tar.gz"
  URL="https://redirector.gvt1.com/edgedl/go/${SRC}"

  echo "fetch ${URL}"
  curl -fsSLO ${URL}
  sudo tar -C /usr/local -xzf "${SRC}"
  rm ${SRC}
)


function install_go_cmd() (
  go get -u github.com/motemen/ghq
  brew install dep
  brew upgrade dep
)

install_go
# install_go_cmd
