#Local variables
NGROK_DOMAIN=iguana-smart-cowbird.ngrok-free.app

alias c="clear"
alias a="herd php artisan"
alias art="herd php artisan"
alias hor="art horizon"
alias yrd="yarn dev"
alias yrb="yarn build"
alias brd="bun dev"
alias brb="bun run build"
alias pnb="pnpm build"
alias pnd="pnpm dev"
alias pni="pnpm install"
alias hc="herd composer"
alias nrd="npm run dev"
alias nrb="npm run build"
alias ..="cd ../"
alias ...="cd ../../"
alias ....="cd ../../../"
alias .....="cd ../../../../"
alias finder='open -a 'Finder' .'
alias mgf="art migrate:fresh --seed"
alias mg="art migrate"
alias tst="art typescript:transform"
alias ziggy="art ziggy:generate && art ziggy:ts"
alias pint="./vendor/bin/pint"
alias pest="./vendor/bin/pest"
alias stan="./vendor/bin/phpstan"
alias gca="git commit --amend"
alias gc="git commit -m"
alias gpa="git push -f"
alias gp="git push"
alias gi="git init ."
alias gpl="git pull"
alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
alias g="git"
alias dtf="dotfiles"
alias wb="webstorm"

# nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm

# Added by Toolbox App
export PATH="$PATH:/Users/felipeva/Library/Application Support/JetBrains/Toolbox/scripts"

# Add Homebrew to PATH
eval "$(/opt/homebrew/bin/brew shellenv)"

# Android
export PATH=$PATH:~/Library/Android/sdk/platform-tools
export ANDROID_HOME=~/Library/Android/sdk
export PATH="$HOME/.bin:$PATH"
export PATH="~/Library/Android/sdk/platform-tools":$PATH
# export PATH="/opt/homebrew/opt/openjdk/bin:$PATH"
# export PATH="/opt/homebrew/opt/openjdk@11/bin:$PATH"
export PATH="/opt/homebrew/opt/openjdk@17/bin:$PATH"

# Pyenv
export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"

# ngrok share
function share()
{
  if [[ $# -eq 0 ]]
    then
      currentFolder=${PWD##*/}
      ngrok http "${currentFolder}".test:443 --host-header=rewrite --domain=${NGROK_DOMAIN}
      return
  fi

  if [[ $# -gt 1 ]]
    then
      ngrok http "$1" --host-header=rewrite --domain="$2"
    else
      ngrok http "$1" --host-header=rewrite --domain=${NGROK_DOMAIN}
  fi
}

function sites() {
  cd "/Users/$USER/herd/$1"
}

function codes() {
  cd "/Users/$USER/codes/$1"
}

# Connecto to SSH servers selector
function sshc() {
  if [ -z "$1" ]; then
    echo "Usage: sshc <server>"
    echo "Available servers:"
    echo "  prg"
    echo "  prg-staging"
    echo "  phoenix"
    echo "  phoenix-staging"
    return
  fi

  case $1 in
    "prg")
      ssh forge@34.237.70.161
      ;;
    "prg-staging")
      ssh forge@52.205.169.54
      ;;
    "phoenix")
      ssh forge@phoenix.ocmi.io
      ;;
    "phoenix-staging")
      ssh forge@phoenix-staging.ocmi.io
      ;;
  esac
}

eval "$(pyenv init -)"

# Added by OrbStack: command-line tools and integration
# Comment this line if you don't want it to be added again.
source ~/.orbstack/shell/init.zsh 2>/dev/null || :

