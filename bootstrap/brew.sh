#!/bin/sh
source bootstrap/functions.sh

if ! command -v brew >/dev/null; 
then
 info "Installing Homebrew ..."
   curl -fsS \
     'https://raw.githubusercontent.com/Homebrew/install/master/install' | ruby
   export PATH="/usr/local/bin:$PATH"
   ok
fi

[[ ! "$(command -v brew)" ]] && error "Homebrew failed to install." && return 1

if brew list | grep -Fq brew-cask; 
then
 info "Uninstalling old Homebrew-Cask ..."
 brew uninstall --force brew-cask
 ok
fi

info "Updating Homebrew"
brew update
brew upgrade
ok

info "Installing git with Homebrew ..."
brew install git
ok

info "Installing Homebrew-Cask ..."
brew tap caskroom/cask
ok

