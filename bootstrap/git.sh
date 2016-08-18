#!/bin/sh
source bootstrap/functions.sh

header 'Setup git workflow'

user ' - What is your github author name?'
read -e git_authorname
user ' - What is your github author email?'
read -e git_authoremail

if ! [ -f $DOTFILES/gitconfig.local ]
then
    info 'Setup gitconfig'

    git_credential='cache'
    if [ "$(uname -s)" == "Darwin" ]
    then
        git_credential='osxkeychain'
    fi

    sed -e "s/AUTHORNAME/$git_authorname/g" -e "s/AUTHOREMAIL/$git_authoremail/g" -e "s/GIT_CREDENTIAL_HELPER/$git_credential/g" $DOTFILES/gitconfig.local.example > $DOTFILES/gitconfig.local

    ok
fi

info "Setting up Github SSH key pairs."
ssh-keygen -t rsa -b 4096 -C $git_authoremail

info "Starting ssh-agent in the background."
eval "$(ssh-agent -s)"

info "Adding your SSH key to ssh-agent."
ssh-add ~/.ssh/id_rsa

info "Copying SSH key to your clipboard."
pbcopy < ~/.ssh/id_rsa.pub

info "Add key to github to finish setup."
echo "Press enter to open site."
read throwaway_input
open https://github.com/settings/keys