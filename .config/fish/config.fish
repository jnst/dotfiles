if status is-interactive
  set -gx LSCOLORS gxfxcxdxbxegedabagacad
  alias history "history --show-time='%Y-%m-%d %T '"
  alias ll "ls -Alh"
  alias k "kubectl"
end

# HomeBrew
eval (/opt/homebrew/bin/brew shellenv)

# golang
set -gx GOBIN $HOME/go/bin
fish_add_path $GOBIN

# Added by Windsurf
fish_add_path /Users/jnst/.codeium/windsurf/bin

# Added by OrbStack: command-line tools and integration
# This won't be added again if you remove it.
source ~/.orbstack/shell/init2.fish 2>/dev/null || :

string match -q "$TERM_PROGRAM" "kiro" and . (kiro --locate-shell-integration-path fish)
