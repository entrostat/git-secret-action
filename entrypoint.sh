#!/bin/sh

echo "Revealing the secrets in the repository..."

echo "$1" > /root/gpg

gpg --import /root/gpg

git secret reveal
