#!/bin/bash
# release page
# https://github.com/golangci/golangci-lint/releases
VERSION="v1.12.5"

function install_golangcli() {
    curl -sfL https://install.goreleaser.com/github.com/golangci/golangci-lint.sh | sh -s -- -b $(go env GOPATH)/bin ${VERSION}

    # or install it into ./bin/
    # curl -sfL https://install.goreleaser.com/github.com/golangci/golangci-lint.sh | sh -s vX.Y.Z

    # In alpine linux (as it does not come with curl by default)
    # wget -O - -q https://install.goreleaser.com/github.com/golangci/golangci-lint.sh | sh -s vX.Y.Z
}


install_golangcli