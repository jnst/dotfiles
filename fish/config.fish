# ls color
set -gx LSCOLORS gxfxcxdxbxegedabagacad

# HomeBrew
eval (/opt/homebrew/bin/brew shellenv)

# golang
set -gx GOBIN $HOME/go/bin
fish_add_path $GOBIN

# ghq
set -gx GHQ_ROOT $HOME/go

# goenv
set -gx GOENV_ROOT $HOME/.goenv
fish_add_path $GOENV_ROOT/bin
set -gx GOENV_DISABLE_GOROOT 1
set -gx GOENV_DISABLE_GOPATH 1
eval (goenv init - | source)

# JDK
set -g fish_user_paths "/usr/local/opt/openjdk/bin" $fish_user_paths

# google-cloud-sdk
source "/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/path.fish.inc"


alias history "history --show-time='%Y-%m-%d %T '"
alias ll "ls -AlhF"
alias k "kubectl"


# tabtab source for packages
# uninstall by removing these lines
[ -f ~/.config/tabtab/__tabtab.fish ]; and . ~/.config/tabtab/__tabtab.fish; or true
