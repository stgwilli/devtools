#!/usr/bin/env bash

if [ ! -x /usr/local/Cellar ]; then 
  echo "Installing Brew"
  ruby -e "$(/usr/bin/curl -fsSL https://raw.github.com/mxcl/homebrew/master/Library/Contributions/install_homebrew.rb)"
  resync_home.rb
  ruby configure_brew.rb
fi

