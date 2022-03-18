#!/bin/sh

set -x

echo "Revealing the secrets in the repository..."

echo "$1" | gpg --no-tty --batch --import

if [ ! -z "$2" ]; then
  # Check this link to see why we use the @Q
  # https://unix.stackexchange.com/questions/379181/escape-a-variable-for-use-as-content-of-another-script

  printf "%s" "$2" | xargs git secret reveal -p
else
  git secret reveal
fi
