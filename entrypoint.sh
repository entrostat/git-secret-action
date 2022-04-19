#!/bin/sh

cd /github/workspace
echo "The repository files are as follows:"
ls -lah

echo "Revealing the secrets in the repository..."

echo "$1" | gpg --no-tty --batch --import

if [ ! -z "$2" ]; then
  escaped_pass=$(printf "%s" "$2")
  cd /github/workspace
  git secret reveal -p "${escaped_pass}"
else
  cd /github/workspace
  git secret reveal
fi
