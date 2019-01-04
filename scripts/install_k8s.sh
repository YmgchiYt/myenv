#!/bin/bash

KUBESEC_VERSION="0.9.2"

function install_kubesec() {
    curl -sSL https://github.com/shyiko/kubesec/releases/download/${KUBESEC_VERSION}/kubesec-${KUBESEC_VERSION}-darwin-amd64 -o kubesec \
    && chmod a+x kubesec \
    && sudo mv kubesec /usr/local/bin/
}

install_kubesec