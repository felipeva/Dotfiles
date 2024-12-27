# Python
export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

# Node
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

# PNPM
export PNPM_HOME="/Users/felipeva/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac

# Deno
export DENO_INSTALL="/Users/felipeva/.deno"
export PATH="$DENO_INSTALL/bin:$PATH"

# Rust
. "$HOME/.cargo/env"

# PHP (Herd)
export PATH="/Users/felipeva/Library/Application Support/Herd/bin/":$PATH
export HERD_PHP_82_INI_SCAN_DIR="/Users/felipeva/Library/Application Support/Herd/config/php/82/"
export HERD_PHP_81_INI_SCAN_DIR="/Users/felipeva/Library/Application Support/Herd/config/php/81/"
export HERD_PHP_83_INI_SCAN_DIR="/Users/felipeva/Library/Application Support/Herd/config/php/83/"
export HERD_PHP_84_INI_SCAN_DIR="/Users/felipeva/Library/Application Support/Herd/config/php/84/"

# OrbStack
source ~/.orbstack/shell/init.zsh 2>/dev/null || :
