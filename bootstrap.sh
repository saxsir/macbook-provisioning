#!/usr/bin/env bash

scripts/configure.sh
echo

# Install homebrew: https://brew.sh/
if ! command -v brew >/dev/null 2>&1; then
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
  echo
fi
brew bundle
echo

scripts/initialize.sh
echo

echo "設定終わったよ！"
