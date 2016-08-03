
PATH="$HOME/.bin:$PATH"

export EDITOR="/usr/local/bin/emacs"
export PS1="\[$(tput setaf 6)\]\u\[$(tput setaf 5)\]@\[$(tput setaf 2)\]\h\[$(tput setaf 3)\]:\w$ \[$(tput sgr0)\]"

# ALIASES

alias s='open -a "Sublime Text"'
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."

alias serve="python -m SimpleHTTPServer"

# Trim newlines and copy
alias c="tr -d '\n' | pbcopy"

alias ip="dig +short myip.opendns.com @resolver1.opendns.com"
alias localip="ipconfig getifaddr en0"

# From https://fuller.li/posts/organising-dotfiles-in-a-git-repository/
alias home="git --work-tree=$HOME --git-dir=$HOME/.files.git"

# FUNCTIONS

# Make directory and cd in it
function mcd() { mkdir -p "$1" && cd "$1"; }

# Print syntax-hilighted JSON
function json() {
    if [ -t 0 ]; then # argument
        python -mjson.tool <<< "$*" | pygmentize -l javascript;
    else # pipe
        python -mjson.tool | pygmentize -l javascript;
    fi;
}

# Create a data URL from a file
function dataurl() {
    local mimeType=$(file -b --mime-type "$1")
    if [[ $mimeType == text/* ]]; then
        mimeType="${mimeType};charset=utf-8"
    fi
    printf "data:${mimeType};base64,$(openssl base64 -in "$1" | tr -d '\n')" | pbcopy | printf "=> data URI copied to pasteboard.\n"
}

# Open the given location, or current directory.
function o() {
    if [ $# -eq 0 ]; then
        open .;
    else
        open "$@";
    fi;
}
