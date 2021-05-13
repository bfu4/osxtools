#!/bin/bash

export ACCENT="\033[1;35m"
export RES="\033[0m"

bash -c "./alert.sh 'setting: themes'"
echo "syntax on" >> ~/.vimrc
echo "eco onedark" >> ~/.radare2rc
