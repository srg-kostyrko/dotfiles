#!/bin/sh
source bootstrap/functions.sh

sudo softwareupdate -iva
# Some tools look for XCode, even though they don't need it.
# https://github.com/joyent/node/issues/3681
# https://github.com/mxcl/homebrew/issues/10245
if [[ ! -d "$('xcode-select' -print-path 2>/dev/null)" ]]; 
then
    info 'Installing XCode'
    sudo xcode-select -switch /usr/bin
    ok
fi