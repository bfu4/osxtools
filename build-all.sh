#!/bin/bash

CWD=`pwd`
ACCENT="\033[1;35m"
RES="\033[0m"

info() {
   printf "::\t $@ \n\n"
}

alert() {
   printf "${ACCENT}[!]${RES} $@\n" 
}

check_brew() {
   local _brew=`which brew`
   if [[ -e $_brew ]]; then
     info "found brew: $_brew"
   else
     alert "Could not find homebrew!"
     exit 1
   fi
}

alert "Checking for Homebrew.."
check_brew

alert "Installing tools.."
brew bundle --file "$CWD"/Brewfile
