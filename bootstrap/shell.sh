source bootstrap/functions.sh

#sudo -s 'echo $(which zsh) >> /etc/shells' 

info 'Configuring zsh'
if [ ! -d ~/.oh-my-zsh ];
then
  curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh | sh
fi

if [ ! -d ~/.oh-my-zsh/custom/themes/powerlevel9k ]; 
then
  git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k
fi
if [ ! -d ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions ];
then
  git clone git://github.com/zsh-users/zsh-autosuggestions ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions
fi
if [ ! -d ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting ];
then
  git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting
fi  
if [ ! -d ~/.oh-my-zsh/custom/plugins/alias-tips ];
then
  git clone https://github.com/djui/alias-tips.git ~/.oh-my-zsh/custom/plugins/alias-tips
fi
if [ ! -d ~/.oh-my-zsh/custom/plugins/caniuse ];
then
  git clone https://github.com/walesmd/caniuse.plugin.zsh ~/.oh-my-zsh/custom/plugins/caniuse
fi
if [ ! -d ~/.oh-my-zsh/custom/plugins/git-aliases ];
then
  git clone https://github.com/peterhurford/git-aliases.zsh.git ~/.oh-my-zsh/custom/plugins/git-aliases
fi
npm install -g gulp.plugin.zsh

curl -L https://iterm2.com/misc/install_shell_integration_and_utilities.sh | bash

git clone git://github.com/powerline/fonts.git ~/fonts-delete && ~/fonts-delete/install.sh && rm -rf ~/fonts-delete
ok

if [ ! -d ~/.tmux/plugins/tpm ];
then
  info 'Installing Tmux plugin manager'
  git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
  ok
fi