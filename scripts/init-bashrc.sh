#!/bin/bash

export ACCENT="\033[1;35m"
export RES="\033[0m"

bash -c "./alert.sh 'Making temp directory `pwd`/tmpinstloc'"
mkdir -p tmpinstloc

LINK="https://gist.githubusercontent.com/bfu4/eb73dfa41712c5e49f5f60502c8c7561/raw/c582222277cf64013e77c84d77b088241f10c33a/.bashrc"

bash -c "./info.sh 'install: $LINK'"

cd tmpinstloc
wget -q "$LINK"

bash -c "../info.sh 'copy: .bashrc to ~/.bashrc'"
sudo echo ./.bashrc >> ~/.bashrc

bash -c "../alert.sh 'remove: tmpinstloc'"
cd ..
sudo rm -rf tmpinstloc

