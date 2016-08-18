#!/usr/bin/env bash

DOTFILES=$(pwd -P)

set -e

echo ''

source bootstrap/functions.sh
source bootstrap/xcode.sh
source bootstrap/brew.sh
source bootstrap/applications.sh
dark-mode --mode Dark
source bootstrap/shell.sh
source bootstrap/os-settings.sh
source bootstrap/git.sh

brew cleanup

source ./install

echo ''
echo '  All installed!'