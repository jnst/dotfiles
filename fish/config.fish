# ls color
set -gx LSCOLORS gxfxcxdxbxegedabagacad

# golang
set -gx GOBIN $HOME/go/bin
set -gx PATH $GOBIN $PATH

alias history "history --show-time='%Y-%m-%d %T '"
alias ll "ls -AlhF"
