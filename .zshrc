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


# Herd injected PHP 8.4 configuration.
export HERD_PHP_84_INI_SCAN_DIR="/Users/felipeva/Library/Application Support/Herd/config/php/84/"


# Herd injected PHP 8.3 configuration.
export HERD_PHP_83_INI_SCAN_DIR="/Users/felipeva/Library/Application Support/Herd/config/php/83/"


# Herd injected PHP 8.2 configuration.
export HERD_PHP_82_INI_SCAN_DIR="/Users/felipeva/Library/Application Support/Herd/config/php/82/"


# Herd injected PHP 8.1 configuration.
export HERD_PHP_81_INI_SCAN_DIR="/Users/felipeva/Library/Application Support/Herd/config/php/81/"

# pnpm
export PNPM_HOME="/Users/felipeva/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end

fpath+=~/.zfunc; autoload -Uz compinit; compinit

zstyle ':completion:*' menu select

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/felipeva/Downloads/google-cloud-sdk 2/path.zsh.inc' ]; then . '/Users/felipeva/Downloads/google-cloud-sdk 2/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/felipeva/Downloads/google-cloud-sdk 2/completion.zsh.inc' ]; then . '/Users/felipeva/Downloads/google-cloud-sdk 2/completion.zsh.inc'; fi

# Added by Windsurf
export PATH="/Users/felipeva/.codeium/windsurf/bin:$PATH"
