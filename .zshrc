# Load configurations
source ~/.zsh/functions/main.zsh
source ~/.zsh/aliases/main.zsh

# Warp integration
printf '\eP$f{"hook": "SourcedRcFileForWarp", "value": { "shell": "zsh"}}\x9c'

# Starship prompt
eval "$(starship init zsh)"

# Only load completions if not in Warp
if [[ $TERM_PROGRAM != "WarpTerminal" ]]; then
  fpath=(~/.zsh/plugins/zsh-completions/src $fpath)

  source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh
  source ~/.zsh/plugins/fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh
  source ~/.zsh/plugins/zsh-vi-mode/zsh-vi-mode.plugin.zsh
fi
