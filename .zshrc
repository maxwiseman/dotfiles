# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
eval "$(starship init zsh)"
eval "$(zoxide init --cmd cd zsh)"
# source /opt/homebrew/Cellar/antidote/1.9.9/share/antidote/antidote.zsh
source $(brew --prefix)/opt/antidote/share/antidote/antidote.zsh
zstyle ':antidote:bundle' use-friendly-names 'yes'
antidote load ${ZDOTDIR:-$HOME}/.zsh_plugins

alias notes="nvim '/Users/maxwiseman/Library/Mobile Documents/iCloud~md~obsidian/Documents/Note Vault'"
alias zconfig="nvim ~/.zshrc"
alias nvconfig="nvim ~/.config/nvim"
alias nixconfig="nvim ~/.nixconfig"
alias hyprconfig="nvim ~/.config/hypr/hyprland.conf"
alias cat="bat"
alias zplugins="nvim ~/.zsh_plugins"
alias starshipconfig="nvim ~/.config/starship.toml"
alias python="python3"
alias ls='ls --color=auto'
# source ~/.iterm2_shell_integration.zsh

# [[ "$TERM_PROGRAM" == "CodeEditApp_Terminal" ]] && . "/Applications/CodeEdit.app/Contents/Resources/codeedit_shell_integration.zsh"

# bun completions
[ -s "/Users/maxwiseman/.bun/_bun" ] && source "/Users/maxwiseman/.bun/_bun"

# pnpm
export PNPM_HOME="/Users/maxwiseman/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end
#
#

git() {
  if [ "$1" = "oops" ]; then
    shift
    command git add . && git commit --amend --no-edit && git push origin -f
  else
    command git "$@"
  fi
}

export PATH="/Users/maxwiseman/.bun/bin:$PATH"
