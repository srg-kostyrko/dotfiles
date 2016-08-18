source bootstrap/functions.sh

info 'Installing tooling for vim'
curl http://j.mp/spf13-vim3 -L -o - | sh

info "Installing Atom packages"
    apm install autocomplete-modules
    apm install autocomplete-paths
    apm install color-picker
    apm install editorconfig
    apm install file-icons
    apm install fonts
    apm install language-babel
    apm install linter
    apm install linter-eslint
    apm install merge-conflicts
    apm install pigments
    apm install emmet
    apm install git-blame
ok