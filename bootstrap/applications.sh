#!/bin/sh
source bootstrap/functions.sh

header 'Installing applications with brew'
brew tap caskroom/cask
brew tap caskroom/fonts
brew tap caskroom/versions
brew tap homebrew/bundle
brew tap homebrew/dupes

info 'Installing shells'
    brew install zsh
    brew install zsh-completions
    brew install bash
    brew install bash-completion
    brew cask install iterm2
ok

info 'Installing system tooling'
    brew install the_silver_searcher # Search tool like grep, but optimized for programmers
    brew install coreutils --with-gmp # GNU File, Shell, and Text utilities
    brew install moreutils # Install some other useful utilities like `sponge`
    brew install findutils --with-default-names # Install GNU `find`, `locate`, `updatedb`, and `xargs`, `g`-prefixed.
    brew install gnu-sed --with-default-names # Install GNU `sed`, overwriting the built-in `sed`.
    brew install p7zip # 7zip archiver
    brew install pigz # Parallel gzip
    brew install zopfli # New zlib (gzip, deflate) compatible compressor
    brew install unrar
    brew install tree # Display directories as trees (with optional color/HTML output)
    brew install openssl
    brew install grc # Colorize logfiles and command output
    brew install nmap
    brew install wget --with-iri
    brew install tmux
    brew install wemux
    gem install tmuxinator
    brew install reattach-to-user-namespace
    brew install fzf #fzf is a general-purpose command-line fuzzy finder.
    brew install dark-mode # Toggle the Dark Mode (in OS X 10.10) from the command-line
ok

info 'Installing programming langs/environments'
    brew install cask java
    brew install python
    brew install python3
    brew install node --with-debug
    brew install lua --with-completion
    brew install go
    brew install rust
    brew install erlang
    brew install leiningen
    brew install haskell-platform
ok

info 'Installing dev tooling'
    brew install ctags
    brew install git-extras
    brew install git-flow
    brew install hub
    brew cask install github-desktop
    brew install chrome-cli
    brew install redis
    brew install mongodb
    rew install elasticsearch
    brew cask install charles
    brew install wireshark --with-qt5
    brew linkapps wireshark
    brew install imagemagick --with-webp --with-ghostscript
    brew cask install atom
    brew cask install macvim --custom-icons --with-override-system-vim --with-lua --with-luajit
    brew cask install sublime-text
    brew cask install visual-studio-code
ok

info ' Install some CTF tools; see https://github.com/ctfs/write-ups.'
    brew install aircrack-ng
    brew install bfg
    brew install binutils
    brew install binwalk
    brew install cifer
    brew install dex2jar
    brew install dns2tcp
    brew install fcrackzip
    brew install foremost
    brew install hashpump
    brew install hydra
    brew install john
    brew install knock
    brew install netpbm
    brew install nmap
    brew install pngcheck
    brew install socat
    brew install sqlmap
    brew install tcpflow
    brew install tcpreplay
    brew install tcptrace
    brew install ucspi-tcp # `tcpserver` etc.
    brew install homebrew/x11/xpdf
    brew install xz
ok

info ' Install Heroku'
    brew install heroku-toolbelt
    heroku update
ok

info 'Installing browsers'
    brew cask install google-chrome
    brew cask install google-chrome-canary
    brew cask install firefox
ok

info 'Installign various usefull applications'
    brew cask install alfred
    brew cask install franz
    brew cask install dropbox
    brew cask install disk-inventory-x
    brew cask install karabiner
    brew cask install vlc
    brew cask install skype
    brew cask install seil
    brew cask install handbrake # video transcoder
    brew cask install tunnelbear # vpn
ok 


info 'Installing Quick Look plugins...'
    brew cask install betterzipql
    brew cask install qlcolorcode
    brew cask install qlmarkdown
    brew cask install qlprettypatch
    brew cask install qlstephen
    brew cask install quicklook-csv
    brew cask install quicklook-json
    brew cask install quicknfo
    brew cask install suspicious-package
    brew cask install webpquicklook
ok

info 'Instaling Color pickers...'
    brew cask install colorpicker-developer
    brew cask install colorpicker-skalacolor
ok 

info 'Installing font tools and fonts...'
    brew tap bramstein/webfonttools
    brew install fontconfig
    brew install freetype
    brew install sfnt2woff
    brew install sfnt2woff-zopfli
    brew install woff2
    brew cask install font-sauce-code-powerline
    brew cask install font-source-code-pro
    brew cask install font-source-sans-pro
    brew cask install font-source-serif-pro
ok

info 'Instaling global node packages'
# Global npm modules to install.
info "Updating npm"
npm update -g npm

npm install -g babel-cli bower grunt-cli grunt-init gulp-cli node-inspector yo babel-eslint commitizen eslint eslint-plugin-flowtype eslint-plugin-import eslint-plugin-jsx-a11y eslint-plugin-react
ok