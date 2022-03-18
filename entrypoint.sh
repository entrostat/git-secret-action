#!/bin/sh

set -x

echo "Revealing the secrets in the repository..."

echo "$1" | gpg --no-tty --batch --import

if [ ! -z "$2" ]; then
  escaped_pass=$(printf "%s" "$2")
  git secret reveal -p "${escaped_pass}"
else
  git secret reveal
fi
