export HERD_PHP_83_INI_SCAN_DIR="/Users/felipeva/Library/Application Support/Herd/config/php/83/"

# Herd injected PHP binary.
export PATH="/Users/felipeva/Library/Application Support/Herd/bin/":$PATH


# Herd injected PHP 8.2 configuration.
export HERD_PHP_82_INI_SCAN_DIR="/Users/felipeva/Library/Application Support/Herd/config/php/82/"


# Herd injected PHP 8.1 configuration.
export HERD_PHP_81_INI_SCAN_DIR="/Users/felipeva/Library/Application Support/Herd/config/php/81/"

# Herd injected PHP 8.4 configuration.
export HERD_PHP_84_INI_SCAN_DIR="/Users/felipeva/Library/Application Support/Herd/config/php/84/"
# Deno
export DENO_INSTALL="/Users/felipeva/.deno"
export PATH="$DENO_INSTALL/bin:$PATH"

# Intialize starship prompt
eval "$(starship init zsh)"

# Activate syntax highlighting
# source $(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
# Disable underline
# (( ${+ZSH_HIGHLIGHT_STYLES} )) || typeset -A ZSH_HIGHLIGHT_STYLES
# ZSH_HIGHLIGHT_STYLES[path]=none
# ZSH_HIGHLIGHT_STYLES[path_prefix]=none

# Change colors
# export ZSH_HIGHLIGHT_STYLES[suffix-alias]=fg=blue
# export ZSH_HIGHLIGHT_STYLES[precommand]=fg=blue
# export ZSH_HIGHLIGHT_STYLES[arg0]=fg=blue

# Activate autosuggestions
# source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh

# For zsh subshells, add to ~/.zshrc.
printf '\eP$f{"hook": "SourcedRcFileForWarp", "value": { "shell": "zsh"}}\x9c'

. "$HOME/.cargo/env"

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/felipeva/Downloads/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/felipeva/Downloads/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/felipeva/Downloads/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/felipeva/Downloads/google-cloud-sdk/completion.zsh.inc'; fi

