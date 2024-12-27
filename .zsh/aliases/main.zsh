# Navigation
alias c="clear"
alias ..="cd ../"
alias ...="cd ../../"
alias ....="cd ../../../"
alias .....="cd ../../../../"
alias finder='open -a "Finder" .'

# Package managers
alias yrd="yarn dev"
alias yrb="yarn build"
alias brd="bun dev"
alias brb="bun run build"
alias pnb="pnpm build"
alias pnd="pnpm dev"
alias pni="pnpm install"
alias nrd="npm run dev"
alias nrb="npm run build"

# Laravel
alias a="herd php artisan"
alias art="herd php artisan"
alias hor="art horizon"
alias hc="herd composer"
alias mgf="art migrate:fresh --seed"
alias mg="art migrate"
alias tst="art typescript:transform"
alias ziggy="art ziggy:generate && art ziggy:ts"
alias pint="./vendor/bin/pint"
alias pest="./vendor/bin/pest"
alias stan="./vendor/bin/phpstan"

# Git
alias gca="git commit --amend"
alias gc="git commit -m"
alias gpa="git push -f"
alias gp="git push"
alias gi="git init ."
alias gpl="git pull"
alias g="git"
alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
alias dtf="dotfiles"

# Copilot
alias copilot="gh copilot"
alias gcs="gh copilot suggest"
alias gce="gh copilot explain"


# Apps
alias wb="webstorm"
