#!/bin/bash

function install_devutils() (
  brew cask install slack
  brew cask install kindle
  sudo gem install travis
)
