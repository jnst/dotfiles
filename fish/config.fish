# ls color
set -gx LSCOLORS gxfxcxdxbxegedabagacad

# node.js
set -gx PATH $HOME/.nodebrew/current/bin $PATH

# golang
set -gx GOPATH $HOME/go
set -gx PATH $GOPATH/bin $PATH

alias history "history --show-time='%Y-%m-%d %T | '"
alias ll "ls -AlhF"
