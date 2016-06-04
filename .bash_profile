if [ -f ~/.bashrc ] ; then
. ~/.bashrc
fi

export CLICOLOR=1
export LSCOLORS=gxfxcxdxbxegedabagacad


# Add environment variable COCOS_CONSOLE_ROOT for cocos2d-x
export COCOS_CONSOLE_ROOT=/Users/jnst/cocos2d/cocos2d-x-3.2/tools/cocos2d-console/bin
export PATH=$COCOS_CONSOLE_ROOT:$PATH

# node.js
if [[ -f ~/.nodebrew/nodebrew ]]; then
  export PATH=$HOME/.nodebrew/current/bin:$PATH
  nodebrew use latest 
fi

# ruby
eval "$(rbenv init -)"

# php
source ~/.phpbrew/bashrc

# go-lang
export GOROOT=/usr/local/opt/go/libexec
export GOPATH=$HOME/go
export PATH=$GOPATH/bin:$GOROOT/bin:$PATH

# $PATH
export PATH=$HOME/bin:`brew --prefix`/bin:$GOPATH/bin:$PATH

# bash-completion
if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi

