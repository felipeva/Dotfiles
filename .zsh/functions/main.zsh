NGROK_DOMAIN=iguana-smart-cowbird.ngrok-free.app

# Ngrok share
function share() {
  if [[ $# -eq 0 ]]; then
    currentFolder=${PWD##*/}
    ngrok http "${currentFolder}".test:443 --host-header=rewrite --domain=${NGROK_DOMAIN}
    return
  fi

  if [[ $# -gt 1 ]]; then
    ngrok http "$1" --host-header=rewrite --domain="$2"
  else
    ngrok http "$1" --host-header=rewrite --domain=${NGROK_DOMAIN}
  fi
}

# Navigation shortcuts
function sites() {
  cd "/Users/$USER/herd/$1"
}

function codes() {
  cd "/Users/$USER/codes/$1"
}

# SSH connections
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
