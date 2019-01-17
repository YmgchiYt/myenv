#!/bin/bash

function install_pyenv (
  brew install pyenv
)

function install_anacodna() (
  # --verboseつけてinstall先を指定しないとだめかもしれない
  pyenv install anaconda3-5.2.0
)

function install_sphinx() (
  conda install sphinx
  conda install sphinx_rtd_theme
)

function install_awscli() (
  conda install awscli
)

install_pyenv
install_anaconda
install_sphinx
install_awscli