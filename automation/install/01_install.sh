#!/usr/bin/env bash
install_brew()
{
    if [ ! -x /usr/local/Cellar ]; then 
      echo "Installing Brew"
      ruby -e "$(/usr/bin/curl -fsSL https://raw.github.com/mxcl/homebrew/master/Library/Contributions/install_homebrew.rb)"
      resync_home.rb
      ruby configure_brew.rb
    fi
}

create_sym_links()
{
    create_sym_links.rb
}

install_brew
create_sym_links
rvm_install
