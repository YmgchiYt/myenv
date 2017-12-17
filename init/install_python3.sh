#!/bin/bash

function install_python3() (
  brew install python3
)

function install_sphinx() (
  pip3 install Sphinx
  pip3 install sphinx_rtd_theme
)

#install_python3
install_sphinx
