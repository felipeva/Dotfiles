# Android
export ANDROID_HOME=~/Library/Android/sdk
export PATH="$PATH:$ANDROID_HOME/platform-tools"
export PATH="$HOME/.bin:$PATH"

# Java
export PATH="/opt/homebrew/opt/openjdk@17/bin:$PATH"

# Homebrew
eval "$(/opt/homebrew/bin/brew shellenv)"

# JetBrains
export PATH="$PATH:/Users/felipeva/Library/Application Support/JetBrains/Toolbox/scripts"

# Mono2Micro
export PATH="$PATH://Users/felipeva/downloads/Mono2Micro-CLI"
# Claude Code
export ENABLE_BACKGROUND_TASKS=1
# fzf
source <(fzf --zsh)
