# ALIASES

alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
alias code='open -a "Visual Studio Code.app"'
alias aws='docker run --rm -v "$HOME/.aws:/root/.aws" -v "$PWD:/aws" amazon/aws-cli'
alias hledger='docker run --rm -it -v $(pwd):/finance -e LEDGER_FILE=/finance/current.journal hledger:latest'

alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."

# FUNCTIONS

# Make directory and cd in it
function mcd() { mkdir -p "$1" && cd "$1"; }

eval "$(/opt/homebrew/bin/brew shellenv)"
