#!/bin/bash

CWD=`pwd`

export ACCENT="\033[1;35m"
export RES="\033[0m"

_info="$CWD/scripts/info.sh $@"
_alert="$CWD/scripts/alert.sh $@"

check_brew() {
   local _brew=`which brew`
   if [[ -e $_brew ]]; then
     bash -c "$_info 'found brew: $_brew'"
   else
     bash -c "$_alert Could not find homebrew!"
     exit 1
   fi
}

bash -c "$_alert 'Checking for Homebrew..'"
check_brew

bash -c "$_alert 'Installing tools..'"
# brew bundle --file "$CWD"/Brewfile

source ~/.bashrc
