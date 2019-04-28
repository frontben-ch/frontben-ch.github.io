#!/bin/sh
message="$@"
if [ -n "$message" ]; then
  git add .
  git commit -am "$message"
  git push
fi
