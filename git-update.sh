#!/bin/sh
if [ '-p' = "$1" ]; then
  shift 1
  push='y'
else
  push='n'
fi
message="$@"
if [ -n "$message" ]; then
  git add .
  git commit -am "$message"
  if [ $push = 'y' ]; then
    git push
  fi
fi
