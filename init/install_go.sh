#!/bin/bash 

VERSION="1.9.2"
OS="darwin"
ARCH="amd64"
SRC="go${VERSION}.${OS}-${ARCH}.tar.gz"
URL="https://redirector.gvt1.com/edgedl/go/${SRC}"

echo "fetch ${URL}"
curl -fsSLO ${URL}

sudo tar -C /usr/local -xzf "${SRC}"

# add your shell profile
# export PATH=${PATH}:/usr/local/go/bin

rm ${SRC}
