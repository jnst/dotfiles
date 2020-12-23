# ls color
set -gx LSCOLORS gxfxcxdxbxegedabagacad

# golang
set -gx GOBIN $HOME/go/bin
set -gx PATH $GOBIN $PATH
set -gx GHQ_ROOT $HOME/go

# goenv
set -gx GOENV_ROOT $HOME/.goenv
set -gx PATH $GOENV_ROOT/bin $PATH
eval (goenv init - | source)

alias history "history --show-time='%Y-%m-%d %T '"
alias ll "ls -AlhF"
alias k "kubectl"


# tabtab source for packages
# uninstall by removing these lines
[ -f ~/.config/tabtab/__tabtab.fish ]; and . ~/.config/tabtab/__tabtab.fish; or true
