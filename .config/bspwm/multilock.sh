#!/bin/sh

IMG=/home/solopasha/wall/s2ebia66lfv51.png

if [[ "$(which multilockscreen)" != "multilockscreen not found" ]]; then
  if [[ ! -d $HOME/.cache/multilock ]]; then
    multilockscreen -u $IMG --blur 0.5
  fi

  multilockscreen $1 $2
fi
