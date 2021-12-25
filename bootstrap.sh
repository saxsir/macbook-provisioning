#!/usr/bin/env bash

scripts/configure.sh
echo

# Install homebrew: https://brew.sh/
if ! command -v brew >/dev/null 2>&1; then
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
  echo
fi
brew bundle
brew update
brew upgrade
echo

scripts/initialize.sh
echo

echo "設定終わったよ！"
