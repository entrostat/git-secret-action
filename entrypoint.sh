#!/bin/sh

cd /github/workspace
git config --global --add safe.directory /github/workspace
export GPG_TTY=$(tty)

echo "Revealing the secrets in the repository..."

echo "$1" | gpg --no-tty --batch --import

if [ ! -z "$2" ]; then
  echo "You have got a passphrase set for your key, revealing the secrets using this code..."
  escaped_pass=$(printf "%s" "$2")
  git secret reveal -p "${escaped_pass}"
else
  echo "No passphrase set, decrypting the files now!"
  git secret reveal
fi
