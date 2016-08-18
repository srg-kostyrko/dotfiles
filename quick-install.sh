#!/bin/sh

if [ ! -d "$HOME/.dotfiles" ]; then
    echo "Installing YADR for the first time"
    git clone --depth=1 https://github.com/srg-kostyrko/dotfiles "$HOME/.dotfiles"
    cd "$HOME/.dotfiles"
    ./bootstrap.sh
    ./install
else
    echo "Dotfiles are already installed"
fi
