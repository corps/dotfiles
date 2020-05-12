#! /usr/bin/env bash

set -e

if [ -e $HOME/$1 ]; then
  exit 0;
fi

cd $HOME
git clone $DROPBOX_HOME/git/$1.git
