if [ -f ~/.bashrc ] ; then
. ~/.bashrc
fi

# ls command color
export CLICOLOR=1
export LSCOLORS=gxfxcxdxbxegedabagacad

# ruby
eval "$(rbenv init -)"

# nodebrew
export PATH=$HOME/.nodebrew/current/bin:$PATH

# golang
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin

# bash-completion
if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi
