#!/bin/bash

export ACCENT="\033[1;35m"
export RES="\033[0m"

bash -c "./alert.sh 'init: r2pm'"
r2pm init

bash -c "./alert.sh 'install: r2dec'"
r2pm -i r2dec
