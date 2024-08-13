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
  domain=iguana-smart-cowbird.ngrok-free.app

  if [[ $# -eq 0 ]]
    then
      currentFolder=${PWD##*/}
      ngrok http "${currentFolder}".test:443 --host-header=rewrite --domain=${domain}
      return
  fi

  if [[ $# -gt 1 ]]
    then
      ngrok http "$1" --host-header=rewrite --domain="$2"
    else
      ngrok http "$1" --host-header=rewrite --domain=${domain}
  fi
}

function sites() {
  cd "/Users/felipeva/herd/$1"
}

function codes() {
  cd "/Users/felipeva/codes/$1"
}

eval "$(pyenv init -)"
