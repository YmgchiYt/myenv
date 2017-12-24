#!/bin/bash

function install_python3() (
  brew install python3
)

function install_sphinx() (
  pip3 install Sphinx
  pip3 install sphinx_rtd_theme
)

function install_awscli() (
  pip3 install awscli
)

install_python3
install_sphinx
install_awscli
