autoload -Uz compinit && compinit
source /opt/homebrew/share/zsh-autocomplete/zsh-autocomplete.plugin.zsh
source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh

eval "$(~/.local/bin/mise activate zsh)"
eval "$(starship init zsh)"

# ghq
function ghq-fzf() {
  local repo
  repo=$(ghq list | fzf) || return
  cd "$(ghq root)/$repo" || return
  zle reset-prompt 
}
zle -N ghq-fzf
bindkey '^G' ghq-fzf

# history
HISTSIZE=10000
SAVEHIST=10000
setopt extended_history
setopt hist_ignore_dups
setopt hist_ignore_space
setopt hist_reduce_blanks
setopt inc_append_history
setopt share_history

alias history="history -i"
alias ll="eza -AlF"

[ -f ~/.zshrc.local ] && source ~/.zshrc.local

