#!/usr/bin/env bash

scripts/configure.sh
echo

# Install homebrew: https://brew.sh/
if ! command -v brew >/dev/null 2>&1; then
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
  eval "$(/opt/homebrew/bin/brew shellenv)"
fi
brew bundle
echo

# TODO. Install aws ssm plugin

scripts/initialize.sh
echo

echo "設定終わったよ！"
