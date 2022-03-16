#!/bin/sh

echo "Revealing the secrets in the repository..."

echo "$1" | gpg --no-tty --batch --import

if [ ! -z "$2" ]; then
  pass_arg="-p \"${2@Q}\""
fi

git secret reveal $pass_arg
