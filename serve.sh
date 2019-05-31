#!/bin/sh
command=$(basename $0 .sh)
echo $script
env="$1"
shift 1
case "$env" in
  d*)
    JEKYLL_ENV=development jekyll $command "$@"
  ;;
  p*)
    JEKYLL_ENV=production jekyll $command "$@"
  ;;
  *)
    echo "usage: $(basename $0) development|production" && exit 1
  ;;
esac
