export PATH="$HOME/.rbenv/bin:$PATH"
export PATH="/usr/local/bin:/usr/local/sbin:$DOTFILES/bin:$PATH"
export PATH=$PATH:/usr/local/opt/go/libexec/bin
export MANPATH="/usr/local/man:/usr/local/git/man:$MANPATH"

export ANT_HOME=/usr/local/opt/ant
export MAVEN_HOME=/usr/local/opt/maven
export GRADLE_HOME=/usr/local/opt/gradle

export PATH=$HOME/.yarn/bin:$PATH
export PATH=$ANT_HOME/bin:$PATH
export PATH=$MAVEN_HOME/bin:$PATH
export PATH=$GRADLE_HOME/bin:$PATH
export PATH=$HOME/.cargo/bin:$PATH

export PATH=$(brew --prefix qt@5.5)/bin:$PATH

export EDITOR="code"